function X = seguimento_reta(v0, vf, L, C)
   z = zeros(L, C);
  
   delta_i = abs(v0(1) - vf(1));
   delta_j = abs(v0(2) - vf(2));
   N = max(delta_i, delta_j);
  
   for k = 0:N
       tk = k/N;
       Pk = v0*(1-tk) + vf*tk;
       Pk = round(Pk);
       z(Pk(1), Pk(2)) = 1
   end
   X = z;
end