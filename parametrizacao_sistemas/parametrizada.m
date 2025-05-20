function Y = parametrizada(L, C, N)
    Y = zeros(L,C);
    t = linspace(0,1,N);

    x = cos(2*pi*t);
    y = sin(2*pi*t);


    for k = 1:N
        [i, j] = SRNparaSRD(x(k), y(k), L, C);

        if i >= 1 && i <= L && j >= 1 && j <= C
            Y(i, j) = 1;
        end
    end
end