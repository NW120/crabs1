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

% Draw the captain and initialize graphics handles
%*********************************************************
captGraphics = drawCapt(xCapt, yCapt, thetaCapt, sizeCapt);
crabGraphics = drawCrab(xCrab, yCrab, thetaCrab, sizeCrab);
%*******************************************************

cmd="null";

while(cmd != "q")
  cmd = kbhit();

  if(cmd=="w" ||  cmd == "a" ||  cmd == "d")

% erase old captain
    for i=1:length(captGraphics)
      set(captGraphics(i),'Visible','off');
    endfor


% move captain
    [xCapt, yCapt, thetaCapt] = moveCapt(cmd, xCapt, yCapt, mapWidth, mapHeight, thetaCapt);

%draw new captain
    captGraphics = drawCapt(xCapt, yCapt, thetaCapt, sizeCapt);

endif

  if(cmd=="i" ||  cmd == "j" ||  cmd == "l" ||  cmd == "k" ||  cmd == ",")

% erase old captain
    for i=1:length(crabGraphics)
      set(crabGraphics(i),'Visible','off');
    endfor


% move captain
    [xCrab, yCrab, thetaCrab] = moveCrab(cmd, xCrab, yCrab, mapWidth, mapHeight, thetaCrab);

%draw new captain
    crabGraphics = drawCrab(xCrab, yCrab, thetaCrab, sizeCrab);

  endif

endwhile

%closeall
endfunction
