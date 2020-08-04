function [ fx ] = fun( x )


for ii = 1 : length(x)
    fx(ii) = max(x(ii),0);
end

end

