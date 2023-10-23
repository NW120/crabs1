function shark = getShark(sharkSize)
  % front half
  p1 = [4*sharkSize; -2*sharkSize;1];
  p2 = [4*sharkSize; 2*sharkSize;1];
  % back half
  p3 = [0; -1.5*sharkSize;1];
  p4 = [0; 1.5*sharkSize;1];

  p5 = [-4*sharkSize; -0.5*sharkSize;1];
  p6 = [-4*sharkSize; 0.5*sharkSize;1];

  p7 = [-6*sharkSize; -3*sharkSize;1];
  p8 = [-6*sharkSize; 3*sharkSize;1];



shark = [p1,p2,p3,p4,p5,p6,p7,p8];

endfunction
