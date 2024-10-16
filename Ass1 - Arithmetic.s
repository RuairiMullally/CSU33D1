.global _start
_start:
	
	LDR r1, =0x8
	MOV r2, #0x4
	MUL r0, r1, r2
	MUL r3, r0, r1
	MOV r4, #0x3
	MUL r5, r4, r1
	ADD r0, r3, r5
	