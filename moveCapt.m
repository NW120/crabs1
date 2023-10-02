function [xCapt, yCapt, thetaCapt] = moveCapt (cmd, x, y, theta)

  dTheta = pi/6;

  if ( cmd == "w")
    xCapt = x +


  endif

  if(cmd == "a")
    theta = theta - dTheta;


  endif

  if(cmd == "d")
    theta = theta + dTheta;

  endif


endfunction
