	.data 0x10004000
.word 0xffffffff
.word 0x00001234
.word 0x000000ff

	.text
	.globl main
main:
	lui $t0, 0x1000
	addi $t0, $t0, 0x4000 
	addi $t1, $zero, 0  # initialize i = 0
Loop:
	slti $t2, $t1, 2  # t2 = 1 if t1 < 2
	beq $t2, $zero, Exit
	lw $s0, 4($t0)
	sw $s0, 0($t0)
	addi $t1, $t1, 1 # i++
	addi $t0, $t0, 4 
	j Loop
Exit:
	
	
	

	
	 
