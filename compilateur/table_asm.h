
#ifndef PROGSYS_TAB_ASM_H
#define PROGSYS_TAB_ASM_H

struct asm_instruction {
	char * id;
	int registers[2];
} typedef asm_instruction;

void tab_asm_init();

void tab_asm_add(char * id, int r0, int r1);

void tab_asm_write_file();

#endif