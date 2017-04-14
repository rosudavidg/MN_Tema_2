function P = ValoriPolinoame(d, s, val_lambda)

  n = length(d);

  P(1) = 1;
  P(2) = d(1) - val_lambda;

  for i = [2: n]
    P(i + 1) = (d(i) - val_lambda) * P(i) - (s(i - 1)).^2 * P(i - 1);
    endfor

endfunction
