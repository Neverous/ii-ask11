MOVE W X # W = X
MUL W Y # W *= Y
SUB W Z # W -= Z // W = XY - Z
MOVE A0 Z # A0 = Z
MUL A0 Y # A0 *= Y
ADD A0 X # A0 += X // A0 = X + ZY
MUL W A0 # W = (XY - Z)*(X + ZY)
