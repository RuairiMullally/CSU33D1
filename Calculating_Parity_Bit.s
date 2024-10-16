.global _start
_start:
	
	LDR	r0, =0x16
	LDR r1, =1
	MOV r2, r0
	MOV r3, #0
	MOV r4, #0
	
	AND r3, r2, r1 @compare LSB
	ADD r4, r4, r3 @if LSB is 1, r4 increases by 1
	LSR r2, #1 @ shift right r2, so next most significant bit is compared
	
	AND r3, r2, r1 
	ADD r4, r4, r3 
	LSR r2, #1 
	
	AND r3, r2, r1 
	ADD r4, r4, r3 
	LSR r2, #1 
	
	AND r3, r2, r1 
	ADD r4, r4, r3 
	LSR r2, #1 
	
	AND r3, r2, r1 
	ADD r4, r4, r3 
	LSR r2, #1 
	
	AND r3, r2, r1 
	ADD r4, r4, r3 
	LSR r2, #1 
	
	AND r3, r2, r1 
	ADD r4, r4, r3 
	LSR r2, #1 @7 bits 
	
	AND r4, r4, #1 @check if count is odd or even, 1 if odd
	LSL r4, #7 @ shift r4 accross 7 bits
	EOR r0, r0, R4
	
	
