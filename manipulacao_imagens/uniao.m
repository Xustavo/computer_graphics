function Y = uniao(X1,X2)

// X1 e X2 devem ter o mesmo tamanho

[L,C] = size(X1);

for i=1:L
    for j=1:C
        Y(i,j) = max(X1(i,j),X2(i,j));
    end
end