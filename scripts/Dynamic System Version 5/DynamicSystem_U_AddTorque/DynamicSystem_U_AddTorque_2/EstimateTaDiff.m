function [ TaDiff ] = EstimateTaDiff( Sg,phi )
load('PHIToTADIFF.mat');

% if sum(Sg) == 0
%     fprintf('Warning: No Sg is 1\n');
%     TaDiff7 = 0;
% end

TaDiff = zeros(1,7);

for ii = [2,3,5,6]
    if Sg(ii) == 1
        for jj = [3,5,7] 
            tf = PHIToTADIFF{jj,ii};
            TaDiff(jj) = FindFunctionValue( tf(:,1),tf(:,2),phi );
        end
    end
end

end