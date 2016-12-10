#!/usr/local/bin/sage

# That is, given a finite group and a set, we find the sum of elements
# of the set in the group algebra (PBar, below), and exhaustively find
# all other group algebra elements which commute with it.

# The code here is almost identical to Notebook.sage, except here I
# investigate groups other than S_n, particularly dihedral groups.

G = DihedralGroup(4)
P = Set([G((1,2,3,4)), G((1,3)), G((1,3))*G((2,4))])

GA = GroupAlgebra(G,QQ)

PBar = 0
for i in P:
    PBar = PBar +  GA(i)

A = 0
card = 0
for i in Subsets( Set(G) ):
#    if i.cardinality() < 4:
#        continue
    if i.cardinality()>card:
        print "That's all of dimension", card
        card=i.cardinality()
    A = 0
    for j in i:
        A = A + GA(j)
    if A*PBar-PBar*A == 0:
        print "This commutes: ", i



#E = 0
#for i in EE:
#    E = E +  GA(i)

# QBar = 0
# for i in Q:
#     QBar = QBar +  A(i)

# PBar*QBar-QBar*PBar
