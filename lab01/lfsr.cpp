#include <iostream>
#include "lfsr.h"

void lfsr_calculate(uint16_t *reg) {
    uint16_t tmp = *reg ^ (*reg >> 2) ^ (*reg >> 3) ^ (*reg >> 5);
    tmp &= 1;
    *reg >>= 1;
    *reg = (*reg & ~ (1 << 15)) | (tmp << 15);
}
