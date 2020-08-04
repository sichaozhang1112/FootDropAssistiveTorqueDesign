figure(1);
for ii = 4000 : 6000
    if Sg(ii,1) == 1
        Color = 'b';
    elseif Sg(ii,2) == 1
        Color = 'g';
    elseif Sg(ii,3) == 1
        Color = 'r';
    elseif Sg(ii,4) == 1
        Color = 'c';
    elseif Sg(ii,5) == 1
        Color = 'm';
    elseif Sg(ii,6) == 1
        Color = 'y';
    end
    hold on;
    scatter(ii,Ta(ii,6),Color);
end