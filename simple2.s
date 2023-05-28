@ File : simple2.s------------------------
.data
arrA:	.word   -813,  74, -91,  392,  -5,  0
.text 
.global main  
main:  
	LDR r0,=arrA								@load the addr. of arrA into r0
	Loop:										
		LDR r1, [r0]							@load r0 into r1
		CMP r1, #0								@check if r1 is 0
		MOVEQ r0,r5								@r0=r5 if true
		BEQ Exit								@then exit
		LDR r2, [r0, #4]						@load r0+4 into r2
		ADDNE r3, r2, r1, LSL #2					@r3=r2+r1*4		
		STR r3, [r0]							@store r3 into r0
		ADDNE r5, r5, r3							@r5=r5+r3
		ADDNE r0, r0, #4							
		B Loop
	Exit:
	r5: .word 0
	SWI 0x11
.end
