%start solving the bottom y cross
if bottom(1,2,1)==y(:,:,1)&&bottom(1,2,2)==y(:,:,2)&&bottom(1,2,3)==y(:,:,3)&&bottom(2,1,1)==y(:,:,1)&&bottom(2,1,2)==y(:,:,2)&&bottom(2,1,3)==y(:,:,3)&&bottom(2,3,1)==y(:,:,1)&&bottom(2,3,2)==y(:,:,2)&&bottom(2,3,3)==y(:,:,3)&&bottom(3,2,1)==y(:,:,1)&&bottom(3,2,2)==y(:,:,2)&&bottom(3,2,3)==y(:,:,3)
else
    if frontleft(3,2,1)==y(:,:,1)&&frontleft(3,2,2)==y(:,:,2)&&frontleft(3,2,3)==y(:,:,3)&&frontright(3,2,1)==y(:,:,1)&&frontright(3,2,2)==y(:,:,2)&&frontright(3,2,3)==y(:,:,3)&&backleft(3,2,1)==y(:,:,1)&&backleft(3,2,2)==y(:,:,2)&&backleft(3,2,3)==y(:,:,3)&&backright(3,2,1)==y(:,:,1)&&backright(3,2,2)==y(:,:,2)&&backright(3,2,3)==y(:,:,3) 
        frontrightCW;
        frontleftCW;
        bottomCW;
        frontleftCCW;
        bottomCCW;
        frontrightCCW;
        backleftCW;
        backrightCW;
        bottomCW;
        backrightCCW;
        bottomCCW;
        backrightCW;
        bottomCW;
        backrightCCW;
        bottomCCW;
        backleftCCW;
    elseif frontleft(3,2,1)==y(:,:,1)&&frontleft(3,2,2)==y(:,:,2)&&frontleft(3,2,3)==y(:,:,3)&&frontright(3,2,1)==y(:,:,1)&&frontright(3,2,2)==y(:,:,2)&&frontright(3,2,3)==y(:,:,3)&&bottom(1,2,1)==y(:,:,1)&&bottom(1,2,2)==y(:,:,2)&&bottom(1,2,3)==y(:,:,3)&&bottom(2,3,1)==y(:,:,1)&&bottom(2,3,2)==y(:,:,2)&&bottom(2,3,3)==y(:,:,3)
        frontrightCW;
        frontleftCW;
        bottomCW;
        frontleftCCW;
        bottomCCW;
        frontleftCW;
        bottomCW;
        frontleftCCW;
        bottomCCW;
        frontrightCCW
    elseif backright(3,2,1)==y(:,:,1)&&backright(3,2,2)==y(:,:,2)&&backright(3,2,3)==y(:,:,3)&&frontright(3,2,1)==y(:,:,1)&&frontright(3,2,2)==y(:,:,2)&&frontright(3,2,3)==y(:,:,3)&&bottom(3,2,1)==y(:,:,1)&&bottom(3,2,2)==y(:,:,2)&&bottom(3,2,3)==y(:,:,3)&&bottom(2,3,1)==y(:,:,1)&&bottom(2,3,2)==y(:,:,2)&&bottom(2,3,3)==y(:,:,3)
        bottomCCW;
        frontrightCW;
        frontleftCW;
        bottomCW;
        frontleftCCW;
        bottomCCW;
        frontleftCW;
        bottomCW;
        frontleftCCW;
        bottomCCW;
        frontrightCCW
    elseif frontleft(3,2,1)==y(:,:,1)&&frontleft(3,2,2)==y(:,:,2)&&frontleft(3,2,3)==y(:,:,3)&&backleft(3,2,1)==y(:,:,1)&&backleft(3,2,2)==y(:,:,2)&&backleft(3,2,3)==y(:,:,3)&&bottom(1,2,1)==y(:,:,1)&&bottom(1,2,2)==y(:,:,2)&&bottom(1,2,3)==y(:,:,3)&&bottom(2,1,1)==y(:,:,1)&&bottom(2,1,2)==y(:,:,2)&&bottom(2,1,3)==y(:,:,3)
        bottomCW;
        frontrightCW;
        frontleftCW;
        bottomCW;
        frontleftCCW;
        bottomCCW;
        frontleftCW;
        bottomCW;
        frontleftCCW;
        bottomCCW;
        frontrightCCW
   elseif backleft(3,2,1)==y(:,:,1)&&backleft(3,2,2)==y(:,:,2)&&backleft(3,2,3)==y(:,:,3)&&backright(3,2,1)==y(:,:,1)&&backright(3,2,2)==y(:,:,2)&&backright(3,2,3)==y(:,:,3)&&bottom(3,2,1)==y(:,:,1)&&bottom(3,2,2)==y(:,:,2)&&bottom(3,2,3)==y(:,:,3)&&bottom(2,1,1)==y(:,:,1)&&bottom(2,1,2)==y(:,:,2)&&bottom(2,1,3)==y(:,:,3)
        bottomCCW;
        bottomCCW;
        frontrightCW;
        frontleftCW;
        bottomCW;
        frontleftCCW;
        bottomCCW;
        frontleftCW;
        bottomCW;
        frontleftCCW;
        bottomCCW;
        frontrightCCW
    elseif backleft(3,2,1)==y(:,:,1)&&backleft(3,2,2)==y(:,:,2)&&backleft(3,2,3)==y(:,:,3)&&frontright(3,2,1)==y(:,:,1)&&frontright(3,2,2)==y(:,:,2)&&frontright(3,2,3)==y(:,:,3)&&bottom(1,2,1)==y(:,:,1)&&bottom(1,2,2)==y(:,:,2)&&bottom(1,2,3)==y(:,:,3)&&bottom(3,2,1)==y(:,:,1)&&bottom(3,2,2)==y(:,:,2)&&bottom(3,2,3)==y(:,:,3)
       frontrightCW;
       frontleftCW;
       bottomCW;
       frontleftCCW;
       bottomCCW;
       frontrightCCW;
   elseif backright(3,2,1)==y(:,:,1)&&backright(3,2,2)==y(:,:,2)&&backright(3,2,3)==y(:,:,3)&&frontleft(3,2,1)==y(:,:,1)&&frontleft(3,2,2)==y(:,:,2)&&frontleft(3,2,3)==y(:,:,3)&&bottom(2,3,1)==y(:,:,1)&&bottom(2,3,2)==y(:,:,2)&&bottom(2,3,3)==y(:,:,3)&&bottom(2,1,1)==y(:,:,1)&&bottom(2,1,2)==y(:,:,2)&&bottom(2,1,3)==y(:,:,3)
       bottomCCW;
       frontrightCW;
       frontleftCW;
       bottomCW;
       frontleftCCW;
       bottomCCW;
       frontrightCCW;
    else error('uneven number of yellow tiles on bottom; invalid cube')
    end 
        
end



 
