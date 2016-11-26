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
