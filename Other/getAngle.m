function theta = getAngle (xNet, yNet, xCrab, yCrab)


  %find the angle of the net relative to the crab
  xDanger = xNet - xCrab;
  yDanger = yNet - yCrab;
  
  if( xDanger == 0 || yDanger == 0) % on axis
  
    if(xDanger == 0 && yDanger == 0) %if at origin
      theta = 0;
    elseif(xDanger == 0 && yDanger !=0) %if on yaxis
        if(yDanger > O)
          theta = pi/2;
        else
          theta = 3 * pi/2;
        endif
        
    else(xDanger !=0 && yDanger == 0) %if on xasis
        if(xDanger > 0)
          theta = 0;
          else
          theta = pi;
        endif
    endif
  
  
  else %off axis
   alpha = atan(abs(yDanger/xDanger));
   
   if( xDanger > 0 && yDanger > 0) %first quad
    theta = alpha;
   elseif(xDanger < 0 && yDanger > 0)
    theta = pi - alpha;
   elseif (xDanger < 0 && yDanger < 0)
    theta = pi + alpha;
   else 
    theta = 2*pi-alpha;
   endif
   
  endif




endfunction