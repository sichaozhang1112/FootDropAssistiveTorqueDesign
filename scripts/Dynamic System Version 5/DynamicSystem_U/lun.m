function [ lx ] = lun( x )

Threshold = 0.01;

if x < 0
    lx = 0;
elseif x > Threshold
    lx = 1;
else
    lx = (1/Threshold)*x;
%     lx= 0;
end

end

