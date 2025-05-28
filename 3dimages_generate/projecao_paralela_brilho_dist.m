function X_proj = projecao_paralela_brilho_dist(arquivo_mat)

    dados = load(arquivo_mat);
    nomes = fieldnames(dados);
    objeto = dados.(nomes{1}); 

    [Nx, Ny, Nz] = size(objeto);
    profundidade = zeros(Nx, Ny);

    for i = 1:Nx
        for j = 1:Ny
            coluna = squeeze(objeto(i,j,:));
            k = find(coluna, 1, 'first');
            if ~isempty(k)
                profundidade(i,j) = k; 
            else
                profundidade(i,j) = 0;
            end
        end
    end

    profundidade(profundidade == 0) = NaN; 

    min_val = min(profundidade(:), [], 'omitnan');
    max_val = max(profundidade(:), [], 'omitnan');

    if max_val > min_val
        profundidade = (profundidade - min_val) / (max_val - min_val);
    else
        profundidade = zeros(size(profundidade));
    end

    profundidade = 1 - profundidade;

    profundidade(isnan(profundidade)) = 0;

    profundidade = profundidade .^ 0.8;

    X_proj = uint8(255 * profundidade);
    X_proj = cat(3, X_proj, X_proj, X_proj);

end
