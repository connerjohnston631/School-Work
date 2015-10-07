if top(3,3,1)==w(:,:,1)&&top(3,3,2)==w(:,:,2)&&top(3,3,3)==w(:,:,3)&&frontleft(1,3,1)==r(:,:,1)&&frontleft(1,3,2)==r(:,:,2)&&frontleft(1,3,3)==r(:,:,3)
else
        if  top(3,3,1)==r(:,:,1)&&top(3,3,2)==r(:,:,2)&&top(3,3,3)==r(:,:,3)&&frontleft(1,3,1)==b(:,:,1)&&frontleft(1,3,2)==b(:,:,2)&&frontleft(1,3,3)==b(:,:,3)
            frontrightCCW;
            bottomCCW;
            frontrightCW;
            bottomCW;
            frontrightCCW;
            bottomCCW;
            frontrightCW;
        elseif top(3,3,1)==b(:,:,1)&&top(3,3,2)==b(:,:,2)&&top(3,3,3)==b(:,:,3)&&frontleft(1,3,1)==w(:,:,1)&&frontleft(1,3,2)==w(:,:,2)&&frontleft(1,3,3)==w(:,:,3)          
            frontleftCW;
            bottomCW;
            frontleftCCW;
            bottomCCW;
            frontleftCW;
            bottomCW;
            frontleftCCW;
        elseif top(1,1,1)==w(:,:,1)&&top(1,1,2)==w(:,:,2)&&top(1,1,3)==w(:,:,3)&&backright(1,3,1)==r(:,:,1)&&backright(1,3,2)==r(:,:,2)&&backright(1,3,3)==r(:,:,3)
            backrightCW;
            frontleftCW;
            bottomCCW;
            bottomCCW;
            backrightCCW;
            frontleftCCW;
        elseif top(1,1,1)==r(:,:,1)&&top(1,1,2)==r(:,:,2)&&top(1,1,3)==r(:,:,3)&&backleft(1,1,1)==w(:,:,1)&&backleft(1,1,2)==w(:,:,2)&&backleft(1,1,3)==w(:,:,3)
            backleftCCW;
            bottomCCW;       
            bottomCCW;
            backleftCW;
            frontrightCCW;
            bottomCCW;
            frontrightCW;
        elseif top(1,1,1)==b(:,:,1)&&top(1,1,2)==b(:,:,2)&&top(1,1,3)==b(:,:,3)&&backright(1,3,1)==w(:,:,1)&&backright(1,3,2)==w(:,:,2)&&backright(1,3,3)==w(:,:,3)
            backrightCW;
            bottomCCW;
            bottomCCW;
            backrightCCW;
            frontleftCW;
            bottomCW;
            frontleftCCW;
        elseif top(1,3,1)==w(:,:,1)&&top(1,3,2)==w(:,:,2)&&top(1,3,3)==w(:,:,3)&&frontright(1,3,1)==r(:,:,1)&&frontright(1,3,2)==r(:,:,2)&&frontright(1,3,3)==r(:,:,3)
            backrightCCW;
            bottomCCW;
            backrightCW;
            frontleftCW;
            bottomCW;
            frontleftCCW;
        elseif top(1,3,1)==r(:,:,1)&&top(1,3,2)==r(:,:,2)&&top(1,3,3)==r(:,:,3)&&frontright(1,3,1)==b(:,:,1)&&frontright(1,3,2)==b(:,:,2)&&frontright(1,3,3)==b(:,:,3)
            backrightCCW;
            frontleftCW;
            bottomCCW;
            backrightCW;
            frontleftCCW;
        elseif top(1,3,1)==b(:,:,1)&&top(1,3,2)==b(:,:,2)&&top(1,3,3)==b(:,:,3)&&frontright(1,3,1)==w(:,:,1)&&frontright(1,3,2)==w(:,:,2)&&frontright(1,3,3)==w(:,:,3)
            backrightCCW;
            bottomCW;
            backrightCW;
            bottomCCW;
            frontleftCW;
            bottomCW;
            frontleftCCW;
        elseif backright(3,3,1)==w(:,:,1)&&backright(3,3,2)==w(:,:,2)&&backright(3,3,3)==w(:,:,3)&&backleft(3,1,1)==b(:,:,1)&&backleft(3,1,2)==b(:,:,2)&&backleft(3,1,3)==b(:,:,3)
            frontrightCCW;
            bottomCCW;
            bottomCCW;
            frontrightCW;
        elseif backright(3,3,1)==r(:,:,1)&&backright(3,3,2)==r(:,:,2)&&backright(3,3,3)==r(:,:,3)&&backleft(3,1,1)==w(:,:,1)&&backleft(3,1,2)==w(:,:,2)&&backleft(3,1,3)==w(:,:,3)
            frontleftCW;
            bottomCCW;
            bottomCCW;
            frontleftCCW;
        elseif backright(3,3,1)==b(:,:,1)&&backright(3,3,2)==b(:,:,2)&&backright(3,3,3)==b(:,:,3)&&backleft(3,1,1)==r(:,:,1)&&backleft(3,1,2)==r(:,:,2)&&backleft(3,1,3)==r(:,:,3)
            frontleftCW;
            bottomCW;
            frontleftCCW;
            frontrightCCW;
            bottomCCW;
            frontrightCW;
        elseif backleft(3,3,1)==w(:,:,1)&&backleft(3,3,2)==w(:,:,2)&&backleft(3,3,3)==w(:,:,3)&&frontleft(3,1,1)==b(:,:,1)&&frontleft(3,1,2)==b(:,:,2)&&frontleft(3,1,3)==b(:,:,3)
            frontrightCCW;
            bottomCW;
            frontrightCW;
        elseif backleft(3,3,1)==r(:,:,1)&&backleft(3,3,2)==r(:,:,2)&&backleft(3,3,3)==r(:,:,3)&&frontleft(3,1,1)==w(:,:,1)&&frontleft(3,1,2)==w(:,:,2)&&frontleft(3,1,3)==w(:,:,3)
            bottomCW;
            frontrightCCW;
            bottomCCW;
            frontrightCW;
        elseif backleft(3,3,1)==b(:,:,1)&&backleft(3,3,2)==b(:,:,2)&&backleft(3,3,3)==b(:,:,3)&&frontleft(3,1,1)==r(:,:,1)&&frontleft(3,1,2)==r(:,:,2)&&frontleft(3,1,3)==r(:,:,3)
            frontrightCCW;
            bottomCCW;
            bottomCCW;
            frontrightCW;
            frontleftCW;
            bottomCW;
            frontleftCCW;
        elseif frontleft(3,3,1)==w(:,:,1)&&frontleft(3,3,2)==w(:,:,2)&&frontleft(3,3,3)==w(:,:,3)&&frontright(3,1,1)==b(:,:,1)&&frontright(3,1,2)==b(:,:,2)&&frontright(3,1,3)==b(:,:,3)
            frontleftCW;
            bottomCW;
            frontleftCCW;
        elseif frontleft(3,3,1)==r(:,:,1)&&frontleft(3,3,2)==r(:,:,2)&&frontleft(3,3,3)==r(:,:,3)&&frontright(3,1,1)==w(:,:,1)&&frontright(3,1,2)==w(:,:,2)&&frontright(3,1,3)==w(:,:,3)
            frontrightCCW;
            bottomCCW;
            frontrightCW;
        elseif frontleft(3,3,1)==b(:,:,1)&&frontleft(3,3,2)==b(:,:,2)&&frontleft(3,3,3)==b(:,:,3)&&frontright(3,1,1)==r(:,:,1)&&frontright(3,1,2)==r(:,:,2)&&frontright(3,1,3)==r(:,:,3)
            frontrightCCW;
            bottomCW;
            frontrightCW;
            bottomCCW;
            bottomCCW;
            frontrightCCW;
            bottomCCW;
            frontrightCW;
        elseif frontright(3,3,1)==w(:,:,1)&&frontright(3,3,2)==w(:,:,2)&&frontright(3,3,3)==w(:,:,3)&&backright(3,1,1)==b(:,:,1)&&backright(3,1,2)==b(:,:,2)&&backright(3,1,3)==b(:,:,3)
            bottomCCW;
            frontleftCW;
            bottomCW;
            frontleftCCW;
        elseif frontright(3,3,1)==r(:,:,1)&&frontright(3,3,2)==r(:,:,2)&&frontright(3,3,3)==r(:,:,3)&&backright(3,1,1)==w(:,:,1)&&backright(3,1,2)==w(:,:,2)&&backright(3,1,3)==w(:,:,3)
            frontleftCW;
            bottomCCW;
            frontleftCCW;
        elseif frontright(3,3,1)==b(:,:,1)&&frontright(3,3,2)==b(:,:,2)&&frontright(3,3,3)==b(:,:,3)&&backright(3,1,1)==r(:,:,1)&&backright(3,1,2)==r(:,:,2)&&backright(3,1,3)==r(:,:,3)
            frontleftCW;
            bottomCCW;
            bottomCCW;
            frontleftCCW;
            frontrightCCW;
            bottomCCW;
            frontrightCW;
        else error('white, red, and blue corner piece not found, invalid cube')  
        end
end