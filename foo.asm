
; begin prologue

.import print
.import init
.import new
.import delete
lis $4
.word 4
lis $11
.word 1
sub $29, $30, $4
sw $1, -4($30)
sub $30, $30, $4
sw $2, -4($30)
sub $30, $30, $4
sw $29, -4($30)
sub $30, $30, $4
sw $30, -4($30)
sub $30, $30, $4
sw $31, -4($30)
sub $30, $30, $4
lis $5 
.word init
jalr $5 
add $30, $30, $4
lw $31, -4($30)
add $30, $30, $4
lw $30, -4($30)
add $30, $30, $4
lw $29, -4($30)
add $30, $30, $4
lw $2, -4($30)
add $30, $30, $4
lw $1, -4($30)
sw $1, -4($30)
sub $30, $30, $4
sw $2, -4($30)
sub $30, $30, $4
lis $5
.word 0
sw $5, -4($30)
sub $30, $30, $4

; end prologue


; return expr

lw $3, 0($29)
lw $3, 0($3)
sw $3, -4($30)
sub $30, $30, $4
sw $29, -4($30)
sub $30, $30, $4
sw $31, -4($30)
sub $30, $30, $4
lw $3, -4($29)
sw $3, -4($30)
sub $30, $30, $4
lis $5
.word id1
jalr $5
add $30, $30, $4
lw $31, -4($30)
add $30, $30, $4
lw $31, -4($30)
add $30, $30, $4
lw $29, -4($30)
add $30, $30, $4
lw $5, -4($30)
add $3, $5, $3
sw $3, -4($30)
sub $30, $30, $4
lw $3, -8($29)
add $30, $30, $4
lw $5, -4($30)
add $3, $5, $3

; begin epilogue

add $30, $30, $4
add $30, $30, $4
add $30, $30, $4
jr $31
; Procedure id

id1:
sub $29, $30, $4

; Push Variables id

sw $5, -4($30)
sub $30, $30, $4
sw $6, -4($30)
sub $30, $30, $4
sw $7, -4($30)
sub $30, $30, $4

; Statements id


; Return Expression id

lw $3, 4($29)

; Pop Saved Registers id

add $30, $30, $4
lw $5, -4($30)
add $30, $30, $4
lw $6, -4($30)
add $30, $30, $4
lw $7, -4($30)
add $30, $29, $4
jr $31
