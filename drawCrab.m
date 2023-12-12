function [crabGraphics, xNet, yNet] = drawCrab(xCrab, yCrab, thetaCrab, sizeCrab)



  crab = getCrab(sizeCrab);


  R = getRotation(thetaCrab);
  crab = R*crab;

  T = getTranslation(xCrab, yCrab);
  crab = T*crab;


  pt1=crab( : , 1);
  pt2=crab( : , 2);
  pt3=crab( : , 3);
  pt4=crab( : , 4);
  pt5=crab( : , 5);
  pt6=crab( : , 6);
  pt7=crab( : , 7);
  pt8=crab( : , 8);
  pt9=crab( : , 9);
  pt10=crab( : , 10);
  pt11=crab( : , 11);
  pt12=crab( : , 12);
  pt13=crab( : , 13);
  pt14=crab( : , 14);

crabGraphics(1) = drawLine(pt1 , pt2 , "r");
crabGraphics(2) = drawLine(pt2 , pt3 , "r");
crabGraphics(3) = drawLine(pt3 , pt4 , "r");
crabGraphics(4) = drawLine(pt4 , pt1 , "r");

crabGraphics(5) = drawLine(pt1 , pt5 , "r");
crabGraphics(6) = drawLine(pt4 , pt6 , "r");

crabGraphics(7) = drawLine(pt2 , pt7 , "r");
crabGraphics(8) = drawLine(pt7 , pt8 , "r");

crabGraphics(9) = drawLine(pt3 , pt9 , "r");
crabGraphics(10) = drawLine(pt9 , pt10 , "r");

crabGraphics(11) = drawLine(pt2 , pt11 , "r");
crabGraphics(12) = drawLine(pt11 , pt12 , "r");

crabGraphics(13) = drawLine(pt3 , pt13 , "r");
crabGraphics(14) = drawLine(pt13 , pt14 , "r");





  endfunction
