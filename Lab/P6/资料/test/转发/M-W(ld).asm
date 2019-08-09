# TEST M-W ld
# $30 is in charge of offset and base
# $5 is the register used for testing

# test M-W-ld
ori $30, 0xffff
ori $4, 4
sw $30, 0($4)
lw $5, 0($4)
sw $5, 4($4)