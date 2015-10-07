%performs the matrix operations required to execute a frontleft side CW
%rotation
switch (turnstop)
    case 'y'
        pause;
    otherwise
end
blankbottomright(3:122,65:184,:)=A;
cubeimage;
pause(tturn/4);
blankbottomright(3:122,65:184,:)=B;
cubeimage;
pause(tturn/4);
cprintf([1,0,0],'rotate red CW (right)\n');
topdouble=top;
for i=1:3
frontleft(:,:,i)=rot90(rot90(rot90(frontleft(:,:,i))));
end
top(3,1,:)=backleft(3,3,:);
top(3,2,:)=backleft(2,3,:);
top(3,3,:)=backleft(1,3,:);
backleft(1,3,:)=bottom(3,3,:);
backleft(2,3,:)=bottom(3,2,:);
backleft(3,3,:)=bottom(3,1,:);
bottom(3,1,:)=frontright(1,1,:);
bottom(3,2,:)=frontright(2,1,:);
bottom(3,3,:)=frontright(3,1,:);
frontright(1,1,:)=topdouble(3,1,:);
frontright(2,1,:)=topdouble(3,2,:);
frontright(3,1,:)=topdouble(3,3,:);
blankbottomright(3:122,65:184,:)=C;
cubeimage;
pause(tturn/4);
blankbottomright(3:122,65:184,:)=A;
cubeimage;
pause(tturn/4);
turns=turns+1;
