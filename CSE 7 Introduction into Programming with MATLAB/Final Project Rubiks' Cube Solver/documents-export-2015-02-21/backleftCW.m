%performs the matrix operations required to execute a backleft side CW
%rotation
switch (turnstop)
    case 'y'
        pause;
    otherwise
end
blankbottomright(3:122,65:184,:)=Avflip;
cubeimage;
pause(tturn/4);
blankbottomright(3:122,65:184,:)=Bhvflip;
cubeimage;
pause(tturn/4);
cprintf([0,.75,0],'rotate green CW (right)\n');
topdouble=top;
for i=1:3
backleft(:,:,i)=rot90(rot90(rot90(backleft(:,:,i))));
end
top(1,1,:)=backright(3,3,:);
top(2,1,:)=backright(2,3,:);
top(3,1,:)=backright(1,3,:);
backright(1,3,:)=bottom(1,3,:);
backright(2,3,:)=bottom(2,3,:);
backright(3,3,:)=bottom(3,3,:);
bottom(1,3,:)=frontleft(3,1,:);
bottom(2,3,:)=frontleft(2,1,:);
bottom(3,3,:)=frontleft(1,1,:);
frontleft(1,1,:)=topdouble(1,1,:);
frontleft(2,1,:)=topdouble(2,1,:);
frontleft(3,1,:)=topdouble(3,1,:);
blankbottomright(3:122,65:184,:)=Chvflip;
cubeimage;
pause(tturn/4);
blankbottomright(3:122,65:184,:)=Avflip;
cubeimage;
pause(tturn/4);
turns=turns+1;
