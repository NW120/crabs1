# crabs1

crabs: void -> void <br>
Purpose: to run every other program for the goal of rendering and proscessing the entire game. First it draws the map and then it draws the captain in the correct position. <br>
Dependencies: every other program (only calls drawCapt and drawMap) <br>
call: crabs() <br>
Side effects: none :3 <br>

drawCapt: int, int, int, int -> list of ints <br>
Purpose: To render the captain correctly, first by calling getCapt to get the correct capt points, then it multiplies capt's points by code which moves and rotates the captain, then it draws lines between all the captain's points to draw him in the correct shape. <br>
Dependencies: getCapt(), getRotation(), getTranslation() <br>
call: drawCapt(capt x position, capt y position, capt direction, capt size) -> returns list of the graphics that make up the captain <br>
Side effects: this draws the entire captain to the screen <br>

drawLine: point(x, y), point(x, y), color -> handle <br>
Purpose: this takes in two points, and outputs a line between them <br>
Dependencies: nothing <br>
call: drawLine((1,1), (1,1) 'k') <br>
Side effects: It outputs a line to the screen which connects the points inputted <br>

drawMap: string -> int, int <br>
Purpose: this takes the image name inputted and returns the size of the image as ints. <br>
Dependencies: none <br>
call: drawMap("BGImage"); <br>
Side effects: It creates the "arena" of the background image with the title at the top <br>

getCapt: int -> matrix <br>
Purpose: Returns the points that make up the captain, scaled to whatever multiple is inputted <br>
Dependencies: none <br>
call: getCapt(50); <br>
Side effects: none <br>

getCapt: int -> matrix <br>
Purpose: Returns the points that make up the crab, scaled to whatever multiple is inputted <br>
Dependencies: none <br>
call: getCrab(50); <br>
Side effects: none <br>

getTranslation: number, number -> matrix <br>
Purpose: Number1 and Number2 represent the displacement (in x and y, respectively) to shift a shape from the origin. <br>
getTranslation uses these numbers to create a 3X3 matrix that will translate an object stored as a 3XN matrix when it multiplies the object matrix. <br>
Dependencies: none <br>
call: T = getTranslation(4, 5) -> [1, 0, 4; 0, 1, 5; 0, 0, 1] <br>
Side effects: none <br>

getRotation: int -> matrix <br>
Purpose: the int is the angle a matrix should be rotated by around the origin, while ensuring the scale stays the same. <br>
Dependencies: none <br>
call: getRotation(rotation angle) -> [cos(rotation angle), -sin(rotation angle), 0; sin(rotation angle), cos(rotation angle), 0; 0, 0, 1]; <br>
Side effects: none <br>

isOnMap: int, int, int, int -> boolean <br>
Purpose: if the x position would be bigger than the horizontal border or the y position would be bigger than the vertical border or either value would be less than zero, then it returns false, otherwise it returns true <br>
Dependencies: none <br>
Call: isOnMap(100, 200, 2600, 4000) -> true <br>
Side effects: none <br>

moveCapt: char, int, int, int, int, int -> int, int, int <br>
Purpose: this function looks at the keyboard key input and returns the updated position which takes this input into account <br>
Dependencies: isOnMap() <br>
Call: moveCapt('w', 100, 200, 2600, 4000, 4pi/6) -> 150, 150, 4pi/6 <br>
Side effects: none <br>

moveCrab: char, int, int, int, int, int -> int, int, int <br>
Purpose: this function looks at the keyboard key input and returns the updated position which takes this input into account <br>
Dependencies: isOnMap() <br>
Call: moveCrab('j', 100, 200, 2600, 4000, 4pi/6) -> 150, 150, 4pi/6 <br>
Side effects: none <br>

