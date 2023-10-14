function crab = getCrab(crabSize)
  % body
  p1 = [0.5 * crabSize; crabSize; 1];
  p2 = [-0.5 * crabSize; crabSize; 1];
  p3 = [-0.5 * crabSize; -crabSize; 1];
  p4 = [0.5 * crabSize; -crabSize; 1];

  % arms
  p5 = [1.5*crabSize; 0.5*crabSize; 1];
  p6 = [1.5*crabSize; -0.5*crabSize; 1];

  % right leg
  p7 = [0; 1.25*crabSize; 1];
  p8 = [-crabSize; 1.5*crabSize; 1];


  % left leg
  p9 = [0; -1.25*crabSize; 1];
  p10 = [-crabSize; -1.5*crabSize; 1];

  % right leg 2
  p11 = [-0.50*crabSize; 1.25*crabSize; 1];
  p12 = [-1.5*crabSize; 1.5*crabSize; 1];


  % left leg 2
  p13 = [-0.50*crabSize; -1.25*crabSize; 1];
  p14 = [-1.5*crabSize; -1.5*crabSize; 1];


  crab=[p1,p2,p3,p4,p5,p6,p7,p8,p9,p10,p11,p12,p13,p14];

  endfunction

