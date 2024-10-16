.global _start
_start:
	
	LDR	R7, ='1'
	LDR	R6, ='0'
	LDR	R5, ='3'
	LDR	R4, ='4'
	LDR	R3, ='2'
	LDR	R2, ='7'
	LDR	R1, ='9'
	@initialise vars
	MOV r0, #0
	MOV r8, #10
	@1. load in r7
	SUB r7, r7, #48 @r7 <---- r7 - 48, converts to int
	MOV r0, r7
	MUL r0, r0, r8 @r0 <----- shift r0 to the left
	@2. load in r6
	SUB r6, r6, #48 
	ADD r0, r0, r6
	MUL r0, r0, r8 
	@3. load in r5
	SUB r5, r5, #48 
	ADD r0, r0, r5
	MUL r0, r0, r8
	@4. load in r4
	SUB r4, r4, #48 
	ADD r0, r0, r4
	MUL r0, r0, r8
	@5. load in r3
	SUB r3, r3, #48 
	ADD r0, r0, r3
	MUL r0, r0, r8
	@6. load in r2
	SUB r2, r2, #48 
	ADD r0, r0, r2
	MUL r0, r0, r8
	@7. load in r6
	SUB r1, r1, #48 
	ADD r0, r0, r1