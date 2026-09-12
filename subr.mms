; Copyright (c) Sakura,E under BSD License

	LOC #100
Inc	SET $3,1
	ADD $0,$0,$3
	POP 1,0
Main	SET $3,8
	PUSHJ 2,Inc
	ADD $2,$2,$2
	TRAP 0,Halt,0
