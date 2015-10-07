function [] = SolveCube()
%THIS PROGRAM TAKES THE INPUTS OF RUBIK'S CUBE SIDES AND GIVES TURN-BY TURN
%DIRECTIONS TO SOLVE IT.

tturn=.1;
instructions=input('would you like instructions? (y/n, use single quotes)');
turnstop=input('stop between every turn? (y/n)');

display('LOADING...');
%this section assigns letter variables into color values.
display('setting color values w,r,b,g,o,y...');
%sets white
w=uint8(255*ones(1,1,3));
%sets red
r=uint8(zeros(1,1,3));
r(:,:,1)=255;
%sets blue
b=uint8(zeros(1,1,3));
b(:,:,3)=255;
%sets green
g=uint8(zeros(1,1,3));
g(:,:,2)=255;
%sets orange
o=r;
o(:,:,2)=140;
%sets yellow
y=r+g;
%sets grey
gr=uint8(100*ones(1,1,3));
%takes input images and turns them into images for the display
display('loading and generating images...')
load('A.mat');
load('B.mat');
load('C.mat');
load('D.mat');
orgimg=[A,B,C,D];
image(orgimg);
pause(1);

A=makescube(A);
B=makescube(B);
C=makescube(C);
D=makescube(D);

newimg=[A,B,C,D];
image(newimg);
pause(1);

Bhflip=imagefliph(B);
Chflip=imagefliph(C);
Dhflip=imagefliph(D);

hflip=[A,Bhflip,Chflip,Dhflip];
img=[newimg;hflip];
image(img);
pause(1);

Avflip=imageflipv(A);
Bvflip=imageflipv(B);
Cvflip=imageflipv(C);
Dvflip=imageflipv(D);

vflip=[Avflip,Bvflip,Cvflip,Dvflip];
img=[newimg;hflip;vflip];
image(img);
pause(1);

Bhvflip=imageflipv(Bhflip);
Chvflip=imageflipv(Chflip);
Dhvflip=imageflipv(Dhflip);

hvflip=[Avflip,Bhvflip,Chvflip,Dhvflip];
img=[newimg;hflip;vflip;hvflip];
image(img);
pause(1);

%show cube rotation simulation
cuberotationsim( A,B,C,D,Bhflip,Chflip,Dhflip,Avflip,Bvflip,Cvflip,Dvflip,Bhvflip,Chvflip,Dhvflip );

%set "canvasses" blank, to be used for displays later in the cubeimage
blanktopright=uint8(ones(124,248,3)*255);
blankbottomright=uint8(ones(124,248,3)*255);

%sets a turn counter that has 1 added with each turn script
display('reset counter...')
turns=0;
%instructions:
switch (instructions)
    case ('y')
        display('OK. So here is how to use this program');
        display('...');
        pause(2);
        display('arrange your windows so that you can see');
        display('both the command window and the figure');
        display('...');
        pause(2);
        display('press space when ready to continue');
        display('...');
        display('...');
        pause;
        display('soon you will be told to input the sides of your mixed up Rubik''s cube.');
        display('...');
        pause(2);
        display('you will see this:');
        display('...');
        pause(2);
        display('top face (white center, row 1 borders orange)');
        display('...');
        pause(2);
        display('if your cube looks like this (see figure)...');
        display('...');
        image(imread('photo.jpg'));
        pause(2);
        display('then for that prompt, type in this: [y,r,w;w,w,o;g,y,w]');
        pause(2);
        display('use matrix notation, bounding with brackets,');
        pause(2);
        display('separating row elements by commas,'); 
        pause(2);
        display('and entire rows by semi-colons;');
        pause(2);
        display('**remember row 1 borders orange-- the orange centered side');
        display('...');
        pause(2);
        display('use w for white');
        display('r for red');
        display('b for blue');
        display('g for green');
        display('o for orange');
        display('y for yellow');
        display('...');
        pause(2);
        display('if you get it, press space to continue');
        display('...');
        display('...');
        pause;
        display('when the turns are read off in the command window,');
        pause(2);
        display('the color refers to the center tile of that side');
        display('...');
        pause(2);
        display('so, "rotate white CCW (left)" means');
        display('...');
        pause(2);
        display('rotate the side with the white center');
        display('counter-clockwise');
        display('...');
        pause(2);
        display('...');
        display('...');
    case ('n')
    otherwise
end
display('press space when ready to start');
pause;

%sets all sides to grey before they are entered in
top=[gr,gr,gr;gr,gr,gr;gr,gr,gr];
frontleft=[gr,gr,gr;gr,gr,gr;gr,gr,gr];
frontright=[gr,gr,gr;gr,gr,gr;gr,gr,gr];
backleft=[gr,gr,gr;gr,gr,gr;gr,gr,gr];
backright=[gr,gr,gr;gr,gr,gr;gr,gr,gr];
bottom=[gr,gr,gr;gr,gr,gr;gr,gr,gr];
cubeimage;

%prompts to enter in matrices of sides
top=input('white centered side, row 1 borders orange-centered side');
%checks to make sure that it in fact is the white centered side
if top(2,2,1)~=w(:,:,1)&&top(2,2,2)~=w(:,:,2)&&top(2,2,3)~=w(:,:,3)
    error ('wrong side; enter side with WHITE center')
end
cubeimage;
frontleft=input('red centered side, row 1 borders white');
if frontleft(2,2,1)~=r(:,:,1)&&frontleft(2,2,2)~=r(:,:,2)&&frontleft(2,2,3)~=r(:,:,3)
    error ('wrong side; enter side with RED center')
end
cubeimage;
frontright=input('blue centered side, row 1 borders white');
if frontright(2,2,1)~=b(:,:,1)&&frontright(2,2,2)~=b(:,:,2)&&frontright(2,2,3)~=b(:,:,3)
    error ('wrong side; enter side with BLUE center')
end
cubeimage;
backleft=input('green centered side, row 1 borders white');
if backleft(2,2,1)~=g(:,:,1)&&backleft(2,2,2)~=g(:,:,2)&&backleft(2,2,3)~=g(:,:,3)
    error ('wrong side; enter side with GREEN center')
end
cubeimage;
backright=input('orange centered side, row 1 borders white');
if backright(2,2,1)~=o(:,:,1)&&backright(2,2,2)~=o(:,:,2)&&backright(2,2,3)~=o(:,:,3)
    error ('wrong side; enter side with ORANGE center')
end
cubeimage;
bottom=input('yellow centered side, row 1 borders orange');
if bottom(2,2,1)~=y(:,:,1)&&bottom(2,2,2)~=y(:,:,2)&&bottom(2,2,3)~=y(:,:,3)
    error ('wrong side; enter side with YELLOW center')
end
cubeimage;
display('check image and press the space bar when ready');
pause;

%start solving cube
%solve white cross on top
display('SOLVE WHITE-RED EDGE');
solvewhiterededge;
switch (turnstop)
    case 'y'
        pause;
    otherwise        
end
display('SOLVE WHITE-BLUE EDGE');
solvewhiteblueedge;
switch (turnstop)
    case 'y'
        pause;
    otherwise
end
display('SOLVE WHITE-GREEN EDGE');
solvewhitegreenedge;
switch (turnstop)
    case 'y'
        pause;
    otherwise
end
display('SOLVE WHITE-ORANGE EDGE');
solvewhiteorangeedge;
%solve white corners
switch (turnstop)
    case 'y'
        pause;
    otherwise
end
display('SOLVE WHITE-GREEN-RED CORNER');
solvewhitegreenredcorner;
switch (turnstop)
    case 'y'
        pause;
    otherwise
end
display('SOLVE WHITE-RED-BLUE CORNER');
solvewhiteredbluecorner;
switch (turnstop)
    case 'y'
        pause;
    otherwise
end
display('SOLVE WHITE-BLUE-ORANGE CORNER');
solvewhiteblueorangecorner;
switch (turnstop)
    case 'y'
        pause;
    otherwise
end
display('SOLVE WHITE-ORANGE-GREEN CORNER');
solvewhiteorangegreencorner;
%solve second layer
switch (turnstop)
    case 'y'
        pause;
    otherwise
end
display('SOLVE RED-BLUE EDGE');
solveredblueedge;
switch (turnstop)
    case 'y'
        pause;
    otherwise
end
display('SOLVE BLUE-ORANGE EDGE');
solveblueorangeedge;
switch (turnstop)
    case 'y'
        pause;
    otherwise
end
display('SOLVE ORANGE-GREEN EDGE');
solveorangegreenedge;
switch (turnstop)
    case 'y'
        pause;
    otherwise
end
display('SOLVE GREEN-RED EDGE');
solvegreenrededge;
%solve bottom yellow cross
switch (turnstop)
    case 'y'
        pause;
    otherwise
end
display('FLIP YELLOW EDGES');
solveyellowcross;
switch (turnstop)
    case 'y'
        pause;
    otherwise
end
display('PLACE YELLOW EDGES');
solvealignyellowcross;
%solve bottom corners
switch (turnstop)
    case 'y'
        pause;
    otherwise
end
display('PLACE BOTTOM CORNERS');
solvebottomcornerlocation;
switch (turnstop)
    case 'y'
        pause;
    otherwise
end
display('ROTATE BOTTOM CORNERS');
solverotatebottomcorners;
display(turns);
display(':)');
end

