function [ u,v ] = NeuralStateThisTime( t )

load('NeuralState_Normal.mat');

u = interp1(Time,Neural_U,t)';
v = interp1(Time,Neural_V,t)';

end