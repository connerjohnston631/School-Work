%performs the matrix operations required to execute a backright side CW
%rotation
switch (turnstop)
    case 'y'
        pause;
    otherwise
end
blankbottomright(3:122,65:184,:)=Avflip;
cubeimage;
pause(tturn/4);
blankbottomright(3:122,65:184,:)=Cvflip;
cubeimage;
pause(tturn/4);
cprintf([1,.5,0],'rotate orange CW (right)\n');
topdouble=top;
for i=1:3
backright(:,:,i)=rot90(rot90(rot90(backright(:,:,i))));
end
top(1,1,:)=frontright(1,3,:);
top(1,2,:)=frontright(2,3,:);
top(1,3,:)=frontright(3,3,:);
frontright(1,3,:)=bottom(1,1,:);
frontright(2,3,:)=bottom(1,2,:);
frontright(3,3,:)=bottom(1,3,:);
bottom(1,1,:)=backleft(3,1,:);
bottom(1,2,:)=backleft(2,1,:);
bottom(1,3,:)=backleft(1,1,:);
backleft(1,1,:)=topdouble(1,3,:);
backleft(2,1,:)=topdouble(1,2,:);
backleft(3,1,:)=topdouble(1,1,:);
blankbottomright(3:122,65:184,:)=Bvflip;
cubeimage;
pause(tturn/4);
blankbottomright(3:122,65:184,:)=Avflip;
cubeimage;
pause(tturn/4);
turns=turns+1;
