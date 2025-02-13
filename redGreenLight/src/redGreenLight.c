#if defined(D_NEXYS_A7)
   #include <bsp_printf.h>
   #include <bsp_mem_map.h>
   #include <bsp_version.h>
#else
   PRE_COMPILED_MSG("no platform was defined")
#endif
#include <psp_api.h>
#include <i2c.h>
#include <ADT7420.h>
#include <bsp_printf.h>
#include <bsp_mem_map.h>
#include <bsp_version.h>
#include "psp_api.h"
#include "bsp_external_interrupts.h"
#include "psp_ext_interrupts_eh1.h"
#include "bsp_timer.h"
#include "bsp_printf.h"

#define IO_LEDR     0x80100000
#define IO_SWs		0x80100008
#define IO_INOUT    0x8010000C

#define PWM_RED    0x80120000
#define PWM_GREEN  0x80140000
#define PWM_BLUE   0x80150000

#define SegEn_ADDR      0x80001038
#define SegDig_ADDR     0x8000103C

#define SPI_BASE        0x80001100
#define SPI_ENABLE      0x80001120
#define SPI_DATA        0x80001110

#define GPIO_LEDs       0x80100000
#define GPIO1_INOUT     0x80100004
#define GPIO_SWs		0x80100008
#define GPIO2_INOUT     0x8010000C
#define GPIO_GIER       0x8010011C
#define GPIO_IER        0x80100128
#define GPIO_ISR        0x80100120

#define RPTC_CNTR       0x80001200
#define RPTC_HRC        0x80001204
#define RPTC_LRC        0x80001208
#define RPTC_CTRL       0x8000120c
#define PWM_BASE        0x80120000
#define Select_INT      0x80001018

#define READ_IO(dir) (*(volatile unsigned *)dir)
#define WRITE_IO(dir, value) { (*(volatile unsigned *)dir) = (value); }

#define M_UART_RD_REG_LSR()  (*((volatile unsigned int*)(D_UART_BASE_ADDRESS + (4*0x05) ))) 
#define D_UART_LSR_RBRE_BIT  (0x01)
#define READ_GPIO(dir) (*(volatile unsigned *)dir)
#define WRITE_GPIO(dir, value) { (*(volatile unsigned *)dir) = (value); }
#define DELAY 10000000
#define LIGHT 100000
#define M_UART_RD_REG_LSR()  (*((volatile unsigned int*)(D_UART_BASE_ADDRESS + (4*0x05) ))) 
#define D_UART_LSR_RBRE_BIT  (0x01)
extern D_PSP_DATA_SECTION D_PSP_ALIGNED(1024) pspInterruptHandler_t G_Ext_Interrupt_Handlers[8];
extern char UartGetchar();
int order;
int RlightLen = 15, GlightLen = 12, YlightLen = 3;
void GPIO_ISRoutin(void)
{
    unsigned int i;

  /* Write the LED */
    i = M_PSP_READ_REGISTER_32(GPIO_SWs);
    i = !i;                                            /* Invert the LEDs */
    i = i & 0x1;                                       /* Keep only the right-most LED */
    M_PSP_WRITE_REGISTER_32(GPIO_LEDs, i);

  /* Clear GPIO interrupt */
    M_PSP_WRITE_REGISTER_32(GPIO_ISR, 0x2);

  /* Stop the generation of the specific external interrupt */
    printSystemMenu();
    order = UartGetchar();
    printSystemMenu();
  /* Stop the generation of the specific external interrupt */
  bspClearExtInterrupt(4);
}


char uart_inbyte(void) 
{
	unsigned int RecievedByte;

    /* Check for space in UART FIFO */
  while((M_UART_RD_REG_LSR() & D_UART_LSR_RBRE_BIT) == 0);
	
	RecievedByte = M_PSP_READ_REGISTER_32(D_UART_BASE_ADDRESS);

	return (char)RecievedByte;
}



void PTC_ISR(void){
}


void DefaultInitialization(void)
{
  u32_t uiSourceId;

  /* Register interrupt vector */
  pspInterruptsSetVectorTableAddress(&M_PSP_VECT_TABLE);

  /* Set external-interrupts vector-table address in MEIVT CSR */
  pspExternalInterruptSetVectorTableAddress(G_Ext_Interrupt_Handlers);

  /* Put the Generation-Register in its initial state (no external interrupts are generated) */
  bspInitializeGenerationRegister(D_PSP_EXT_INT_ACTIVE_HIGH);

  for (uiSourceId = D_BSP_FIRST_IRQ_NUM; uiSourceId <= D_BSP_LAST_IRQ_NUM; uiSourceId++)
  {
    /* Make sure the external-interrupt triggers are cleared */
    bspClearExtInterrupt(uiSourceId);
  }

  /* Set Standard priority order */
  pspExtInterruptSetPriorityOrder(D_PSP_EXT_INT_STANDARD_PRIORITY);

  /* Set interrupts threshold to minimal (== all interrupts should be served) */
  pspExtInterruptsSetThreshold(M_PSP_EXT_INT_THRESHOLD_UNMASK_ALL_VALUE);

  /* Set the nesting priority threshold to minimal (== all interrupts should be served) */
  pspExtInterruptsSetNestingPriorityThreshold(M_PSP_EXT_INT_THRESHOLD_UNMASK_ALL_VALUE);
}


void ExternalIntLine_Initialization(u32_t uiSourceId, u32_t priority, pspInterruptHandler_t pTestIsr)
{
  /* Set Gateway Interrupt type (Level) */
  pspExtInterruptSetType(uiSourceId, D_PSP_EXT_INT_LEVEL_TRIG_TYPE);

  /* Set gateway Polarity (Active high) */
  pspExtInterruptSetPolarity(uiSourceId, D_PSP_EXT_INT_ACTIVE_HIGH);

  /* Clear the gateway */
  pspExtInterruptClearPendingInt(uiSourceId);

  /* Set IRQ4 priority */
  pspExtInterruptSetPriority(uiSourceId, priority);
    
  /* Enable IRQ4 interrupts in the PIC */
  pspExternalInterruptEnableNumber(uiSourceId);

  /* Register ISR */
  G_Ext_Interrupt_Handlers[uiSourceId] = pTestIsr;
}


void GPIO_Initialization(void)
{
  /* Configure LEDs and Switches */
  M_PSP_WRITE_REGISTER_32(GPIO1_INOUT, 0x0);
  M_PSP_WRITE_REGISTER_32(GPIO2_INOUT, 0xFFFF);       /* GPIO_INOUT */
  M_PSP_WRITE_REGISTER_32(GPIO_LEDs, 0xF);            /* GPIO_LEDs */

  /* Configure GPIO interrupts */
  M_PSP_WRITE_REGISTER_32(GPIO_IER, 0x2);             /* Enable Channel 2 input interrupt  */
  M_PSP_WRITE_REGISTER_32(GPIO_GIER, 0x80000000);     /* Enable interrupt */
}


void PTC_Initialization(void)
{
  /* Configure PTC with interrupts */
  M_PSP_WRITE_REGISTER_32(RPTC_LRC, 0x2FFFFFF);
  M_PSP_WRITE_REGISTER_32(RPTC_CNTR, 0x0);
  M_PSP_WRITE_REGISTER_32(RPTC_CTRL, 0x40);
  M_PSP_WRITE_REGISTER_32(RPTC_CTRL, 0x31);
}




void delay(int num)
{
    volatile int i;
    for(i=0; i<num; i++);
}

void printSystemMenu(){	
	printfNexys("-----------------------------------------");
	printfNexys(" Options:");
	printfNexys("	[a] Traffic light system during daytime");
	printfNexys("	[b] Traffic light system after 10pm");
    printfNexys("	[c] Traffic control");
    printfNexys("	[d] modify time length");
	printfNexys("	[q] Exit the application");
	printfNexys("-----------------------------------------");
}

// void SPI_INIT() {
//     WRITE_IO(SPI_BASE, 0x3);
//     delay(DELAY);

//     WRITE_IO(SPI_BASE, 0x43);
//     delay(DELAY);
// }

// void SPI_WRITE(unsigned data) {    
//     WRITE_IO(SPI_DATA, data);
//     delay(DELAY);
// }

// unsigned SPI_READ() {
//     unsigned data;
    
//     data = READ_IO(SPI_DATA);
//     delay(DELAY);
    
//     return data;
// }

// void ADXL362_WRITE(unsigned int addr, unsigned int data) {
//     //鍚敤spi閫氫俊
// 	WRITE_IO(SPI_ENABLE, 1);
//     delay(DELAY);
// 	//琛ㄧず瑕佸啓鍏ユ暟鎹?
//     SPI_WRITE(0xA);
//     delay(DELAY);
//     //瀵勫瓨鍣ㄥ湴鍧€
//     SPI_WRITE(addr);
//     delay(DELAY);
//     //鍐欏叆鏁版嵁
//     SPI_WRITE(data);
//     delay(DELAY);
// 	//绂佹spi閫氫俊
//     WRITE_IO(SPI_ENABLE, 0);
//     delay(DELAY);
// }

// void ADXL362_READ(unsigned int addr, unsigned int* data) {
//     //鍚敤spi閫氫俊
// 	WRITE_IO(SPI_ENABLE, 1);
//     delay(DELAY);
// 	//琛ㄧず瑕佽鍙栨暟鎹?
//     SPI_WRITE(0xB);
//     delay(DELAY);
// 	//瀵勫瓨鍣ㄥ湴鍧€
//     SPI_WRITE(addr);
//     delay(DELAY);
//     //璇锋眰鏁版嵁
//     SPI_WRITE(0x0);
//     delay(DELAY);
//     //璇诲彇鏁版嵁
//     *data = SPI_READ();
//     delay(DELAY);
// 	//澶氭璇诲彇
//     *data = SPI_READ();
//     delay(DELAY);
// 	//澶氭璇诲彇
//     *data = SPI_READ();
//     delay(DELAY);
// 	//绂佹spi閫氫俊
//     WRITE_IO(SPI_ENABLE, 0);
//     delay(DELAY);
// }

// void ADXL362_INIT() {
//     ADXL362_WRITE(0x20, 0xFA);
//     ADXL362_WRITE(0x21, 0);
//     ADXL362_WRITE(0x23, 0x96);
//     ADXL362_WRITE(0x24, 0);
//     ADXL362_WRITE(0x25, 0x1E);
//     ADXL362_WRITE(0x27, 0x3F);
//     ADXL362_WRITE(0x2B, 0x40);
//     ADXL362_WRITE(0x2D, 0xA);
// }



void turnblank(void){
    WRITE_IO(PWM_RED, 0);
    WRITE_IO(PWM_GREEN, 0);
    WRITE_IO(PWM_BLUE, 0);
}

void turnyellow(void) {
    WRITE_IO(PWM_RED, LIGHT);
    WRITE_IO(PWM_GREEN, LIGHT);
    WRITE_IO(PWM_BLUE, 0);
}

void turnred(void) {
    WRITE_IO(PWM_RED, LIGHT);
    WRITE_IO(PWM_GREEN, 0);
    WRITE_IO(PWM_BLUE, 0);
}

void turngreen(void) {
    WRITE_IO(PWM_RED, 0);
    WRITE_IO(PWM_GREEN, LIGHT);
    WRITE_IO(PWM_BLUE, 0);
}
void displayCountdown(unsigned int t){
    unsigned int n = t;
    unsigned int h1 = n / 1000;
    n = n % 1000;
    unsigned int h2 = n / 100;
    n = n % 100;
    unsigned int h3 = n / 10;
    n = n % 10;
    unsigned int h4 = n;
    WRITE_IO(SegDig_ADDR, h1 * 4096 + h2 * 256 + h3 * 16 + h4);
}
void dayTime(){
    turngreen();
    for(int i = GlightLen; i > 0 && order == 'a'; i--){
        displayCountdown(i);
        delay(2 * DELAY);     
    }
    turnyellow();
    for(int i = YlightLen; i > 0 && order == 'a'; i--){
        displayCountdown(i);
        delay(2 * DELAY);
    }
    turnred();
    for(int i = RlightLen; i > 0 && order == 'a'; i--){
        displayCountdown(i);
        delay(2 * DELAY);
    }

    delay(DELAY);
}
void atNight(){
    displayCountdown(0);
    while(order == 'b'){
        turnblank();
        delay(DELAY);
        turnyellow();
        delay(DELAY);
    }
    
}
void trafficControl(){
    while(order == 'c'){
        displayCountdown(1000);
        turnred();
        delay(DELAY);
        displayCountdown(100);
        turnred();
        delay(DELAY);
        displayCountdown(10);
        turnred();
        delay(DELAY);
        displayCountdown(1);
        turnred();
        delay(DELAY);
    }
}

void modifyTimeLength(){
    printfNexys("-----------------------------------------");
	printfNexys(" Options:");
	printfNexys("	[r] red light");
	printfNexys("	[g] green light");
    printfNexys("	[y] yellow light");
	printfNexys("-----------------------------------------");
    int choice1 = UartGetchar();
    while(choice1 != 'r' && choice1 != 'g' && choice1 != 'y'){
        printfNexys("invalid input");
        printfNexys("-----------------------------------------");
	    printfNexys(" Options:");
	    printfNexys("	[r] red light");
	    printfNexys("	[g] green light");
        printfNexys("	[y] yellow light");
	    printfNexys("-----------------------------------------");
        choice1 = UartGetchar();
    }
    printfNexys("-----------------------------------------");
	printfNexys(" Options:");
	printfNexys("	[a] +");
	printfNexys("	[s] -");
	printfNexys("-----------------------------------------");
    int choice2 = UartGetchar();
    while(choice2 != 'a' && choice2 != 's'){
        printfNexys("invalid input");
        printfNexys("-----------------------------------------");
	    printfNexys(" Options:");
	    printfNexys("	[a] +");
	    printfNexys("	[s] -");
	    printfNexys("-----------------------------------------");
        choice2 = UartGetchar();
    }

    printfNexys("-----------------------------------------");
	printfNexys(" how much you want to change[input 0 ~ 9]:");
	printfNexys("-----------------------------------------");
    int choice3 = UartGetchar();
    while(choice3 < '0' || choice3 > '9'){
        printfNexys("invalid input");
        printfNexys("-----------------------------------------");
	    printfNexys(" how much you want to change[input 0 ~ 9]:");
	    printfNexys("-----------------------------------------");
        choice3 = UartGetchar();
    }
    int f = 1;
    if(choice2 == 's'){
        f = -1;
    }
    if(choice1 == 'r'){
        if(RlightLen + f * (choice3 - '0') <= 0){
            printfNexys("failed : time length must be positive");
        }
        else {
            RlightLen += f * (choice3 - '0');
        }
    }
    else if(choice1 == 'g'){
        if(GlightLen + f * (choice3 - '0') <= 0){
            printfNexys("failed : time length must be positive");
        }
        else {
            GlightLen += f * (choice3 - '0');
        }
    }
    else if(choice1 == 'y'){
        if(YlightLen + f * (choice3 - '0') <= 0){
            printfNexys("failed : time length must be positive");
        }
        else {
            YlightLen += f * (choice3 - '0');
        }
    }
}
int main() {
    //int count=0xF;
    // int i=0;
    //unsigned int value = 0;
    // unsigned int periodRed = 0;
    // unsigned int periodGreen = 0;
    // unsigned int periodBlue = 0;
    DefaultInitialization();                            /* Default initialization */
	pspExtInterruptsSetThreshold(5);                    /* Set interrupts threshold to 5 */
	
	/* INITIALIZE INTERRUPT LINES IRQ3 AND IRQ4 */
	ExternalIntLine_Initialization(4, 6, GPIO_ISRoutin);/* Initialize line IRQ4 with a priority of 6. Set GPIO_ISR as the Interrupt Service Routine */
	//ExternalIntLine_Initialization(3, 6, PTC_ISR);      /* Initialize line IRQ3 with a priority of 6. Set PTC_ISR as the Interrupt Service Routine */
	M_PSP_WRITE_REGISTER_32(Select_INT, 0x3);           /* Connect the GPIO interrupt to the IRQ4 interrupt line and the PTC interrupt to the IRQ3 line*/
	
	/* INITIALIZE THE PERIPHERALS */
	GPIO_Initialization();                              /* Initialize the GPIO */
	PTC_Initialization();                               /* Initialize the Timer */
	M_PSP_WRITE_REGISTER_32(SegEn_ADDR, 0x0);           /* Initialize the 7-Seg Displays */
	
	/* ENABLE INTERRUPTS */
	pspInterruptsEnable();                              /* Enable all interrupts in mstatus CSR */
	M_PSP_SET_CSR(D_PSP_MIE_NUM, D_PSP_MIE_MEIE_MASK);  /* Enable external interrupts in mie CSR */
    WRITE_IO(SegEn_ADDR, 0x0);
    uartInit();
    printSystemMenu();
    order = UartGetchar();
    printSystemMenu();
    while(order != 'q'){
        
        // periodRed = (1) * 100000;
        // periodGreen = (1) * 100000;
        // periodBlue = (1) * 100000;
        /* Since the LED width is 1e6 clk cycles, we need to normalize
         * the period to that clk.  Since we accept values 0-9, that will
         * scale period from 0-999,000.  0 turns off LEDs, 999,000 is full brightness. */

        /* Write the duty_cycle width (Period) out to the PL PWM peripheral. */
        if(order != 'a' && order != 'b' && order != 'c' && order != 'd' && order != 'q'){
            printfNexys("invalid input");
            printSystemMenu();
            order = UartGetchar();
            printSystemMenu();
            continue;
        }
        while(order == 'a'){
            dayTime();
        }

        while(order == 'b'){
            atNight();
        }
        while(order == 'c'){
            trafficControl();
        }
        if(order == 'd'){
            modifyTimeLength();
            printSystemMenu();
            order = UartGetchar();
            printSystemMenu();
        }
		// End of PWM IP test
   }

    return 0;
}