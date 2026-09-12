; Copyright (c) Sakura,E under BSD License

	LOC Data_Segment
	GREG @
Buf	OCTA 0

	LOC #100
Max	LDO $1,$0
	SETL $3,1*8
	LDO $2,$0,$3
	CMP $4,$1,$2
	BP $4,L1
	SET $1,$2
L1	SET $0,$1
	POP 1,0
Main	LDA $2,Buf
	SETL $11,1*8
	SETL $5,12
	SETL $6,4  ; change to 42 for another test...
	STO $5,$2
	STO $6,$2,$11
	PUSHJ 1,Max
	ADD $1,$1,$1
	TRAP 0,Halt,0
