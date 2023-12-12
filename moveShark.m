function [xShark, yShark, thetaShark, sharkDir] = moveShark (x, y, width, height, theta, dir)
  %initalize variables
  dStep = 40;
  dTheta = pi/64;
  %in case bro is off the edge
  temp = (rand*20)-10;
  if (or(x - 60 > width, x + 60 < 0))
    %disp("off the edge, resetting");
    temp2 = rand;
    if (temp2 < 0.5)
      %disp("shark on left going right");
      sharkDir = 0;
      xShark =  -50;
      thetaShark = 0;
    else
      %disp("shark on right going left");
      sharkDir = 1;
      xShark = width + 50;
      thetaShark = pi;
    endif
    yShark = rand*height;
    %otherwise...
  else
    %determines x movement
    if(dir == 0)
      %disp("going right");
      xShark = x + dStep;
    else
      %disp("going left");
      xShark = x - dStep;
    endif

    %randomizes the y movement
    yShark = y + temp;
    if (temp > 0)
      thetaShark = theta + dTheta;
    elseif (temp < 0)
      thetaShark = theta - dTheta;
    else
      thetaShark = theta;
    endif
    sharkDir = dir;
  endif

  endfunction
