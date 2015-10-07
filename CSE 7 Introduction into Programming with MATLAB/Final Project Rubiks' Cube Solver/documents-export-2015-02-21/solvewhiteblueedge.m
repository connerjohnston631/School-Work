%put the white and blue edge piece into place
if top(2,3,1)==w(:,:,1)&&top(2,3,2)==w(:,:,2)&&top(2,3,3)==w(:,:,3)&&frontright(1,2,1)==b(:,:,1)&&frontright(1,2,2)==b(:,:,2)&&frontright(1,2,3)==b(:,:,3)
else
        if top(2,3,1)==b(:,:,1)&&top(2,3,2)==b(:,:,2)&&top(2,3,3)==b(:,:,3)&&frontright(1,2,1)==w(:,:,1)&&frontright(1,2,2)==w(:,:,2)&&frontright(1,2,3)==w(:,:,3)
            frontrightCCW;
            topCW;
            frontleftCCW;
            topCCW;
        elseif top(2,1,1)==w(:,:,1)&&top(2,1,2)==w(:,:,2)&&top(2,1,3)==w(:,:,3)&&backleft(1,2,1)==b(:,:,1)&&backleft(1,2,2)==b(:,:,2)&&backleft(1,2,3)==b(:,:,3)
            backleftCCW;
            topCCW;
            topCCW;
            backleftCW;
            topCCW;
            topCCW;
        elseif top(2,1,1)==b(:,:,1)&&top(2,1,2)==b(:,:,2)&&top(2,1,3)==b(:,:,3)&&backleft(1,2,1)==w(:,:,1)&&backleft(1,2,2)==w(:,:,2)&&backleft(1,2,3)==w(:,:,3)
            backleftCCW;
            topCCW;
            backrightCCW;
            topCW;
        elseif top(1,2,1)==w(:,:,1)&&top(1,2,2)==w(:,:,2)&&top(1,2,3)==w(:,:,3)&&backright(1,2,1)==b(:,:,1)&&backright(1,2,2)==b(:,:,2)&&backright(1,2,3)==b(:,:,3)
            backrightCCW;
            topCCW;
            backrightCW;
            topCW;
        elseif top(1,2,1)==b(:,:,1)&&top(1,2,2)==b(:,:,2)&&top(1,2,3)==b(:,:,3)&&backright(1,2,1)==w(:,:,1)&&backright(1,2,2)==w(:,:,2)&&backright(1,2,3)==w(:,:,3)
            backrightCCW;
            frontrightCCW;
        elseif frontleft(2,3,1)==w(:,:,1)&&frontleft(2,3,2)==w(:,:,2)&&frontleft(2,3,3)==w(:,:,3)&&frontright(2,1,1)==b(:,:,1)&&frontright(2,1,2)==b(:,:,2)&&frontright(2,1,3)==b(:,:,3)
            frontrightCW;          
        elseif frontleft(2,3,1)==b(:,:,1)&&frontleft(2,3,2)==b(:,:,2)&&frontleft(2,3,3)==b(:,:,3)&&frontright(2,1,1)==w(:,:,1)&&frontright(2,1,2)==w(:,:,2)&&frontright(2,1,3)==w(:,:,3)
            topCW;
            frontleftCCW;
            topCCW;
        elseif frontright(2,3,1)==w(:,:,1)&&frontright(2,3,2)==w(:,:,2)&&frontright(2,3,3)==w(:,:,3)&&backright(2,1,1)==b(:,:,1)&&backright(2,1,2)==b(:,:,2)&&backright(2,1,3)==b(:,:,3)
            topCCW;
            backrightCW;
            topCW;
        elseif frontright(2,3,1)==b(:,:,1)&&frontright(2,3,2)==b(:,:,2)&&frontright(2,3,3)==b(:,:,3)&&backright(2,1,1)==w(:,:,1)&&backright(2,1,2)==w(:,:,2)&&backright(2,1,3)==w(:,:,3)
            frontrightCCW;
        elseif backleft(2,3,1)==w(:,:,1)&&backleft(2,3,2)==w(:,:,2)&&backleft(2,3,3)==w(:,:,3)&&frontleft(2,1,1)==b(:,:,1)&&frontleft(2,1,2)==b(:,:,2)&&frontleft(2,1,3)==b(:,:,3)
            topCW;
            frontleftCW;
            topCCW;
        elseif backleft(2,3,1)==b(:,:,1)&&backleft(2,3,2)==b(:,:,2)&&backleft(2,3,3)==b(:,:,3)&&frontleft(2,1,1)==w(:,:,1)&&frontleft(2,1,2)==w(:,:,2)&&frontleft(2,1,3)==w(:,:,3)
            topCCW;
            topCCW;
            backleftCCW;
            topCCW;
            topCCW;
        elseif backright(2,3,1)==w(:,:,1)&&backright(2,3,2)==w(:,:,2)&&backright(2,3,3)==w(:,:,3)&&backleft(2,1,1)==b(:,:,1)&&backleft(2,1,2)==b(:,:,2)&&backleft(2,1,3)==b(:,:,3)
            topCCW;
            topCCW;
            backleftCW;
            topCCW;
            topCCW;
        elseif backright(2,3,1)==b(:,:,1)&&backright(2,3,2)==b(:,:,2)&&backright(2,3,3)==b(:,:,3)&&backleft(2,1,1)==w(:,:,1)&&backleft(2,1,2)==w(:,:,2)&&backleft(2,1,3)==w(:,:,3)
            topCCW;
            backrightCCW;
            topCW;
        elseif frontleft(3,2,1)==w(:,:,1)&&frontleft(3,2,2)==w(:,:,2)&&frontleft(3,2,3)==w(:,:,3)&&bottom(3,2,1)==b(:,:,1)&&bottom(3,2,2)==b(:,:,2)&&bottom(3,2,3)==b(:,:,3)
            frontleftCCW;
            frontrightCW;
            frontleftCW;
        elseif frontleft(3,2,1)==b(:,:,1)&&frontleft(3,2,2)==b(:,:,2)&&frontleft(3,2,3)==b(:,:,3)&&bottom(3,2,1)==w(:,:,1)&&bottom(3,2,2)==w(:,:,2)&&bottom(3,2,3)==w(:,:,3)
            topCW;
            frontleftCCW;
            frontleftCCW;
            topCCW;
        elseif frontright(3,2,1)==w(:,:,1)&&frontright(3,2,2)==w(:,:,2)&&frontright(3,2,3)==w(:,:,3)&&bottom(2,1,1)==b(:,:,1)&&bottom(2,1,2)==b(:,:,2)&&bottom(2,1,3)==b(:,:,3)
            frontrightCCW;
            topCCW;
            backrightCW;
            topCW;
        elseif frontright(3,2,1)==b(:,:,1)&&frontright(3,2,2)==b(:,:,2)&&frontright(3,2,3)==b(:,:,3)&&bottom(2,1,1)==w(:,:,1)&&bottom(2,1,2)==w(:,:,2)&&bottom(2,1,3)==w(:,:,3)
            frontrightCCW;
            frontrightCCW;
        elseif backleft(3,2,1)==w(:,:,1)&&backleft(3,2,2)==w(:,:,2)&&backleft(3,2,3)==w(:,:,3)&&bottom(2,3,1)==b(:,:,1)&&bottom(2,3,2)==b(:,:,2)&&bottom(2,3,3)==b(:,:,3)
            backleftCW;
            topCCW;
            backrightCCW;
            topCW;
        elseif backleft(3,2,1)==b(:,:,1)&&backleft(3,2,2)==b(:,:,2)&&backleft(3,2,3)==b(:,:,3)&&bottom(2,3,1)==w(:,:,1)&&bottom(2,3,2)==w(:,:,2)&&bottom(2,3,3)==w(:,:,3)
            topCCW;
            topCCW;
            backleftCCW;
            backleftCCW;
            topCCW;
            topCCW;
        elseif backright(3,2,1)==w(:,:,1)&&backright(3,2,2)==w(:,:,2)&&backright(3,2,3)==w(:,:,3)&&bottom(1,2,1)==b(:,:,1)&&bottom(1,2,2)==b(:,:,2)&&bottom(1,2,3)==b(:,:,3)
            backrightCW;
            frontrightCCW;
        elseif backright(3,2,1)==b(:,:,1)&&backright(3,2,2)==b(:,:,2)&&backright(3,2,3)==b(:,:,3)&&bottom(1,2,1)==w(:,:,1)&&bottom(1,2,2)==w(:,:,2)&&bottom(1,2,3)==w(:,:,3)
            topCCW;
            backrightCCW;
            backrightCCW;
            topCW;
        else error('white and blue edge piece not found, invalid cube')  
        end
end
