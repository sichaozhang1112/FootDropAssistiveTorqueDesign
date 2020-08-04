function [ u13 ] = EstimateU13( phi,Sg )

load('PHIToU13_7.mat');

if sum(Sg) == 0
    fprintf('Warning: No Sg is 1\n');
    u13 = 0;
end

% if Sg(1) == 1 || Sg(4) ==1
%     u13 = 0;
% elseif Sg(2) == 1 || Sg(3) == 1
%     tf = [PHIToU13{2};PHIToU13{3}];
%     u13 = FindFunctionValue( tf(:,1),tf(:,2),phi );
% elseif Sg(5) == 1 || Sg(6) == 1
%     tf = [PHIToU13{5};PHIToU13{6}];
%     u13 = FindFunctionValue( tf(:,1),tf(:,2),phi );   
% end

for ii = 1 : 6
    if Sg(ii) == 1
        tf = PHIToU13{ii};
        u13 = FindFunctionValue( tf(:,1),tf(:,2),phi );
    end
end

end