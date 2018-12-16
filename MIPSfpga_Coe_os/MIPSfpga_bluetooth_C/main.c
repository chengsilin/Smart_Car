/*
 * main.c for microAptiv_UP MIPS core running on Nexys4DDR
 * Prints \n\rMIPSfpga\n\r out via UART.
 * Default baudrate 115200,8n1.
 * Also display a shifting 0xf on the LEDs
 */

#include "fpga.h"

#define inline_assembly()  asm("ori $0, $0, 0x1234")

#define CLK_FREQ 50000000

#define UART_BASE 0xB0401000	//With 1000 offset that axi_uart16550 has
#define BT_UART_BASE 0xB0001000	//With 1000 offset that axi_uart16550 has
#define rbr		0*4
#define ier		1*4
#define fcr		2*4
#define lcr		3*4
#define mcr		4*4
#define lsr		5*4
#define msr		6*4
#define scr		7*4

#define thr		rbr
#define iir		fcr
#define dll		rbr
#define dlm		ier

#define PWM_BASE 0xB0C00000

void delay();
void uart_outbyte(char c);
char uart_inbyte(void);
void uart_print(const char *ptr);

void init_bluetooth(void);
void BT_uart_outbyte(char c);
char BT_uart_inbyte(void);
void BT_uart_print(const char *ptr);

//------------------
// main()
//------------------
int main() {
	volatile unsigned int pushbutton, count = 0xF;
	volatile unsigned int j = 1;

	*WRITE_IO(UART_BASE + lcr) = 0x00000080; // LCR[7]  is 1
	delay();
	*WRITE_IO(UART_BASE + dll) = 27; // DLL msb. 115200 at 50MHz. Formula is Clk/16/baudrate. From axi_uart manual.
	delay();
	*WRITE_IO(UART_BASE + dlm) = 0x00000000; // DLL lsb.
	delay();
	*WRITE_IO(UART_BASE + lcr) = 0x00000003; // LCR register. 8n1 parity disabled
	delay();
	*WRITE_IO(UART_BASE + ier) = 0x00000000; // IER register. disable interrupts
	delay();
	
	init_bluetooth();
	//*WRITE_IO(UART_BASE + ier) = 0x00000001; // IER register. Enables Receiver Line Status and Received Data Interrupts
	//delay();
	
	/* Prompt the user to select a brightness value ranging from  0 to 9. */

	
	//BT_uart_print("start");
	uart_print("hello\n");
	while(1) {
		// LEDs display
		uart_print("Select a Brightness between 0 and 9\n\r");
		delay();
		char ch = BT_uart_inbyte();
		delay();
		uart_print(&ch);
		delay();
		
		// if(ch =='w'){
			// count = 0x1; // Display 0xFFFF on LEDs to indicate receive datafromuart 
			// delay();
		// }
		// else if(ch=='s'){
			// count = 0x2; // Display 0xFFFF on LEDs to indicate receive datafromuart 
			// delay(); 
		// }
		// else if(ch=='q'){ 
			// count = 0x3; // Display 0xFFFF on LEDs to indicate receive datafromuart 
			// delay();
		// }
		// else if(ch=='e'){ 
			// count = 0x4; // Display 0xFFFF on LEDs to indicate receive datafromuart 
			// delay();
		// }
		// else if(ch=='d'){ 
			// count = 0x5; // Display0xFFFF on LEDs toindicatereceive datafromuart 
			// delay(); 
		// }
		// else if(ch=='a'){
			// count = 0x6; // Display0xFFFF on LEDs toindicatereceive datafromuart 
			// delay();
		// }
		// else if(ch=='8'){ 
			// count = 0x7; // Display0xFFFF on LEDs toindicatereceive datafromuart 
			// delay();
		// }
		// else if(ch=='h'){
			// count = 0x8; // Display0xFFFF on LEDs toindicatereceive datafromuart 
			// delay();
		// }
		// else{
			// count = 0x9; // Display0xFFFF on LEDs toindicatereceive datafromuart 
			// delay();
		// }

		*WRITE_IO(IO_LEDR) = count;

		if (j == 1) {
		    count = count << 1;
		    if (count == 0xf000)
		        j = 0;
		} else {
				count = count >> 1;
		    if (count == 0x000f)
		        j = 1;
		}

		// inline_assembly();	  	
		// End of LEDs display
		
		*WRITE_IO(UART_BASE + ier) = 0x00000001; // IER register. Enables Receiver Line Status and Received Data Interrupts

		*WRITE_IO(BT_UART_BASE + ier) = 0x00000001; // IER register. Enables Receiver Line Status and Received Data Interrupts

        delay( );
	}
	
	return 0;
}

void delay() {
	volatile unsigned int j;

	for (j = 0; j < (10000); j++) ;	// delay 
}

void uart_outbyte(char c) {
	*WRITE_IO(UART_BASE + thr) = (unsigned int) c;
	delay( );
}

char uart_inbyte(void) {
	unsigned int RecievedByte;
	
	while(!((*READ_IO(UART_BASE + lsr) & 0x00000001)==0x00000001));

	RecievedByte = *READ_IO(UART_BASE + rbr);

	return (char)RecievedByte;
}

void uart_print(const char *ptr)
{
	while (*ptr) {
		uart_outbyte (*ptr);
		ptr++;
	}
}

void init_bluetooth(void){
	*WRITE_IO(BT_UART_BASE + lcr)=0x00000080;//LCR[7] is1 
	delay(); 
	*WRITE_IO(BT_UART_BASE + dll) = 69;// DLL msb. 115200 at 50MHz. Formula is Clk/16/baudrate.Fromaxi_uartmanual. 
	delay(); 
	*WRITE_IO(BT_UART_BASE + dlm)=0x00000001;//DLLlsb. 
	delay(); 
	*WRITE_IO(BT_UART_BASE + lcr) = 0x00000003; // LCR register. 8n1 parity disabled 
	delay(); 
	*WRITE_IO(BT_UART_BASE + ier) = 0x00000001; // IER register. disable interrupts 
	delay();
}

void BT_uart_outbyte(char c){
	*WRITE_IO(BT_UART_BASE + thr) = (unsigned int) c;
	delay( );
}

char BT_uart_inbyte(void){

	unsigned int RecievedByte;
	
	while(!((*READ_IO(BT_UART_BASE + lsr) & 0x00000001)==0x00000001));

	RecievedByte = *READ_IO(BT_UART_BASE + rbr);

	return (char)RecievedByte;
}

void BT_uart_print(const char *ptr)
{
	while (*ptr){
		BT_uart_outbyte (*ptr);
		ptr++;
	}
}

void _mips_handle_irq(void *ctx, int reason){
	unsigned int value = 0;
	unsigned int period = 0;
	// *WRITE_IO(BT_UART_BASE + ier) = 0x00000000; //IERregister.disableinterrupts

	*WRITE_IO(IO_LEDR) = 0xF00F; // Display 0xFFFF on LEDs to indicate receive datafromuart

	delay();
	

	char ch = "w";// = BT_uart_inbyte();
	int round;

	if(ch=='w'){
		round=0;
		*WRITE_IO(IO_LEDR) = 0x1; // Display 0xFFFF on LEDs to indicate receive datafromuart 
		
		delay();
	}
	else if(ch=='s'){
		round=0; 
		*WRITE_IO(IO_LEDR) = 0x2; // Display 0xFFFF on LEDs to indicate receive datafromuart 
		delay(); 
	}
	else if(ch=='q'){ 
		*WRITE_IO(IO_LEDR) = 0x4; // Display 0xFFFF on LEDs to indicate receive datafromuart 
		delay();
	}
	else if(ch=='e'){ 
		*WRITE_IO(IO_LEDR) = 0x8; // Display 0xFFFF on LEDs to indicate receive datafromuart 
		delay();
	}
	else if(ch=='d'){ 
		round=0; 
		*WRITE_IO(IO_LEDR)= 0x10; // Display0xFFFF on LEDs toindicatereceive datafromuart 
		delay(); 
	}
	else if(ch=='a'){
		round=0; 
		*WRITE_IO(IO_LEDR)= 0x20; // Display0xFFFF on LEDs toindicatereceive datafromuart 
		delay();
	}
	else if(ch=='8'){ 
		*WRITE_IO(IO_LEDR) = 0x20; // Display0xFFFF on LEDs toindicatereceive datafromuart 
		delay();
	}
	else if(ch=='h'){
		round=0; 
		*WRITE_IO(IO_LEDR)= 0x20; // Display0xFFFF on LEDs toindicatereceive datafromuart 
		delay();
	}
	else{
		round=0; 
		*WRITE_IO(IO_LEDR)= 0x40; // Display0xFFFF on LEDs toindicatereceive datafromuart 
		delay();
	}
	//
	*WRITE_IO(IO_LEDR) = 0xFFFF; // Display 0xFFFF on LEDs to indicate receivedatafromuart
	return;
}