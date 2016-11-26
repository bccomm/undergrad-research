G = SymmetricGroup(4)
GA = GroupAlgebra(G,QQ)

#P = Set([G((1,2)), G((2,3)), G((3,4)), G((4,5)), G((1,5)), G((1,6)), G((2,7)), G((3,8)), G((4,9)), G((5,10)), G((6,8)), G((6,9)), G((7,9)), G((7,10)), G((8,10)) ])
#P = Set([ G((1,2)), G((2,3)), G((3,4)), G((4,5)), G((5,6)), G((6,7)), G((7,8)), G((1,8)), G((2,7)), G((2,5))])
#P = Set([ G((1,2)), G((2,3)), G((1,3))]) 
#P = Set(G((1,2)).conjugacy_class())
#G((3,4)), G((4,5)), G((1,5))])
P = Set([ G((1,2)), G((1,2,3,4))])#, G((3,4)), G((1,4))])
Q = Set([G(())]).union(Set([(G((1,2))*G((3,4))).conjugacy_class()])).union(Set([G((1,2,3,4)).conjugacy_class()])).union(Set([G((1,2,3)).conjugacy_class()]))

EE = Set(SymmetricGroup(3))
# AA = Set([G((1,4,2,5)), G((1,5,2,4)), G((2,3,5,4)), G((2,4,5,3)), G((1,2,5,3)), G((1,3,5,2)), G((1,3,4,5)), G((1,5,4,3))])
# BB = Set([G((1,3,5,4)), G((1,4,5,3)), G((1,2,4,5)), G((1,5,4,2)), G((1,5,2,3)), G((1,3,2,5)), G((2,4,3,5)), G((2,5,3,4))])
# CC = Set([G((1,2,3,5)), G((1,5,3,2)), G((1,2,5,4)), G((1,4,5,2)), G((1,5,3,4)), G((1,4,3,5)), G((2,3,4,5)), G((2,5,4,3)), G((1,3,4,5)), G((1,5,4,3)), G((1,2,5,3)), G((1,3,5,2))])

# DD = Set([G((1,3,4,5)), G((1,5,4,3)), G((1,3,5,2)), G((1,2,5,3))])

# A = 0
# for i in list(Subsets(AA)):
#     A = 0
#     for j in i:
#         A = A + GA(j)
#     if A*PBar-PBar*A == 0:
#         print "This works: ", i

# B = 0
# for i in list(Subsets(BB)):
#     B = 0
#     for j in i:
#         B = B + GA(j)
#     if B*PBar-PBar*B == 0:
#         print "This works: ", i

PBar = 0
for i in P:
    PBar = PBar +  GA(i)

ThreeCycles=Set(G((1,2,3)).conjugacy_class())
Transpositions=Set(G((1,2)).conjugacy_class())
DoubleTransps=Set( ( G((1,2))*G((3,4)) ).conjugacy_class())
FourCycles=Set(G((1,2,3,4)).conjugacy_class())

A = 0
card = 0
for i in Subsets( Transpositions.union(FourCycles)):
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



E = 0
for i in EE:
    E = E +  GA(i)

# QBar = 0
# for i in Q:
#     QBar = QBar +  A(i)

# PBar*QBar-QBar*PBar
