#include "firmware.h"

#define USR_MSG "This should be printed by the custom test!\n"

void customtest() {
	print_str(USR_MSG);
}