function [ DeviceTauMatrix ] = DeviceTau( Tm17  )

Tau = [0;0;0;0;-Tm17;0;Tm17];

MatrixTau = [zeros(3,7);-diag(ones(1,7))];

DeviceTauMatrix = MatrixTau * Tau;

end