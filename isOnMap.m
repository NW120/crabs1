function inBounds = isOnMap(x,y,width,height)
  if ( x > width || y > height || x < 0 || y < 0)
    inBounds = false;
  else
    inBounds = true;
  endif
  endfunction
