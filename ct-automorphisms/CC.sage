#!/usr/bin/sage

# This code calculates the number of C2 pairs in GL(n,p) living inside
# GL(m,p), for n < m. p must be specified, and the idea is to find a
# pattern.


L = list()
M = list()

p = 3

G = GL(4,p)
H = GL(3,p)

if G.order() > 10**6:
    from sage.interfaces.gap import set_gap_memory_pool_size
    set_gap_memory_pool_size(2*1024**3) 


for i in H.conjugacy_classes():
    j = i.representative().matrix()
    k = block_matrix([[j,0],[0,matrix.identity(1)]],subdivide=False)
    L.append(G(k))
    M.append(i.representative())

f = 0 

for i in range(0,len(L)):
    n = G.cardinality()/L[i].conjugacy_class().cardinality()*M[i].conjugacy_class().cardinality()
    print n
    f = f+n

print "Total pairs: ",f
                     

# for j in G:
#     i = j.matrix()
#     if i[0,2]==0 and i[1,2]==0 and i[2,2]==1 and i[2,0]==0 and i[2,1]==0:
#         L.append(i)

# def comms(C):
#     z=0
#     for j in G:
#         if j*C == C*j:
#             z=z+1
#     return z

# f = 0
# for i in L:
#     j = comms(i)
#     f = j+f
#     print j

# print "Total: ", f

