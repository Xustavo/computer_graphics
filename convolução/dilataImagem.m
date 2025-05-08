function Y = dilataImagem(X, fator, direcao)
   if strcmp(direcao, 'horizontal')
       x1 = zeros(size(X, 1), fator * size(X, 2)); 
       x1(:, 1:fator:end) = X; 
       w = ones(1, fator); 
       Y = conv2(x1, w, 'same'); 
   elseif strcmp(direcao, 'vertical')
       x1 = zeros(fator * size(X, 1), size(X, 2)); 
       x1(1:fator:end, :) = X;
       w = ones(fator, 1); 
       Y = conv2(x1, w, 'same');
   end
end