% written by nate weinstein
% :3
% test test test test test test test
% testy2
function crabs ()
% Crabs is a kids computer game where a fisherman, called the captain,
% hunts for a very clever and powerful crab.


% Draw the game map and initialize map dimensions.

[mapHeight , mapWidth] = drawMap( "BGImage.png" );


% Initialize captain location, heading and size
xCapt = 1000;
yCapt = 1000;
thetaCapt = -pi/2;
sizeCapt = 25;

% Initialize crab location, heading and size
xCrab = 1000;
yCrab = 500;
thetaCrab = -pi/2;
sizeCrab = 25;


yShark = rand * mapHeight;
thetaShark = 0;
sizeShark = 25;
temp = rand;
sharkDir = 0;
if (temp < 0.5)
    sharkDir = 0;
    xShark = -50;
  else
    sharkDir = 1;
    xShark = mapWidth + 50;
  endif

% Draw the captain and initialize graphics handles
%*********************************************************
captGraphics = drawCapt(xCapt, yCapt, thetaCapt, sizeCapt);
crabGraphics = drawCrab(xCrab, yCrab, thetaCrab, sizeCrab);
sharkGraphics = drawShark(xShark, yShark, thetaShark, sizeShark);
%*******************************************************

cmd="null";

while(1)

  cmd = kbhit(1);
  if (cmd == 'q')
    break
  endif

  for i=1:length(sharkGraphics)
      delete(sharkGraphics(i));
    endfor


% move shark
    %disp("before: "),disp(sharkDir)
    [xShark, yShark, thetaShark, sharkDir] = moveShark(xShark, yShark, mapWidth, mapHeight, thetaShark, sharkDir);
    %disp("after:"), disp(sharkDir)

%draw new shark
    sharkGraphics = drawShark(xShark, yShark, thetaShark, sizeShark);

  if(cmd=="w" ||  cmd == "a" ||  cmd == "d")

% erase old shark
    for i=1:length(captGraphics)
      delete(captGraphics(i));
    endfor


% move captain
    [xCapt, yCapt, thetaCapt] = moveCapt(cmd, xCapt, yCapt, mapWidth, mapHeight, thetaCapt);

%draw new captain
    captGraphics = drawCapt(xCapt, yCapt, thetaCapt, sizeCapt);

endif

  if(cmd=="u" ||  cmd == "j" ||  cmd == "l" ||  cmd == "k" ||  cmd == "o")

% erase old crab
    for i=1:length(crabGraphics)
      delete(crabGraphics(i));
    endfor

% move crab
    [xCrab, yCrab, thetaCrab] = moveCrab(cmd, xCrab, yCrab, mapWidth, mapHeight, thetaCrab);

%draw new crab
    crabGraphics = drawCrab(xCrab, yCrab, thetaCrab, sizeCrab);

  endif
  fflush(stdout);
  pause(.3)

endwhile

%closeall
endfunction
