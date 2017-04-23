function r = IntervaleValProprii(d, s, m)

  if m > length(d)
    m = length(d);
  endif
  [limita_inf, limita_sup] = LimiteValProprii(d, s);

  r(1) = limita_inf;
  aux = limita_sup;

  mij = (aux + r(1)) / 2;
  h = aux - mij;
  numvp = NrValProprii(d, s, mij);
  h = h / 2;

  if numvp < m
    mij = mij + h;
  else if numvp > m
    mij = mij - h;
    endif
  endif

  while numvp ~= m
    numvp = NrValProprii(d, s, mij);
    h = h / 2;
    if numvp < m
      mij = mij + h;
    else if numvp > m
      mij = mij - h;
      endif
    endif
  endwhile

  r(m + 1) = mij;

  for k = [m - 1: -1: 1]
    mij = (r(k + 2) + r(1)) / 2;
    h = r(k + 2) - mij;
    numvp = NrValProprii(d, s, mij);
    h = h / 2;

    if numvp < k
      mij = mij + h;
    else if numvp > k
      mij = mij - h;
      endif
    endif

    while numvp ~= k
      numvp = NrValProprii(d, s, mij);
      h = h / 2;
      if numvp < k
        mij = mij + h;
      else if numvp > k
        mij = mij - h;
        endif
      endif
    endwhile

    r(k + 1) = mij;
  endfor



endfunction
