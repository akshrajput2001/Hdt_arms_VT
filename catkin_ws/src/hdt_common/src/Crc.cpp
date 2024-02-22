#include "Crc.h"

/*----------------------------------------------------------------------------
  constructor
 *----------------------------------------------------------------------------*/
Crc::Crc() {
    for (uint32_t i = 0; i < 256; i++) {
        uint32_t c = i;
        for (int j = 0; j < 8; j++) {
            c = (c & 1) ? (0xEDB88320 ^ (c >> 1)) : (c >> 1);
        }
        crc_table[i] = c;
    }
}

/*----------------------------------------------------------------------------
  calculate crc
 *----------------------------------------------------------------------------*/
uint32_t Crc::crc32(uint8_t *buf, uint32_t len) {
    uint32_t c = 0xFFFFFFFF;
    for (uint32_t i = 0; i < len; i++) {
        c = crc_table[(c ^ buf[i]) & 0xFF] ^ (c >> 8);
    }
    return c ^ 0xFFFFFFFF;
}

/*----------------------------------------------------------------------------
  calculate crc
 *----------------------------------------------------------------------------*/
uint32_t Crc::crc32(std::vector<unsigned char> buf) {
    uint32_t c = 0xFFFFFFFF;
    for (uint32_t i = 0; i < buf.size(); i++) {
        c = crc_table[(c ^ buf[i]) & 0xFF] ^ (c >> 8);
    }
    return c ^ 0xFFFFFFFF;
}
