function Y = comprimeImagem(X, fator, direcao)
   w = ones(1, fator) / fator;
  
   if strcmp(direcao, 'horizontal')
       Xsuave = conv2(X, w, 'same');
       Y = Xsuave(:, 1:fator:end);
   elseif strcmp(direcao, 'vertical')
       Xsuave = conv2(X, w', 'same');
       Y = Xsuave(1:fator:end, :); 
   end
end