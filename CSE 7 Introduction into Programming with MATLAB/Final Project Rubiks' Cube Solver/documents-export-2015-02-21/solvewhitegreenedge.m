%put the white and green edge piece into place
if top(2,1,1)==w(:,:,1)&&top(2,1,2)==w(:,:,2)&&top(2,1,3)==w(:,:,3)&&backleft(1,2,1)==g(:,:,1)&&backleft(1,2,2)==g(:,:,2)&&backleft(1,2,3)==g(:,:,3)
else
        if top(2,1,1)==g(:,:,1)&&top(2,1,2)==g(:,:,2)&&top(2,1,3)==g(:,:,3)&&backleft(1,2,1)==w(:,:,1)&&backleft(1,2,2)==w(:,:,2)&&backleft(1,2,3)==w(:,:,3)
            backleftCCW;
            topCW;
            backrightCCW;
            topCCW;
        elseif top(1,2,1)==w(:,:,1)&&top(1,2,2)==w(:,:,2)&&top(1,2,3)==w(:,:,3)&&backright(1,2,1)==g(:,:,1)&&backright(1,2,2)==g(:,:,2)&&backright(1,2,3)==g(:,:,3)
            backrightCCW;
            topCW;
            backrightCW;
            topCCW;
        elseif top(1,2,1)==g(:,:,1)&&top(1,2,2)==g(:,:,2)&&top(1,2,3)==g(:,:,3)&&backright(1,2,1)==w(:,:,1)&&backright(1,2,2)==w(:,:,2)&&backright(1,2,3)==w(:,:,3)
            backrightCW;
            backleftCW;
        elseif frontleft(2,3,1)==w(:,:,1)&&frontleft(2,3,2)==w(:,:,2)&&frontleft(2,3,3)==w(:,:,3)&&frontright(2,1,1)==g(:,:,1)&&frontright(2,1,2)==g(:,:,2)&&frontright(2,1,3)==g(:,:,3)
            topCCW;
            topCCW;
            frontrightCW;
            topCCW;
            topCCW;
        elseif frontleft(2,3,1)==g(:,:,1)&&frontleft(2,3,2)==g(:,:,2)&&frontleft(2,3,3)==g(:,:,3)&&frontright(2,1,1)==w(:,:,1)&&frontright(2,1,2)==w(:,:,2)&&frontright(2,1,3)==w(:,:,3)
            topCCW;
            frontleftCCW;
            topCW;
        elseif frontright(2,3,1)==w(:,:,1)&&frontright(2,3,2)==w(:,:,2)&&frontright(2,3,3)==w(:,:,3)&&backright(2,1,1)==g(:,:,1)&&backright(2,1,2)==g(:,:,2)&&backright(2,1,3)==g(:,:,3)
            topCW;
            backrightCW;
            topCCW;
        elseif frontright(2,3,1)==g(:,:,1)&&frontright(2,3,2)==g(:,:,2)&&frontright(2,3,3)==g(:,:,3)&&backright(2,1,1)==w(:,:,1)&&backright(2,1,2)==w(:,:,2)&&backright(2,1,3)==w(:,:,3)
            topCCW;
            topCCW;
            frontrightCCW;
            topCCW;
            topCCW;
        elseif backleft(2,3,1)==w(:,:,1)&&backleft(2,3,2)==w(:,:,2)&&backleft(2,3,3)==w(:,:,3)&&frontleft(2,1,1)==g(:,:,1)&&frontleft(2,1,2)==g(:,:,2)&&frontleft(2,1,3)==g(:,:,3)
            topCCW;
            frontleftCW;
            topCW;
        elseif backleft(2,3,1)==g(:,:,1)&&backleft(2,3,2)==g(:,:,2)&&backleft(2,3,3)==g(:,:,3)&&frontleft(2,1,1)==w(:,:,1)&&frontleft(2,1,2)==w(:,:,2)&&frontleft(2,1,3)==w(:,:,3)
            backleftCCW;
        elseif backright(2,3,1)==w(:,:,1)&&backright(2,3,2)==w(:,:,2)&&backright(2,3,3)==w(:,:,3)&&backleft(2,1,1)==g(:,:,1)&&backleft(2,1,2)==g(:,:,2)&&backleft(2,1,3)==g(:,:,3)
            backleftCW;
        elseif backright(2,3,1)==g(:,:,1)&&backright(2,3,2)==g(:,:,2)&&backright(2,3,3)==g(:,:,3)&&backleft(2,1,1)==w(:,:,1)&&backleft(2,1,2)==w(:,:,2)&&backleft(2,1,3)==w(:,:,3)
            topCW;
            backrightCCW;
            topCCW;
        elseif frontleft(3,2,1)==w(:,:,1)&&frontleft(3,2,2)==w(:,:,2)&&frontleft(3,2,3)==w(:,:,3)&&bottom(3,2,1)==g(:,:,1)&&bottom(3,2,2)==g(:,:,2)&&bottom(3,2,3)==g(:,:,3)
            frontleftCW;
            backleftCCW;
            frontleftCCW;
        elseif frontleft(3,2,1)==g(:,:,1)&&frontleft(3,2,2)==g(:,:,2)&&frontleft(3,2,3)==g(:,:,3)&&bottom(3,2,1)==w(:,:,1)&&bottom(3,2,2)==w(:,:,2)&&bottom(3,2,3)==w(:,:,3)
            topCCW;
            frontleftCCW;
            frontleftCCW;
            topCW;
        elseif frontright(3,2,1)==w(:,:,1)&&frontright(3,2,2)==w(:,:,2)&&frontright(3,2,3)==w(:,:,3)&&bottom(2,1,1)==g(:,:,1)&&bottom(2,1,2)==g(:,:,2)&&bottom(2,1,3)==g(:,:,3)
            frontrightCCW;
            topCW;
            backrightCW;
            topCCW;
            frontrightCW;
        elseif frontright(3,2,1)==g(:,:,1)&&frontright(3,2,2)==g(:,:,2)&&frontright(3,2,3)==g(:,:,3)&&bottom(2,1,1)==w(:,:,1)&&bottom(2,1,2)==w(:,:,2)&&bottom(2,1,3)==w(:,:,3)
            topCCW;
            topCCW;
            frontrightCCW;
            frontrightCCW;
            topCCW;
            topCCW;
        elseif backleft(3,2,1)==w(:,:,1)&&backleft(3,2,2)==w(:,:,2)&&backleft(3,2,3)==w(:,:,3)&&bottom(2,3,1)==g(:,:,1)&&bottom(2,3,2)==g(:,:,2)&&bottom(2,3,3)==g(:,:,3)
            backleftCW;
            topCW;
            backrightCCW;
            topCCW;
        elseif backleft(3,2,1)==g(:,:,1)&&backleft(3,2,2)==g(:,:,2)&&backleft(3,2,3)==g(:,:,3)&&bottom(2,3,1)==w(:,:,1)&&bottom(2,3,2)==w(:,:,2)&&bottom(2,3,3)==w(:,:,3)
            backleftCCW;
            backleftCCW;
        elseif backright(3,2,1)==w(:,:,1)&&backright(3,2,2)==w(:,:,2)&&backright(3,2,3)==w(:,:,3)&&bottom(1,2,1)==g(:,:,1)&&bottom(1,2,2)==g(:,:,2)&&bottom(1,2,3)==g(:,:,3)
            backrightCCW;
            backleftCW;
        elseif backright(3,2,1)==g(:,:,1)&&backright(3,2,2)==g(:,:,2)&&backright(3,2,3)==g(:,:,3)&&bottom(1,2,1)==w(:,:,1)&&bottom(1,2,2)==w(:,:,2)&&bottom(1,2,3)==w(:,:,3)
            topCW;
            backrightCCW;
            backrightCCW;
            topCCW;
        else error('white and green edge piece not found, invalid cube')  
        end
end