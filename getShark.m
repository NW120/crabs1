function shark = getShark(sharkSize)
  p1 = [-4*sharkSize; -2*sharkSize;1];
  p2 = [4*sharkSize; -2*sharkSize;1];
  p3 = [4*sharkSize; 2*sharkSize;1];
  p4 = [-4*sharkSize; 2*sharkSize;1];

shark = [p1,p2,p3,p4];

endfunction
