function shark = getShark(sharkSize)
  % front half
  p1 = [6*sharkSize; -1*sharkSize;1];
  p2 = [6*sharkSize; 1*sharkSize;1];

  p3 = [5*sharkSize; -1.5*sharkSize;1];
  p4 = [5*sharkSize; 1.5*sharkSize;1];

  p5 = [2*sharkSize; -1.75*sharkSize;1];
  p6 = [2*sharkSize; 1.75*sharkSize;1];
  % back half
  p7 = [0; -3*sharkSize;1];
  p8 = [0; 3*sharkSize;1];

  p9 = [-1*sharkSize; -1.5*sharkSize;1];
  p10 = [-1*sharkSize; 1.5*sharkSize;1];

  p11 = [-6*sharkSize; -0.5*sharkSize;1];
  p12 = [-6*sharkSize; 0.5*sharkSize;1];

  p13 = [-8*sharkSize; -2*sharkSize;1];
  p14 = [-8*sharkSize; 2*sharkSize;1];



shark = [p1,p2,p3,p4,p5,p6,p7,p8,p9,p10,p11,p12,p13,p14];

endfunction
