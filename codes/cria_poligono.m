function Y = cria_poligono(centro, raio, lados, L, C)
   Y = zeros(L, C);
   vertices = zeros(lados, 2);
   for i = 1:lados
       x = round(centro(1) + raio * cos((i-1) * (2*pi / lados)));
       y = round(centro(2) + raio * sin((i-1) * (2*pi / lados)));
       vertices(i, :) = [x, y];
   end
   for i = 1:lados-1
       Y = Y + seguimento_reta(vertices(i, :), vertices(i+1, :), L, C);
   end
   Y = Y + seguimento_reta(vertices(lados, :), vertices(1, :), L, C);
end