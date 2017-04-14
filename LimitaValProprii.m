function [limtia_inf, limita_sup] = LimiteValProprii(d, s)

n = length(d);

t(1) = abs(s(1));
t(n) = abs(s(n - 1));

for i = 2: n - 1
  t(i) = abs(s(i - 1)) + abs(s(i));
endfor

%limita_inf = min(d - t);
%limita_sup = max(d + t);

enfunction
