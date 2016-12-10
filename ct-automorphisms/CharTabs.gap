#!/usr/local/bin/gap

# This program takes as input a group size. For all groups of that
# size, this prints non-central elements which are stable with respect
# to conjugacy classes under multiplicaton by central elements.

# The purpose is to find instances of nontrivial outer automorphisms
# which leave conjugacy classes fixed.

for i in [27] do
    for j in AllGroups(Size,i) do
        for k in Elements(j) do
            for l in Center(j) do
                if not IsAbelian(j) then
                    if Order(l) <> 1 then
                        if not k in Center(j) then
                            if IsConjugate(j,k,l*k) then
                                Print("z=",l," g=",k," g*z=",k*l," in Group ",StructureDescription(j),"\n");
                            fi;
                        fi;
                    fi;
                fi;
            od;
        od;
    od;
od;

quit;
