if top(1,3,1)==w(:,:,1)&&top(1,3,2)==w(:,:,2)&&top(1,3,3)==w(:,:,3)&&frontright(1,3,1)==b(:,:,1)&&frontright(1,3,2)==b(:,:,2)&&frontright(1,3,3)==b(:,:,3)
else
        if  top(1,3,1)==b(:,:,1)&&top(1,3,2)==b(:,:,2)&&top(1,3,3)==b(:,:,3)&&frontright(1,3,1)==o(:,:,1)&&frontright(1,3,2)==o(:,:,2)&&frontright(1,3,3)==o(:,:,3)
            backrightCCW;
            bottomCCW;
            backrightCW;
            bottomCW;
            backrightCCW;
            bottomCCW;
            backrightCW;
        elseif top(1,3,1)==o(:,:,1)&&top(1,3,2)==o(:,:,2)&&top(1,3,3)==o(:,:,3)&&frontright(1,3,1)==w(:,:,1)&&frontright(1,3,2)==w(:,:,2)&&frontright(1,3,3)==w(:,:,3)
            frontrightCW;
            bottomCW;
            frontrightCCW;
            bottomCCW;
            frontrightCW;
            bottomCW;
            frontrightCCW;
        elseif top(1,1,1)==w(:,:,1)&&top(1,1,2)==w(:,:,2)&&top(1,1,3)==w(:,:,3)&&backright(1,3,1)==b(:,:,1)&&backright(1,3,2)==b(:,:,2)&&backright(1,3,3)==b(:,:,3)
            backrightCW;
            bottomCW;
            backrightCCW;
            frontrightCW;
            bottomCCW;
            bottomCCW;
            frontrightCCW;
        elseif top(1,1,1)==b(:,:,1)&&top(1,1,2)==b(:,:,2)&&top(1,1,3)==b(:,:,3)&&backleft(1,1,1)==w(:,:,1)&&backleft(1,1,2)==w(:,:,2)&&backleft(1,1,3)==w(:,:,3)
            backleftCCW;
            frontrightCW;
            bottomCCW;
            frontrightCCW;
            backleftCW;
        elseif top(1,1,1)==o(:,:,1)&&top(1,1,2)==o(:,:,2)&&top(1,1,3)==o(:,:,3)&&backright(1,3,1)==w(:,:,1)&&backright(1,3,2)==w(:,:,2)&&backright(1,3,3)==w(:,:,3)
            backleftCCW;
            bottomCW;
            backleftCW;
            bottomCCW;
            frontrightCW;
            bottomCW;
            frontrightCCW;
        elseif backright(3,3,1)==w(:,:,1)&&backright(3,3,2)==w(:,:,2)&&backright(3,3,3)==w(:,:,3)&&backleft(3,1,1)==o(:,:,1)&&backleft(3,1,2)==o(:,:,2)&&backleft(3,1,3)==o(:,:,3)
            bottomCCW;
            frontrightCW;
            bottomCW;
            frontrightCCW;
        elseif backright(3,3,1)==b(:,:,1)&&backright(3,3,2)==b(:,:,2)&&backright(3,3,3)==b(:,:,3)&&backleft(3,1,1)==w(:,:,1)&&backleft(3,1,2)==w(:,:,2)&&backleft(3,1,3)==w(:,:,3)
            frontrightCW;
            bottomCCW;
            frontrightCCW;          
        elseif backright(3,3,1)==o(:,:,1)&&backright(3,3,2)==o(:,:,2)&&backright(3,3,3)==o(:,:,3)&&backleft(3,1,1)==b(:,:,1)&&backleft(3,1,2)==b(:,:,2)&&backleft(3,1,3)==b(:,:,3)
            backrightCW;
            bottomCCW;
            backrightCCW;
            bottomCW;
            frontrightCW;
            bottomCW;
            frontrightCCW;
        elseif backleft(3,3,1)==w(:,:,1)&&backleft(3,3,2)==w(:,:,2)&&backleft(3,3,3)==w(:,:,3)&&frontleft(3,1,1)==o(:,:,1)&&frontleft(3,1,2)==o(:,:,2)&&frontleft(3,1,3)==o(:,:,3)
            backrightCCW;
            bottomCCW;
            bottomCCW;
            backrightCW;
        elseif backleft(3,3,1)==b(:,:,1)&&backleft(3,3,2)==b(:,:,2)&&backleft(3,3,3)==b(:,:,3)&&frontleft(3,1,1)==w(:,:,1)&&frontleft(3,1,2)==w(:,:,2)&&frontleft(3,1,3)==w(:,:,3)
            frontrightCW;
            bottomCCW;
            bottomCCW;
            frontrightCCW;       
        elseif backleft(3,3,1)==o(:,:,1)&&backleft(3,3,2)==o(:,:,2)&&backleft(3,3,3)==o(:,:,3)&&frontleft(3,1,1)==b(:,:,1)&&frontleft(3,1,2)==b(:,:,2)&&frontleft(3,1,3)==b(:,:,3)
            backrightCCW;
            bottomCCW;
            backrightCW;
            frontrightCW;
            bottomCW;
            frontrightCCW;
        elseif frontleft(3,3,1)==w(:,:,1)&&frontleft(3,3,2)==w(:,:,2)&&frontleft(3,3,3)==w(:,:,3)&&frontright(3,1,1)==o(:,:,1)&&frontright(3,1,2)==o(:,:,2)&&frontright(3,1,3)==o(:,:,3)
            backrightCCW;
            bottomCW;
            backrightCW;
        elseif frontleft(3,3,1)==b(:,:,1)&&frontleft(3,3,2)==b(:,:,2)&&frontleft(3,3,3)==b(:,:,3)&&frontright(3,1,1)==w(:,:,1)&&frontright(3,1,2)==w(:,:,2)&&frontright(3,1,3)==w(:,:,3)
            bottomCW;
            backrightCCW;
            bottomCCW;
            backrightCW;
        elseif frontleft(3,3,1)==o(:,:,1)&&frontleft(3,3,2)==o(:,:,2)&&frontleft(3,3,3)==o(:,:,3)&&frontright(3,1,1)==b(:,:,1)&&frontright(3,1,2)==b(:,:,2)&&frontright(3,1,3)==b(:,:,3)
            backrightCCW;
            bottomCCW;
            bottomCCW;
            backrightCW;
            frontrightCW;
            bottomCW;
            frontrightCCW;
        elseif frontright(3,3,1)==w(:,:,1)&&frontright(3,3,2)==w(:,:,2)&&frontright(3,3,3)==w(:,:,3)&&backright(3,1,1)==o(:,:,1)&&backright(3,1,2)==o(:,:,2)&&backright(3,1,3)==o(:,:,3)
            frontrightCW;
            bottomCW;
            frontrightCCW;
        elseif frontright(3,3,1)==b(:,:,1)&&frontright(3,3,2)==b(:,:,2)&&frontright(3,3,3)==b(:,:,3)&&backright(3,1,1)==w(:,:,1)&&backright(3,1,2)==w(:,:,2)&&backright(3,1,3)==w(:,:,3)
            backrightCCW;
            bottomCCW;
            backrightCW;
        elseif frontright(3,3,1)==o(:,:,1)&&frontright(3,3,2)==o(:,:,2)&&frontright(3,3,3)==o(:,:,3)&&backright(3,1,1)==b(:,:,1)&&backright(3,1,2)==b(:,:,2)&&backright(3,1,3)==b(:,:,3)
            frontrightCW;
            bottomCCW;
            frontrightCCW;
            bottomCCW;
            bottomCCW;
            frontrightCW;
            bottomCW;
            frontrightCCW;
        else error('white, blue, and orange corner piece not found, invalid cube')  
        end
end