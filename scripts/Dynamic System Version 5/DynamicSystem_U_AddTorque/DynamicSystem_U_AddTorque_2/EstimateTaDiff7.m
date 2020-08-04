function [ TaDiff7 ] = EstimateTaDiff7( Sg,phi )
load('PHIToTADIFF.mat');

% if sum(Sg) == 0
%     fprintf('Warning: No Sg is 1\n');
%     TaDiff7 = 0;
% end

TaDiff7 = 0;

for ii = [2,3,5,6]
    if Sg(ii) == 1
        tf = PHIToTADIFF{ii};
        TaDiff7 = FindFunctionValue( tf(:,1),tf(:,2),phi );
    end
end

end