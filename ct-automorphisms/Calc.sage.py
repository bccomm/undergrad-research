
# This file was *autogenerated* from the file Calc.sage
from sage.all_cmdline import *   # import sage library

_sage_const_1 = Integer(1); _sage_const_8 = Integer(8); _sage_const_0 = Integer(0)#!/usr/local/bin/sage

#A = CyclicPermutationGroup(2).character_table()
#A=DihedralGroup(16).character_table()
A = CyclicPermutationGroup(_sage_const_8 ).character_table()
A.swap_rows(_sage_const_0 ,_sage_const_1 )
#B = A.tensor_product(A,subdivide=False).tensor_product(A,subdivide=False)
B=A
print "Is B symmetric? ", B.is_symmetric()

for i in range(_sage_const_0 ,B.nrows()):
    for j in range(i+_sage_const_1 ,B.nrows()):
        for k in range(_sage_const_0 ,B.nrows()):
            for l in range(k+_sage_const_1 ,B.nrows()):
                C = identity_matrix(B.nrows())
                C.swap_rows(k,l)
                C.swap_rows(i,j)
                D = Set((B.inverse()*C*B).list()).difference(Set({_sage_const_0 ,_sage_const_1 }))
                if D.is_empty():
                    print "Transpose (",i+_sage_const_1 ,",",j+_sage_const_1 ,")(",k+_sage_const_1 ,",",l+_sage_const_1 ,"): "
                    print B.inverse()*C*B


