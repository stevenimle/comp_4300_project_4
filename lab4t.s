
	.text

main:
    la $1, floats
    li $5, 0

	l.d $f0, 0($1)
	l.d $f1, 4($1)
	l.d $f2, 8($1)


loop:
    subi $5, $5, 1
	fadd $f0, $f0, $f1
	fadd $f12, $f0, $f2
	bge  $5, $0, loop
	nop
	nop
	nop

	li $2, 2
	syscall

	li $2, 10
	syscall

	.data
floats: .float 1.2, -11.0, 12.5