function crabs ()
% Crabs is a kids computer game where a fisherman, called the captain,
% hunts for a very clever and powerful crab.


% Draw the game map and initialize map dimensions.

[mapHeight , mapWidth] = drawMap( "BGImage.png" );


% Initialize captain location, heading and size
xCapt = 1000;
yCapt = 500;
thetaCapt = -pi/2;
sizeCapt = 200;

% Draw the captain and initialize graphics handles
%*********************************************************
drawCapt(xCapt, yCapt, thetaCapt, sizeCapt);
%*******************************************************

endfunction
