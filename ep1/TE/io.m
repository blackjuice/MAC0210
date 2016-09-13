# comments

function io ()
    a = dlmread ('vetor.txt', ' ', 0, 0);
    l = length(a);

    for (i = 1:l)
	printf("%d ", a(i));
    endfor
    printf("\n");
endfunction

