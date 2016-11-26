#!/usr/bin/sage

n = 6 # Length of cycle

X=list()

K.<z> = CyclotomicField(8)

for i in range(0,n):
    for j in range(0,n):
        X.append(z^i)

t = 0        
        
for i in Arrangements(X,n):
    x1 = 0
    x2 = 0
    x3 = 0
    x4 = 0
    x5 = 0
    for k in range(0,n):
        x1 = x1 + i[k]*conjugate(i[(k+1)%n])
        x2 = x2 + i[k]*conjugate(i[(k+2)%n])
        x3 = x3 + i[k]*conjugate(i[(k+3)%n])
        x4 = x4 + i[k]*conjugate(i[(k+4)%n])
        x5 = x5 + i[k]*conjugate(i[(k+5)%n])

    for j  in Set([-2]):
        if (x1 == j and x2 == j and x3 == j and x4 == j and x5 == j): # and y == j and z == j):
            t= t+1
            print "Solutions to [G:G'] =",n-j,":",
            print i, "Sum = ",
            f = 0
            for k in i:
                f = f+k
            print f
        
print t
