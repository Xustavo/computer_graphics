function Y = inverte_tonalidade(X)
    hsv_image = rgb2hsv(X);
    hsv_image(:,:,1) = mod(hsv_image(:,:,1) + 0.5, 1);

    Y = hsv2rgb(hsv_image);
    Y = im2uint8(Y);
end