# --------------------------------
# compile + execute: octave ep1.m
# 
#


function newton_basis (f, n)
    l = length(a);

    for (i = 1:l)
        printf("%d ", a(i));
    endfor

    printf("\n");
    dlmwrite ('output.txt');
endfunction

function newton (f, fl, x0)
endfunction




newton_basis (f, n)