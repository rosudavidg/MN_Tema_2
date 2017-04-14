function [limtia_inf, limita_sup] = LimiteValProprii(d, s)

limita_inf = min(d - abs(s));
limita_sup = max(d + abs(s));

enfunction
