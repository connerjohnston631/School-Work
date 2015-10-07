if top(3,2,1)==w(:,:,1)&&top(3,2,2)==w(:,:,2)&&top(3,2,3)==w(:,:,3)&&frontleft(1,2,1)==r(:,:,1)&&frontleft(1,2,2)==r(:,:,2)&&frontleft(1,2,3)==r(:,:,3)
else
        if top(3,2,1)==r(:,:,1)&&top(3,2,2)==r(:,:,2)&&top(3,2,3)==r(:,:,3)&&frontleft(1,2,1)==w(:,:,1)&&frontleft(1,2,2)==w(:,:,2)&&frontleft(1,2,3)==w(:,:,3)
            frontleftCCW;
            backleftCCW;
            topCCW;
        elseif top(2,3,1)==w(:,:,1)&&top(2,3,2)==w(:,:,2)&&top(2,3,3)==w(:,:,3)&&frontright(1,2,1)==r(:,:,1)&&frontright(1,2,2)==r(:,:,2)&&frontright(1,2,3)==r(:,:,3)
            topCW;
        elseif top(2,3,1)==r(:,:,1)&&top(2,3,2)==r(:,:,2)&&top(2,3,3)==r(:,:,3)&&frontright(1,2,1)==w(:,:,1)&&frontright(1,2,2)==w(:,:,2)&&frontright(1,2,3)==w(:,:,3)
            frontrightCCW;
            frontleftCCW;
        elseif top(2,1,1)==w(:,:,1)&&top(2,1,2)==w(:,:,2)&&top(2,1,3)==w(:,:,3)&&backleft(1,2,1)==r(:,:,1)&&backleft(1,2,2)==r(:,:,2)&&backleft(1,2,3)==r(:,:,3)
            topCCW;
        elseif top(2,1,1)==r(:,:,1)&&top(2,1,2)==r(:,:,2)&&top(2,1,3)==r(:,:,3)&&backleft(1,2,1)==w(:,:,1)&&backleft(1,2,2)==w(:,:,2)&&backleft(1,2,3)==w(:,:,3)
            backleftCW;
            frontleftCW;
        elseif top(1,2,1)==w(:,:,1)&&top(1,2,2)==w(:,:,2)&&top(1,2,3)==w(:,:,3)&&backright(1,2,1)==r(:,:,1)&&backright(1,2,2)==r(:,:,2)&&backright(1,2,3)==r(:,:,3)
            topCCW;
            topCCW;
        elseif top(1,2,1)==r(:,:,1)&&top(1,2,2)==r(:,:,2)&&top(1,2,3)==r(:,:,3)&&backright(1,2,1)==w(:,:,1)&&backright(1,2,2)==w(:,:,2)&&backright(1,2,3)==w(:,:,3)
            backrightCCW;
            frontrightCCW;
            topCW;
        elseif frontleft(2,3,1)==w(:,:,1)&&frontleft(2,3,2)==w(:,:,2)&&frontleft(2,3,3)==w(:,:,3)&&frontright(2,1,1)==r(:,:,1)&&frontright(2,1,2)==r(:,:,2)&&frontright(2,1,3)==r(:,:,3)
            frontrightCW;
            topCW;
        elseif frontleft(2,3,1)==r(:,:,1)&&frontleft(2,3,2)==r(:,:,2)&&frontleft(2,3,3)==r(:,:,3)&&frontright(2,1,1)==w(:,:,1)&&frontright(2,1,2)==w(:,:,2)&&frontright(2,1,3)==w(:,:,3)
            frontleftCCW;
        elseif frontright(2,3,1)==w(:,:,1)&&frontright(2,3,2)==w(:,:,2)&&frontright(2,3,3)==w(:,:,3)&&backright(2,1,1)==r(:,:,1)&&backright(2,1,2)==r(:,:,2)&&backright(2,1,3)==r(:,:,3)
            backrightCW;
            topCCW;
            topCCW;
        elseif frontright(2,3,1)==r(:,:,1)&&frontright(2,3,2)==r(:,:,2)&&frontright(2,3,3)==r(:,:,3)&&backright(2,1,1)==w(:,:,1)&&backright(2,1,2)==w(:,:,2)&&backright(2,1,3)==w(:,:,3)
            frontrightCCW;
            topCW;
        elseif backleft(2,3,1)==w(:,:,1)&&backleft(2,3,2)==w(:,:,2)&&backleft(2,3,3)==w(:,:,3)&&frontleft(2,1,1)==r(:,:,1)&&frontleft(2,1,2)==r(:,:,2)&&frontleft(2,1,3)==r(:,:,3)
            frontleftCW;
        elseif backleft(2,3,1)==r(:,:,1)&&backleft(2,3,2)==r(:,:,2)&&backleft(2,3,3)==r(:,:,3)&&frontleft(2,1,1)==w(:,:,1)&&frontleft(2,1,2)==w(:,:,2)&&frontleft(2,1,3)==w(:,:,3)
            backleftCCW;
            topCCW;
        elseif backright(2,3,1)==w(:,:,1)&&backright(2,3,2)==w(:,:,2)&&backright(2,3,3)==w(:,:,3)&&backleft(2,1,1)==r(:,:,1)&&backleft(2,1,2)==r(:,:,2)&&backleft(2,1,3)==r(:,:,3)
            backleftCW;
            topCCW;
        elseif backright(2,3,1)==r(:,:,1)&&backright(2,3,2)==r(:,:,2)&&backright(2,3,3)==r(:,:,3)&&backleft(2,1,1)==w(:,:,1)&&backleft(2,1,2)==w(:,:,2)&&backleft(2,1,3)==w(:,:,3)
            backrightCCW;
            topCCW;
            topCCW;
        elseif frontleft(3,2,1)==w(:,:,1)&&frontleft(3,2,2)==w(:,:,2)&&frontleft(3,2,3)==w(:,:,3)&&bottom(3,2,1)==r(:,:,1)&&bottom(3,2,2)==r(:,:,2)&&bottom(3,2,3)==r(:,:,3)
            frontleftCCW;
            frontrightCW;
            topCW;
        elseif frontleft(3,2,1)==r(:,:,1)&&frontleft(3,2,2)==r(:,:,2)&&frontleft(3,2,3)==r(:,:,3)&&bottom(3,2,1)==w(:,:,1)&&bottom(3,2,2)==w(:,:,2)&&bottom(3,2,3)==w(:,:,3)
            frontleftCCW;
            frontleftCCW;
        elseif frontright(3,2,1)==w(:,:,1)&&frontright(3,2,2)==w(:,:,2)&&frontright(3,2,3)==w(:,:,3)&&bottom(2,1,1)==r(:,:,1)&&bottom(2,1,2)==r(:,:,2)&&bottom(2,1,3)==r(:,:,3)
            frontrightCW;
            frontleftCCW;
        elseif frontright(3,2,1)==r(:,:,1)&&frontright(3,2,2)==r(:,:,2)&&frontright(3,2,3)==r(:,:,3)&&bottom(2,1,1)==w(:,:,1)&&bottom(2,1,2)==w(:,:,2)&&bottom(2,1,3)==w(:,:,3)
            frontrightCCW;
            frontrightCCW;
            topCW;
        elseif backleft(3,2,1)==w(:,:,1)&&backleft(3,2,2)==w(:,:,2)&&backleft(3,2,3)==w(:,:,3)&&bottom(2,3,1)==r(:,:,1)&&bottom(2,3,2)==r(:,:,2)&&bottom(2,3,3)==r(:,:,3)
            backleftCCW;
            frontleftCW;
        elseif backleft(3,2,1)==r(:,:,1)&&backleft(3,2,2)==r(:,:,2)&&backleft(3,2,3)==r(:,:,3)&&bottom(2,3,1)==w(:,:,1)&&bottom(2,3,2)==w(:,:,2)&&bottom(2,3,3)==w(:,:,3)
            backleftCCW;
            backleftCCW;
            topCCW;
        elseif backright(3,2,1)==w(:,:,1)&&backright(3,2,2)==w(:,:,2)&&backright(3,2,3)==w(:,:,3)&&bottom(1,2,1)==r(:,:,1)&&bottom(1,2,2)==r(:,:,2)&&bottom(1,2,3)==r(:,:,3)
            backrightCCW;
            backleftCW;
            topCCW;
        elseif backright(3,2,1)==r(:,:,1)&&backright(3,2,2)==r(:,:,2)&&backright(3,2,3)==r(:,:,3)&&bottom(1,2,1)==w(:,:,1)&&bottom(1,2,2)==w(:,:,2)&&bottom(1,2,3)==w(:,:,3)
            backrightCCW;
            backrightCCW;
            topCCW;
            topCCW;
        else error('white and red edge piece not found, invalid cube')  
        end
end