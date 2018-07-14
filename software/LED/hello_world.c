/*
 * "Hello World" example.
 *
 * This example prints 'Hello from Nios II' to the STDOUT stream. It runs on
 * the Nios II 'standard', 'full_featured', 'fast', and 'low_cost' example
 * designs. It runs with or without the MicroC/OS-II RTOS and requires a STDOUT
 * device in your system's hardware.
 * The memory footprint of this hosted application is ~69 kbytes by default
 * using the standard reference design.
 *
 * For a reduced footprint version of this template, and an explanation of how
 * to reduce the memory footprint for a given application, see the
 * "small_hello_world" template.
 *
 */

#include <stdio.h>
#include "system.h"                   //系统头文件
#include "altera_avalon_pio_regs.h"   //PIO寄存器头文件
#include "alt_types.h"                //数据类型头文件
#include "sys/alt_irq.h"              //中断头文件
#include "unistd.h"                   //延时头文件

alt_u8 LED_Toggle=0;
alt_u8 i;

alt_u32 LED_TB[]={
 0x3FF,0x0,
 0x200,0x100,0x080,0x040,0x020,0x010,0x008,0x004,0x002,0x001,  //从左至右逐个
 0x001,0x002,0x004,0x008,0x010,0x020,0x040,0x080,0x100,0x200,  //从右至左逐个
 0x200,0x300,0x700,0x3C0,0x3E0,0x3F0,0x3F8,0x3FC,0x3FE,0x3FF,  //从左至右叠加
 0x3FF,0x3FE,0x3FC,0x3F8,0x3F0,0x3E0,0x3C0,0x700,0x300,0x200,  //从右至左叠加
 0x201,0x303,0x387,0x3CF,0x3FF,0x1FE,0x0FC,0x078,0x030,0x000,  //靠拢
 0x030,0x078,0x0FC,0x1FE,0x3FF,0x3CF,0x387,0x303,0x201,0x000,  //合并

};



void IRQ_Init();              //中断初始化
void IRQ_Key_Interrupts();    //中断服务子程序


int main()
{

	IRQ_Init();

    printf("Hello Nios II!\n");

    while(1)
    {
       for(i=0;i<2;i++)
       {
	     IOWR_ALTERA_AVALON_PIO_DATA(LED_BASE,LED_TB[i]);
	     usleep(50000);
       }
    }

  return 0;
}

void IRQ_Init()
{
  IOWR_ALTERA_AVALON_PIO_IRQ_MASK(KEY_BASE,0xFF);  //使能中断
  IOWR_ALTERA_AVALON_PIO_EDGE_CAP(KEY_BASE,0xFF);  //清中断边沿捕获寄存器

  /********注册中断服务子程序*******/
  alt_ic_isr_register(
		  KEY_IRQ_INTERRUPT_CONTROLLER_ID,        //中断控制器标号（system.h）
		  KEY_IRQ,                                //硬件中断号
		  IRQ_Key_Interrupts,                     //中断服务子函数
		  0x0,                                    //指向与设备驱动实例相关的数据结构体
		  0x0);                                   //flag，保留未用
}

void IRQ_Key_Interrupts()
{
    alt_u32 key_state;

    key_state=IORD_ALTERA_AVALON_PIO_DATA(KEY_BASE);

    switch(key_state)
    {
      case 0x01:for(i=2;i<12;i++)
      {
	     IOWR_ALTERA_AVALON_PIO_DATA(LED_BASE,LED_TB[i]);
	     usleep(50000);
      }break;

      case 0x02:for(i=12;i<22;i++)
      {
	     IOWR_ALTERA_AVALON_PIO_DATA(LED_BASE,LED_TB[i]);
	     usleep(50000);
      }break;

      case 0x04:for(i=42;i<52;i++)
      {
	     IOWR_ALTERA_AVALON_PIO_DATA(LED_BASE,LED_TB[i]);
	     usleep(50000);
      }break;

      case 0x08:for(i=52;i<62;i++)
      {
	     IOWR_ALTERA_AVALON_PIO_DATA(LED_BASE,LED_TB[i]);
	     usleep(50000);
      }break;
    }
    //IOWR_ALTERA_AVALON_PIO_DATA(LED_BASE,key_state);
    IOWR_ALTERA_AVALON_PIO_EDGE_CAP(KEY_BASE,0xFF);    //清中断边沿捕获寄存器

}
