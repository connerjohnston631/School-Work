%performs the matrix operations required to execute a top side CW
%rotation 
switch (turnstop)
    case 'y'
        pause;
    otherwise
end
blankbottomright(3:122,65:184,:)=A;
cubeimage;
pause(tturn/4);
blankbottomright(3:122,65:184,:)=D;
cubeimage;
pause(tturn/4);
display('rotate white CW (right)');
frontleftdouble=frontleft;
for i=1:3
top(:,:,i)=rot90(rot90(rot90(top(:,:,i))));
end
frontleft(1,1,:)=frontright(1,1,:);
frontleft(1,2,:)=frontright(1,2,:);
frontleft(1,3,:)=frontright(1,3,:);
frontright(1,1,:)=backright(1,1,:);
frontright(1,2,:)=backright(1,2,:);
frontright(1,3,:)=backright(1,3,:);
backright(1,1,:)=backleft(1,1,:);
backright(1,2,:)=backleft(1,2,:);
backright(1,3,:)=backleft(1,3,:);
backleft(1,1,:)=frontleftdouble(1,1,:);
backleft(1,2,:)=frontleftdouble(1,2,:);
backleft(1,3,:)=frontleftdouble(1,3,:);
blankbottomright(3:122,65:184,:)=Dhflip;
cubeimage;
pause(tturn/4);
blankbottomright(3:122,65:184,:)=A;
cubeimage;
pause(tturn/4);
turns=turns+1;

