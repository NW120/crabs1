function sharkGraphics = drawShark(xShark, yShark, thetaShark, sizeShark)

  shark = getShark(sizeShark);

  R = getRotation(thetaShark);
  shark = R*shark;

  T = getTranslation(xShark, yShark);
  shark = T*shark;

  pt1=shark( : , 1);
  pt2=shark( : , 2);
  pt3=shark( : , 3);
  pt4=shark( : , 4);
  pt5=shark( : , 5);
  pt6=shark( : , 6);
  pt7=shark( : , 7);
  pt8=shark( : , 8);

  %front
  sharkGraphics(1) = drawLine(pt1 , pt2 , "b");

  %top half
  sharkGraphics(2) = drawLine(pt1 , pt3 , "b");
  sharkGraphics(3) = drawLine(pt3 , pt5 , "b");
  sharkGraphics(4) = drawLine(pt5 , pt7 , "b");

  %Bottom half
  sharkGraphics(5) = drawLine(pt2 , pt4 , "b");
  sharkGraphics(6) = drawLine(pt4 , pt6 , "b");
  sharkGraphics(7) = drawLine(pt6 , pt8 , "b");

  %back
  sharkGraphics(8) = drawLine(pt7 , pt8 , "b");


  endfunction

