function [ xft ] = RestPositionOfGRF ( yf_old, yf_new, xf_old, xf_new, xft_old )
    
for ii = 1:4
    if yf_old(ii) > 0 && yf_new(ii) <= 0
        xft(ii) = xf_old(ii)+(0-yf_old(ii))*(xf_new(ii)-xf_old(ii))/(yf_new(ii)-yf_old(ii));
    elseif yf_old(ii) <= 0 && yf_new(ii) <= 0
        xft(ii) = xft_old(ii);
    elseif yf_new(ii) > 0
        xft(ii) = xf_new(ii);
    end
end

end 