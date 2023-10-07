function [xCapt, yCapt, thetaCapt] = moveCapt (cmd, x, y, width, height, theta)

  dTheta = pi/6;
  dStep = 50;


  if ( cmd == "w")
    xTemp = x + (cos(theta) * dStep);
    yTemp = y + (sin(theta) * dStep);
    thetaCapt = theta;
    if(isOnMap(xTemp, yTemp, width, height))
      xCapt = xTemp;
      yCapt = yTemp;
    else
      xCapt = x;
      yCapt = y;
    endif


  elseif(cmd == "a")
    thetaCapt = theta - dTheta;
    xCapt=x;
    yCapt=y;


  elseif(cmd == "d")
    thetaCapt = theta + dTheta;
    xCapt=x;
    yCapt=y;

  else
    xCapt=x;
    yCapt=y;
    thetaCapt=theta;

  endif


endfunction
