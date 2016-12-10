#!/usr/local/bin/sage

#A = CyclicPermutationGroup(2).character_table()
#A=DihedralGroup(16).character_table()
A = CyclicPermutationGroup(8).character_table()
A.swap_rows(0,1)
#B = A.tensor_product(A,subdivide=False).tensor_product(A,subdivide=False)
B=A
print "Is B symmetric? ", B.is_symmetric()

for i in range(0,B.nrows()):
    for j in range(i+1,B.nrows()):
        for k in range(0,B.nrows()):
            for l in range(k+1,B.nrows()):
                C = identity_matrix(B.nrows())
                C.swap_rows(k,l)
                C.swap_rows(i,j)
                D = Set((B.inverse()*C*B).list()).difference(Set({0,1}))
                if D.is_empty():
                    print "Transpose (",i+1,",",j+1,")(",k+1,",",l+1,"): "
                    print B.inverse()*C*B

