function Y = comprimeDilataImagem(X)
   fatorHorizontalDilatacao = input('Digite o fator de dilatação na horizontal: ');
   fatorHorizontalCompressor = input('Digite o fator de compressão na horizontal: ');
   fatorVerticalDilatacao = input('Digite o fator de dilatação na vertical: ');
   fatorVerticalCompressor = input('Digite o fator de compressão na vertical: ');
   X = dilataImagem(X, fatorHorizontalDilatacao, 'horizontal');
  
   X = comprimeImagem(X, fatorHorizontalCompressor, 'horizontal');
  
   X = dilataImagem(X, fatorVerticalDilatacao, 'vertical');
   X = comprimeImagem(X, fatorVerticalCompressor, 'vertical');
   Y = X;
end