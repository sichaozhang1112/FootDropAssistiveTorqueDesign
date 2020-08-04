%%
Sg1StartNum=[];Sg2StartNum=[];Sg3StartNum=[];Sg4StartNum=[];Sg5StartNum=[];Sg6StartNum=[];
for ii = 2 : 1546
    if Sg(ii-1,1) == 0 && Sg(ii,1) == 1
        Sg1StartNum(end+1) = ii;
    elseif Sg(ii-1,2) == 0 && Sg(ii,2) == 1
        Sg2StartNum(end+1) = ii;
    elseif Sg(ii-1,3) == 0 && Sg(ii,3) == 1
        Sg3StartNum(end+1) = ii;
    elseif Sg(ii-1,4) == 0 && Sg(ii,4) == 1
        Sg4StartNum(end+1) = ii;
    elseif Sg(ii-1,5) == 0 && Sg(ii,5) == 1
        Sg5StartNum(end+1) = ii;
    elseif Sg(ii-1,6) == 0 && Sg(ii,6) == 1
        Sg6StartNum(end+1) = ii;
    end
end

%%
SgStartNum = [Sg1StartNum;Sg2StartNum;Sg3StartNum;Sg4StartNum;Sg5StartNum;Sg6StartNum];
clear Sg1StartNum Sg2StartNum Sg3StartNum Sg4StartNum Sg5StartNum Sg6StartNum;
