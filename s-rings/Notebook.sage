#!/usr/local/bin/sage

# Given a group and a subset of elements from that set, this finds the
# group algebra sum of elements and calculates its centralizer.

# This version focuses on S_n. Because of the size of that group, only
# commutators from a specific conjugacy class are calculated by
# default. The "Dihed" notebook can be used to calculate all
# centralizing elements.

G = SymmetricGroup(4)
GA = GroupAlgebra(G,QQ)

P = Set([ G((1,2)), G((1,2,3,4))])#, G((3,4)), G((1,4))])


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

