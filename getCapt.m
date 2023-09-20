function capt = getCapt(captSize)
  pt1 = [2*captSize; captSize; 1]; % left shoulder
  pt2 = [-captSize; captSize; 1]; % left hip
  pt3 = [-3*captSize;captSize;1]; % left foot
  pt4 = [-3*captSize;-captSize;1]; % right foot
  pt5 = [-captSize; -captSize; 1]; %right hip
  pt6 = [2*captSize; -captSize; 1]; %right shoulder
  pt7 = [2*captSize; -0.5*captSize; 1]; %right neck
  pt8 = [3*captSize; -0.5*captSize; 1]; % right head
  pt9 = [3*captSize; 0.5*captSize; 1]; %left head
  pt10 = [2*captSize; 0.5*captSize; 1]; %left neck
  pt11 = [0; 2*captSize; 1]; %left hand
  pt12 = [0; -2*captSize; 1]; %right hand
  pt13 = [-2*captSize; -2*captSize; 1]; %spear bottom
  pt14 = [2*captSize; -2*captSize; 1]; %spear top
  capt=[pt1,pt2,pt3,pt4,pt5,pt6,pt7,pt8,pt9, pt10, pt11, pt12,pt13, pt14];

  endfunction
