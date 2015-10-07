function [ output ] = makescube( input )
%this function makes the cube image contain black and white outlines

input=input(1:2:end,1:2:end,:);
for row=1:120
    for col=1:120
        if input(row,col,1)<60&&input(row,col,2)<60&&input(row,col,3)<60 %this turns low color values into black
            input(row,col,1)=0;
            input(row,col,2)=0;
            input(row,col,3)=0;
        end
    end
end

for row=1:120
    for col=1:120
        if input(row,col,1)>0||input(row,col,2)>0||input(row,col,3)>0 %this changes the color value into white
            input(row,col,1)=255;
            input(row,col,2)=255;
            input(row,col,3)=255;
        end
    end
end
output=input;
end

