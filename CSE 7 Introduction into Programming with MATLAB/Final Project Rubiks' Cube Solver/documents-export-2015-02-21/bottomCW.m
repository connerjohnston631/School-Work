%performs the matrix operations required to execute a bottom side CW
%rotation
switch (turnstop)
    case 'y'
        pause;
    otherwise
end
blankbottomright(3:122,65:184,:)=Avflip;
cubeimage;
pause(tturn/4);
blankbottomright(3:122,65:184,:)=Dhvflip;
cubeimage;
pause(tturn/4);
cprintf([.75,.75,0],'rotate yellow CW (right)\n');
frontleftdouble=frontleft;
for i=1:3
bottom(:,:,i)=rot90(rot90(rot90(bottom(:,:,i))));
end
frontleft(3,1,:)=backleft(3,1,:);
frontleft(3,2,:)=backleft(3,2,:);
frontleft(3,3,:)=backleft(3,3,:);
backleft(3,1,:)=backright(3,1,:);
backleft(3,2,:)=backright(3,2,:);
backleft(3,3,:)=backright(3,3,:);
backright(3,1,:)=frontright(3,1,:);
backright(3,2,:)=frontright(3,2,:);
backright(3,3,:)=frontright(3,3,:);
frontright(3,1,:)=frontleftdouble(3,1,:);
frontright(3,2,:)=frontleftdouble(3,2,:);
frontright(3,3,:)=frontleftdouble(3,3,:);
blankbottomright(3:122,65:184,:)=Dvflip;
cubeimage;
pause(tturn/4);
blankbottomright(3:122,65:184,:)=Avflip;
cubeimage;
pause(tturn/4);
turns=turns+1;