function R = getRotation(rotAngle)
  R=[cos(rotAngle), -sin(rotAngle), 0; sin(rotAngle), cos(rotAngle), 0; 0, 0, 1];
  endfunction
