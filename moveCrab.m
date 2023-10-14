function [xCrab, yCrab, thetaCrab] = moveCrab (cmd, x, y, width, height, theta)

  dTheta = pi/6;
  dStep = 50;


  if ( cmd == "k")
    xTemp = x - (cos(theta) * dStep);
    yTemp = y - (sin(theta) * dStep);
    thetaCrab = theta;
    if(isOnMap(xTemp, yTemp, width, height))
      xCrab = xTemp;
      yCrab = yTemp;
    else
      xCrab = x;
      yCrab = y;
    endif


  elseif(cmd == ",")
    thetaCrab = theta - dTheta;
    xCrab=x;
    yCrab=y;


  elseif(cmd == "i")
    thetaCrab = theta + dTheta;
    xCrab=x;
    yCrab=y;

  elseif ( cmd == "j")
    xTemp = x + (sin(theta) * dStep);
    yTemp = y + (cos(theta) * dStep);
    thetaCrab = theta;
    if(isOnMap(xTemp, yTemp, width, height))
      xCrab = xTemp;
      yCrab = yTemp;
    else
      xCrab = x;
      yCrab = y;
    endif

  elseif ( cmd == "l")
    xTemp = x - (sin(theta) * dStep);
    yTemp = y - (cos(theta) * dStep);
    thetaCrab = theta;
    if(isOnMap(xTemp, yTemp, width, height))
      xCrab = xTemp;
      yCrab = yTemp;
    else
      xCrab = x;
      yCrab = y;
    endif

  else
    xCrab=x;
    yCrab=y;
    thetaCrab=theta;

  endif


endfunction
