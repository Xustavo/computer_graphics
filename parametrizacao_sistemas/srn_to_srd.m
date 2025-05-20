function [I, J] = SRNparaSRD(x, y, L, C)
    J = round( (x + 1) / 2 * (C - 1) + 1 );
    
    I = round( (1 - (y + 1) / 2) * (L - 1) + 1 );
end