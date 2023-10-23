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

  sharkGraphics(1) = drawLine(pt1 , pt2 , "c");
  sharkGraphics(2) = drawLine(pt2 , pt3 , "c");
  sharkGraphics(3) = drawLine(pt3 , pt4 , "c");
  sharkGraphics(4) = drawLine(pt4 , pt1 , "c");

  endfunction

