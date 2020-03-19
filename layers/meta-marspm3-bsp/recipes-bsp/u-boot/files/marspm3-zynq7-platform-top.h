
#include <configs/platform-auto.h>
#define CONFIG_SYS_BOOTM_LEN 0xF000000

/*Required for uartless designs */
#ifndef CONFIG_BAUDRATE
#define CONFIG_BAUDRATE 115200
#ifdef CONFIG_DEBUG_UART
#undef CONFIG_DEBUG_UART
#endif
#endif
#undef CONFIG_PREBOOT
#define CONFIG_PREBOOT	"echo U-BOOT for Mars PM3 - ZX2;setenv preboot; echo;env import -t 0xFFFFFC00;dhcp"
