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
  pt9=shark( : , 9);
  pt10=shark( : , 10);
  pt11=shark( : , 11);
  pt12=shark( : , 12);
  pt13=shark( : , 13);
  pt14=shark( : , 14);



  %front
  sharkGraphics(1) = drawLine(pt1 , pt2 , "b");

  %top half
  sharkGraphics(2) = drawLine(pt1 , pt3 , "b");
  sharkGraphics(3) = drawLine(pt3 , pt5 , "b");
  sharkGraphics(4) = drawLine(pt5 , pt7 , "b");
  sharkGraphics(5) = drawLine(pt7 , pt9 , "b");
  sharkGraphics(6) = drawLine(pt9 , pt11 , "b");
  sharkGraphics(7) = drawLine(pt11 , pt13 , "b");


  %Bottom half
  sharkGraphics(8) = drawLine(pt2 , pt4 , "b");
  sharkGraphics(9) = drawLine(pt4 , pt6 , "b");
  sharkGraphics(10) = drawLine(pt6 , pt8 , "b");
  sharkGraphics(11) = drawLine(pt8 , pt10 , "b");
  sharkGraphics(12) = drawLine(pt10 , pt12 , "b");
  sharkGraphics(13) = drawLine(pt12 , pt14 , "b");



  %back
  sharkGraphics(14) = drawLine(pt13 , pt14 , "b");


  endfunction

