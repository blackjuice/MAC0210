# --------------------------------
# compile + execute: octave newton_basins.m
# 
#


function x0 = newton(f, df, x0)
    i = 0;
    do
        old = x0;
        x0 = x0 - (f(x0) ./ df(x0));
        i = i + 1;
    until ((abs(abs(old) - abs(x0))  < 10^-6) || (i > 200))

endfunction



function z = newton_basins (f, df, n)
    tam = 15;
    x = linspace(-tam, tam, n);
    y = linspace(-tam, tam, n);

    [X,Y] = meshgrid (x, y);

    z = X + i * Y;

    z = newton(f, df, z);

    hash = floor(mod(real(z)*177 + imag(z)*1001,23));

    hash = reshape(hash,[],1);
    X = reshape(X,[],1);
    Y = reshape(Y,[],1);


    dlmwrite('output.txt', horzcat(horzcat(X,Y), hash), ' ');

endfunction



f = @(x) sin(x) .- (x .^ 2)
df = @(x) cos(x) .- 2 .* x

newton_basins (f, df, 500);