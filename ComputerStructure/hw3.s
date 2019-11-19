	.data 0x10004000
.word 0xffffffff
.word 0x00001234
.word 0x000000ff

	.text
	.globl main
main:
	lui $t0 0x1000
	ori $t0 0x4000
	lw $t1, 4($t0)
	sw $t1, 0($t0) 
	lw $t1, 8($t0)
	sw $t1, 4($t0)
	addi $t1,$zero, 10
	sw $t1, 8($t0)
	jr $ra	
