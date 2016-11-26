G = DihedralGroup(4)
GA = GroupAlgebra(G,QQ)

P = Set([G((1,2,3,4)), G((1,3)), G((1,3))*G((2,4))])

#EE = Set(SymmetricGroup(4))
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
