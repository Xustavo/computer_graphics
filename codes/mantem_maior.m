function Y = mantem_maior(X)
   // Funcao que observa pixel a pixel os valores do RGB e mantem somente o
   % maior
   [L, C, ~] = size(X);
   // realiza as iterações
   for i = 1:L
       for j = 1:C
	     %compara se o R é o maior
           if X(i,j,1) >= X(i,j,2) && X(i,j,1) >= X(i,j,3)
   // mantem somente o R
               Y(i,j,1) = X(i,j,1);
               Y(i,j,2) = 0;
               Y(i,j,3) = 0;
     // compara se o G é o maior
           elseif X(i,j,2) >= X(i,j,1) && X(i,j,2) >= X(i,j,3)
   //mantem somente o G
               Y(i,j,2) = X(i,j,2);
               Y(i,j,1) = 0;
               Y(i,j,3) = 0;
	     //se nem o R, nem o G sao os maiores, portanto o maior e o B
           else
		   //mantem somente o B
               Y(i,j,3) = X(i,j,3);
               Y(i,j,1) = 0;
               Y(i,j,2) = 0;
           end   
       end
   end
end
