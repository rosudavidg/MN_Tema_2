function [limita_inf, limita_sup] = LimiteValProprii(d, s)

n = length(d);

t(1) = abs(s(1));
t(n) = abs(s(n - 1));

for i = 2: n - 1
  t(i) = abs(s(i - 1)) + abs(s(i));
endfor

for i = 1:n
  d_min(i) = d(i) - t(i);
  d_max(i) = d(i) + t(i);
endfor

limita_inf = min(d_min);
limita_sup = max(d_max);
endfunction
