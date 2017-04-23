function vp = CalculezValProprii(d, s, m, tol)

  if m > length(d)
    m = length(d);
  endif

  r = IntervaleValProprii(d, s, m);

  for i = 1: m
      a = r(i);
      b = r(i + 1);
      nr = length(d) + 1;

    	M = 0;
    	while(((b-a)/(2^M)) > tol * 10^(-1))
    		sol = (a + b) / 2;
        f_a   = (ValoriPolinoame(d, s, a))(nr);
        f_b   = (ValoriPolinoame(d, s, b))(nr);
        f_sol = (ValoriPolinoame(d, s, sol))(nr);

    		if (f_a * f_sol <= 0)
    			b = sol;
    		elseif (f_sol * f_b < 0)
    			a = sol;
    		endif

    		M = M + 1;
    	endwhile
      
    vp(i) = sol;

  endfor

endfunction
