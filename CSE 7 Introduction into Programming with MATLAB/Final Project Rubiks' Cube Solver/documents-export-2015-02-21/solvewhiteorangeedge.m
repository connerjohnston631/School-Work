%finds and moves the white and orange edge piece into position
if top(1,2,1)==w(:,:,1)&&top(1,2,2)==w(:,:,2)&&top(1,2,3)==w(:,:,3)&&backright(1,2,1)==o(:,:,1)&&backright(1,2,2)==o(:,:,2)&&backright(1,2,3)==o(:,:,3)
else
        if top(1,2,1)==o(:,:,1)&&top(1,2,2)==o(:,:,2)&&top(1,2,3)==o(:,:,3)&&backright(1,2,1)==w(:,:,1)&&backright(1,2,2)==w(:,:,2)&&backright(1,2,3)==w(:,:,3)
            backrightCW;
            topCCW;
            backleftCW;
            topCW;
        elseif frontleft(2,3,1)==w(:,:,1)&&frontleft(2,3,2)==w(:,:,2)&&frontleft(2,3,3)==w(:,:,3)&&frontright(2,1,1)==o(:,:,1)&&frontright(2,1,2)==o(:,:,2)&&frontright(2,1,3)==o(:,:,3)
            topCW;            
            frontrightCW;
            topCCW;
        elseif frontleft(2,3,1)==o(:,:,1)&&frontleft(2,3,2)==o(:,:,2)&&frontleft(2,3,3)==o(:,:,3)&&frontright(2,1,1)==w(:,:,1)&&frontright(2,1,2)==w(:,:,2)&&frontright(2,1,3)==w(:,:,3)
            topCCW;
            topCCW;
            frontleftCCW;
            topCCW;
            topCCW;
        elseif frontright(2,3,1)==w(:,:,1)&&frontright(2,3,2)==w(:,:,2)&&frontright(2,3,3)==w(:,:,3)&&backright(2,1,1)==o(:,:,1)&&backright(2,1,2)==o(:,:,2)&&backright(2,1,3)==o(:,:,3)
            backrightCW;
        elseif frontright(2,3,1)==o(:,:,1)&&frontright(2,3,2)==o(:,:,2)&&frontright(2,3,3)==o(:,:,3)&&backright(2,1,1)==w(:,:,1)&&backright(2,1,2)==w(:,:,2)&&backright(2,1,3)==w(:,:,3)          
            topCW;
            frontrightCCW;
            topCCW;
        elseif backleft(2,3,1)==w(:,:,1)&&backleft(2,3,2)==w(:,:,2)&&backleft(2,3,3)==w(:,:,3)&&frontleft(2,1,1)==o(:,:,1)&&frontleft(2,1,2)==o(:,:,2)&&frontleft(2,1,3)==o(:,:,3)
            topCCW;
            topCCW;
            frontleftCW;
            topCCW;
            topCCW;
        elseif backleft(2,3,1)==o(:,:,1)&&backleft(2,3,2)==o(:,:,2)&&backleft(2,3,3)==o(:,:,3)&&frontleft(2,1,1)==w(:,:,1)&&frontleft(2,1,2)==w(:,:,2)&&frontleft(2,1,3)==w(:,:,3)
            topCCW;
            backleftCCW;
            topCW;
        elseif backright(2,3,1)==w(:,:,1)&&backright(2,3,2)==w(:,:,2)&&backright(2,3,3)==w(:,:,3)&&backleft(2,1,1)==o(:,:,1)&&backleft(2,1,2)==o(:,:,2)&&backleft(2,1,3)==o(:,:,3)
            topCCW;
            backleftCW;
            topCW;
        elseif backright(2,3,1)==o(:,:,1)&&backright(2,3,2)==o(:,:,2)&&backright(2,3,3)==o(:,:,3)&&backleft(2,1,1)==w(:,:,1)&&backleft(2,1,2)==w(:,:,2)&&backleft(2,1,3)==w(:,:,3) 
            backrightCCW;
        elseif frontleft(3,2,1)==w(:,:,1)&&frontleft(3,2,2)==w(:,:,2)&&frontleft(3,2,3)==w(:,:,3)&&bottom(3,2,1)==o(:,:,1)&&bottom(3,2,2)==o(:,:,2)&&bottom(3,2,3)==o(:,:,3)
            topCW;
            frontleftCCW;
            frontrightCW;
            frontleftCW;
            topCCW;
        elseif frontleft(3,2,1)==o(:,:,1)&&frontleft(3,2,2)==o(:,:,2)&&frontleft(3,2,3)==o(:,:,3)&&bottom(3,2,1)==w(:,:,1)&&bottom(3,2,2)==w(:,:,2)&&bottom(3,2,3)==w(:,:,3)
            topCCW;
            topCCW;
            frontleftCCW;
            frontleftCCW;
            topCCW;
            topCCW;
        elseif frontright(3,2,1)==w(:,:,1)&&frontright(3,2,2)==w(:,:,2)&&frontright(3,2,3)==w(:,:,3)&&bottom(2,1,1)==o(:,:,1)&&bottom(2,1,2)==o(:,:,2)&&bottom(2,1,3)==o(:,:,3)
            frontrightCCW;
            backrightCW;
            frontrightCW;
        elseif frontright(3,2,1)==o(:,:,1)&&frontright(3,2,2)==o(:,:,2)&&frontright(3,2,3)==o(:,:,3)&&bottom(2,1,1)==w(:,:,1)&&bottom(2,1,2)==w(:,:,2)&&bottom(2,1,3)==w(:,:,3)
            topCW;
            frontrightCCW;
            frontrightCCW;
            topCCW;
        elseif backleft(3,2,1)==w(:,:,1)&&backleft(3,2,2)==w(:,:,2)&&backleft(3,2,3)==w(:,:,3)&&bottom(2,3,1)==o(:,:,1)&&bottom(2,3,2)==o(:,:,2)&&bottom(2,3,3)==o(:,:,3)
            backleftCW;
            backrightCCW;
            backleftCCW;
        elseif backleft(3,2,1)==o(:,:,1)&&backleft(3,2,2)==o(:,:,2)&&backleft(3,2,3)==o(:,:,3)&&bottom(2,3,1)==w(:,:,1)&&bottom(2,3,2)==w(:,:,2)&&bottom(2,3,3)==w(:,:,3)
            topCCW;
            backleftCCW;
            backleftCCW;
            topCW;
        elseif backright(3,2,1)==w(:,:,1)&&backright(3,2,2)==w(:,:,2)&&backright(3,2,3)==w(:,:,3)&&bottom(1,2,1)==o(:,:,1)&&bottom(1,2,2)==o(:,:,2)&&bottom(1,2,3)==o(:,:,3)
            backrightCCW;
            topCCW;
            backleftCW;
            topCW;
        elseif backright(3,2,1)==o(:,:,1)&&backright(3,2,2)==o(:,:,2)&&backright(3,2,3)==o(:,:,3)&&bottom(1,2,1)==w(:,:,1)&&bottom(1,2,2)==w(:,:,2)&&bottom(1,2,3)==w(:,:,3)
            backrightCCW;
            backrightCCW;
        else error('white and orange edge piece not found, invalid cube')  
        end
end