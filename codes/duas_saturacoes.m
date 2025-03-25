function [Y, Z] = duas_saturacoes(X)
    hsv_image = rgb2hsv(X);
    [h, s, v] = imsplit(hsv_image);
    
    s_max = ones(size(s)); 
    s_min = zeros(size(s)); 

    hsv_max_saturation = cat(3, h, s_max, v);
    hsv_min_saturation = cat(3, h, s_min, v);

    Y = hsv2rgb(hsv_max_saturation); 
    Z = hsv2rgb(hsv_min_saturation); 

    Y = im2uint8(Y);
    Z = im2uint8(Z);
end