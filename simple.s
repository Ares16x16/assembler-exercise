@ File : simple.s------------------------  
.global main  
main:  
	LDR r0,=Num1   	@ load addr of Num1 into r0
	LDR r1, [r0,#0]	@ load the value of Num1 into r1
	LDR r2, [r0,#4]	@ load the value of Num2 into r2
	ADD r3, r1, r2	@ r3 = r1 + r2  
	SUB r4, r3, r1	@ r4 = r3 - r1
	SWI 0x11
Num1:	.word 100
Num2:	.word 200
.end
   
