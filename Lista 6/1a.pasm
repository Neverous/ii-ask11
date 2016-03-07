PUSH X # X
PUSH Y # X, Y
MUL # X*Y
PUSH Z # X*Y, Z
SUB # X*Y - Z
PUSH X # X*Y - Z, X
PUSH Z # X*Y - Z, X, Z
PUSH Y # X*Y - Z, X, Z, Y
MUL # X*Y - Z, X, ZY
ADD # X*Y - Z, X + ZY
MUL # (X*Y - Z)*(X + ZY)
POP W # W = ↑
