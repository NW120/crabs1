% written by nate weinstein
% :3
% test test test test test test test
% testy2
function crabs ()
% Crabs is a kids computer game where a fisherman, called the captain,
% hunts for a very clever and powerful crab.

 restart = 1;
while(restart)

%draw start screen
  level = drawStartScreen("happyimage.jpg");


  numCrabs = level;
  %int32(level/2)
  numSharks = level;


% Draw the game map and initialize map dimensions.

[mapHeight , mapWidth] = drawMap( "BGImage.png" );


% Initialize captain location, heading and size
xCapt = 1000;
yCapt = 1000;
thetaCapt = -pi/2;
sizeCapt = 25;
healthCapt = 100;

% Initialize crab location, heading and size
%xCrab = zeros(1:numCrabs);
%yCrab = zeros(1:numCrabs);
xCrab = rand(1, numCrabs)*mapWidth;
yCrab = rand(1, numCrabs)*mapHeight;
thetaCrab = ones(1, numCrabs)*(-pi/2);
sizeCrab = 25;
crabsCaught = 0;
numCrabsCaught = zeros(1:numCrabs);

allSharks = zeros(1:numSharks);
yShark = rand(1, numSharks)*mapHeight;
thetaShark = 0;
sizeShark = 30;
temp = rand;
sharkDir = zeros(1:numSharks);
xShark = zeros(1:numSharks);
thetaShark = zeros(1:numSharks);
for a=1:numSharks
  temp = rand;
  if (temp < 0.5)
      sharkDir(a) = 0;
      xShark(a) = -50;
      thetaShark(a) = 0;
    else
      sharkDir(a) = 1;
      xShark(a) = mapWidth + 50;
      thetaShark(a) = pi;
    endif
  endfor
  sharkDmg = 10;

% Draw the captain and initialize graphics handles
%*********************************************************
[captGraphics, xNet, yNet] = drawCapt(xCapt, yCapt, thetaCapt, sizeCapt);

for k=1:numCrabs
  crabGraphics(:,k) = drawCrab(xCrab(k), yCrab(k),thetaCrab(k), sizeCrab);
endfor

for b=1:numSharks
  sharkGraphics(:,b) = drawShark(xShark(b), yShark(b), thetaShark(b), sizeShark);
endfor

healthLoc = [100,100];
crabsCaughtLoc = [100,175];
healthStatus = text(healthLoc(1), healthLoc(2), strcat('Health = ', num2str(healthCapt)), 'FontSize', 14, 'Color', 'red');
crabsCaughtStatus = text(crabsCaughtLoc(1), crabsCaughtLoc(2), strcat('Crabs Caught = ', num2str(crabsCaught)), 'FontSize', 14, 'Color', 'red');

%*******************************************************

cmd="null";

while(1)

  delete(healthStatus);
  delete(crabsCaughtStatus);
  healthStatus = text(healthLoc(1), healthLoc(2), strcat('Health = ', num2str(healthCapt)), 'FontSize', 14, 'Color', 'red');
  crabsCaughtStatus = text(crabsCaughtLoc(1), crabsCaughtLoc(2), strcat('Crabs Caught = ', num2str(crabsCaught)), 'FontSize', 14, 'Color', 'red');




% move shark
  %disp("before: "),disp(sharkDir)
  %loop through the number of sharks
  disp(numSharks)
  for i=1:numSharks
    %loop through the graphic lines inside of the shark
    %disp(length(sharkGraphics(i))

    for j=1:length(sharkGraphics(:,i))
      %
      delete(sharkGraphics(i,j));
      endfor


    [xShark(i), yShark(i), thetaShark(i), sharkDir(i)] = moveShark(xShark(i), yShark(i), mapWidth, mapHeight, thetaShark(i), sharkDir(i));
  %disp("after:"), disp(sharkDir)

%draw new shark
    sharkGraphics = drawShark(xShark(i), yShark(i), thetaShark(i), sizeShark);

    if( getDist(xShark(i),yShark(i),xCapt,yCapt) < 7*sizeCapt )
      healthCapt = healthCapt - sharkDmg;
    endif
  endfor

  if(healthCapt < 0)
    break;
  endif


  cmd = kbhit(1);

  commandwindow();

  if (cmd == 'q')
    break
  endif



  if(cmd=="w" ||  cmd == "a" ||  cmd == "d")

% erase old captain
    for i=1:length(captGraphics)
      delete(captGraphics(i));
    endfor


% move captain
    [xCapt, yCapt, thetaCapt] = moveCapt(cmd, xCapt, yCapt, mapWidth, mapHeight, thetaCapt);

%draw new captain
    [captGraphics, xNet, yNet] = drawCapt(xCapt, yCapt, thetaCapt, sizeCapt);
    %disp(xNet)
    %disp(yNet)

endif

for k=1:numCrabs
  %getDist (xNet, yNet, xCrab(k), yCrab(k)) < 2*sizeCapt
  if( !numCrabsCaught(k) && getDist (xNet, yNet, xCrab(k), yCrab(k)) < 3*sizeCapt)
    crabsCaught = crabsCaught + 1;
    numCrabsCaught(k) = 1;
% erase old crab
    for i=1 : length(crabGraphics(:,k))
      delete(crabGraphics(i,k));
    endfor

% move crab
    %[xCrab(1), yCrab(1), thetaCrab] = moveCrab(cmd, xCrab(1), yCrab(1), mapWidth, mapHeight, thetaCrab);

%draw new crab
    %crabGraphics = drawCrab(xCrab(1), yCrab(1), thetaCrab, sizeCrab);
  endif
endfor


  fflush(stdout);
  pause(.3)

endwhile

  restart = drawEndScreen("happyimage.jpg", crabsCaught, numCrabs);

 endwhile

  close all
   clear

%closeall
endfunction
