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
xCapt = 150;
yCapt = 1000;
thetaCapt = 0;
sizeCapt = 50;

% Draw the captain and initialize graphics handles
%*********************************************************
captGraphics = drawCapt(xCapt, yCapt, thetaCapt, sizeCapt);
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
%moveCapt(cmd);

%draw new captain
captGraphics = drawCapt(xCapt, yCapt, thetaCapt, sizeCapt);

endif

endwhile

%closeall
endfunction
