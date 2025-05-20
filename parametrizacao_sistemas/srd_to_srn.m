function [X, Y] = SRDparaSRN(i, j, L, C)
    X = 2 * ((j - 1) / (C - 1) - 1 / 2);

    Y = 2 * (1 - (i - 1) / (L - 1) - 1 / 2);
end
