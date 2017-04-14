function numvp = NrValProprii(d, s, val_lambda)
  P = ValoriPolinoame(d, s, val_lambda);
  n = length(d);
  numvp = 0;

  semn(1) = 1;
  for i = 1: n
    if(P(i + 1) == 0)
      semn(i + 1) = (-1)*semn(i);
    else
      semn(i + 1) = sign(P(i + 1));
    endif
  endfor

  for i = 0: n - 1
    if (semn(i + 1) ~= semn(i + 2))
      numvp = numvp + 1;
    endif
  endfor

endfunction
