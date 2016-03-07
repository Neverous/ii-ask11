SBN T0 T0 2 # T0 = 0, miejsce na stała -A
SBN T0 A 5 # T0 = -A, stała -A
SBN T1 T1 3 # T1 = 0, miejsce na licznik
SBN T1 T0 6 # T1 = A, licznik
SBN T2 T2 4 # T2 = 0, miejsce na wynik
# FOR
SBN T2 T0 8 # T2 -= -A, T2 += A
SBN T1 X 6 # T1 -= 1 i skocz do 6
# ENDFOR
