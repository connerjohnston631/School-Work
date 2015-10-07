%performs the matrix operations required to execute a frontright side CCW
%rotation
switch (turnstop)
    case 'y'
        pause;
    otherwise
end
blankbottomright(3:122,65:184,:)=A;
cubeimage;
pause(tturn/4);
blankbottomright(3:122,65:184,:)=Bhflip;
cubeimage;
pause(tturn/4);
cprintf([0,0,1],'rotate blue CCW(left)\n');
topdouble=top;
for i=1:3
frontright(:,:,i)=rot90(frontright(:,:,i));    
end
top(1,3,:)=backright(3,1,:);
top(2,3,:)=backright(2,1,:);
top(3,3,:)=backright(1,1,:);
backright(1,1,:)=bottom(1,1,:);
backright(2,1,:)=bottom(2,1,:);
backright(3,1,:)=bottom(3,1,:);
bottom(1,1,:)=frontleft(3,3,:);
bottom(2,1,:)=frontleft(2,3,:);
bottom(3,1,:)=frontleft(1,3,:);
frontleft(1,3,:)=topdouble(1,3,:);
frontleft(2,3,:)=topdouble(2,3,:);
frontleft(3,3,:)=topdouble(3,3,:);
blankbottomright(3:122,65:184,:)=Chflip;
cubeimage;
pause(tturn/4);
blankbottomright(3:122,65:184,:)=A;
cubeimage;
pause(tturn/4);
turns=turns+1;
