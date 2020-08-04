function [ Ta ] = ActiveJointTorque( t,Tm )

% LoadParameter;
Epsilon(1) = 1.0; Epsilon(2) = 0.5; Epsilon(3) = 1.0;

Ta(1) = Tm(2)-Tm(1);
Ta(2) = Tm(4)-Tm(3)+Tm(8)-Tm(7);
Ta(3) = Tm(6)-Tm(5)+Tm(10)-Tm(9);
Ta(4) = Tm(12)-Tm(11)+Epsilon(1)*Tm(7)-Epsilon(2)*Tm(8)-Epsilon(3)*Tm(19);
Ta(5) = Tm(14)-Tm(13)+Epsilon(1)*Tm(9)-Epsilon(2)*Tm(10)-Epsilon(3)*Tm(20);
Ta(6) = Tm(16)-Tm(15)+Tm(19);
Ta(7) = Tm(18)-Tm(17)+Tm(20);

load('TaDiff.mat');

AddTa = interp1(Time,TaDiff,t);

Ta(7) = Ta(7) + AddTa(7);
% Ta(5) = Ta(5) + AddTa(5);
Ta(3) = Ta(3) + AddTa(3);

% Ta = Ta + AddTa;

end

