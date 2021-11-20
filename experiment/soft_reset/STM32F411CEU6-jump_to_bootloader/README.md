# Soft reset: jump to bootloader in system memory

The code below is taken from [Akos Pasztor's](https://github.com/akospasztor) 
[STM32 Bootloader](https://github.com/akospasztor/stm32-bootloader).

Seems to work just fine! I have no idea if there are any traps here.

I can also restart the existing user code with no obvious problems, but I haven't
enabled any peripherals (`STM32_Programmer_CLI.exe -c port=usb1 -s 0x08000000`).

[bootloader.c#L439](https://github.com/akospasztor/stm32-bootloader/blob/7472c7b439d1921ecf9b835bc8e85b53c0549aa9/lib/stm32-bootloader/bootloader.c#L439):

```cpp
typedef void (*pFunction)(void);

#define SYSMEM_ADDRESS 0x1FFF0000

/**
 * @brief  This function performs the jump to the MCU System Memory (ST
 *         Bootloader).
 * @details The function carries out the following operations:
 *  - De-initialize the clock and peripheral configuration
 *  - Stop the systick
 *  - Remap the system flash memory
 *  - Perform the jump
 */
void jump_to_bootloader()
{
  uint32_t JumpAddress = *(__IO uint32_t*)(SYSMEM_ADDRESS + 4);
  pFunction Jump       = (pFunction)JumpAddress;

  HAL_RCC_DeInit();
  HAL_DeInit();

  SysTick->CTRL = 0;
  SysTick->LOAD = 0;
  SysTick->VAL  = 0;

  __HAL_RCC_SYSCFG_CLK_ENABLE();
  __HAL_SYSCFG_REMAPMEMORY_SYSTEMFLASH();

  __set_MSP(*(__IO uint32_t*)SYSMEM_ADDRESS);
  Jump();

  while(1)
      ;
}
```