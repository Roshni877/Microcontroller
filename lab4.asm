	AREA Program, CODE, READONLY
ENTRY
	LDR R0, MEMORY
	MOV R1,#0 ;load R1 with 0
	MOV R2,#10 ;load R2 with A=10
AGAIN ADD R1,R1,R2 ;adding R1 & R2 value, AGAIN is just a label
; Jump till value Not Zero back to addition, if zero stop
looping
	SUB R2,R2,#1 ;Decrement the value of R2
	CMP R2,#0 ;Compare R2 value with 0
	BNE AGAIN ; loop until R2==0
	STR R1, [R0, #4] ; R2==0 store the final value in R1 to MEMORY
HERE B HERE ;Terminate
MEMORY DCD 0x40000000
	END