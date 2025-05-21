function Y = rasterizaCirculo(i0, j0, R, M, N)
   Y = zeros(M, N);
   for x = -R:R
       i = i0 + x;
       if i < 1 || i > M
           continue;
       end
       L = sqrt(R^2 - x^2);
       j_min = ceil(j0 - L);
       j_max = floor(j0 + L);
       for j = j_min:j_max
           if j >= 1 && j <= N
               Y(i, j) = 1;
           end
       end
   end
end
