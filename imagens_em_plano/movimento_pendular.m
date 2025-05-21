function frames = movimentoPendular(i0, j0, angulo0, g, l, T, M, N)
   R = 3;
   frames = zeros(M, N, T);
   outputFolder = 'pendulo_frames';
   if ~exist(outputFolder, 'dir')
       mkdir(outputFolder);
   end
   for t = 1:T
       theta = angulo0 * cos(sqrt(g / l) * t);
       i = round(i0 + l * cos(theta));
       j = round(j0 + l * sin(theta));
       i = max(1, min(M, i));
       j = max(1, min(N, j));
       i0_clamp = max(1, min(M, i0));
       j0_clamp = max(1, min(N, j0));
       Y = zeros(M, N);
       Y = Y + seguimento_reta([i0_clamp, j0_clamp], [i, j], M, N);
       Y = Y + rasterizaCirculo(i, j, R, M, N);
       frames(:, :, t) = Y > 0;
       img = uint8(255 * frames(:, :, t));
       filename = fullfile(outputFolder, sprintf('frame_%03d.png', t));
       imwrite(img, filename);
   end
end
