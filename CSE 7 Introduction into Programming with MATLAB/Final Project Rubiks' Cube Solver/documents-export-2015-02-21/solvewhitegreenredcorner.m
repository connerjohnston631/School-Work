if top(3,1,1)==w(:,:,1)&&top(3,1,2)==w(:,:,2)&&top(3,1,3)==w(:,:,3)&&frontleft(1,1,1)==r(:,:,1)&&frontleft(1,1,2)==r(:,:,2)&&frontleft(1,1,3)==r(:,:,3)
else
        if top(3,1,1)==g(:,:,1)&&top(3,1,2)==g(:,:,2)&&top(3,1,3)==g(:,:,3)&&frontleft(1,1,1)==w(:,:,1)&&frontleft(1,1,2)==w(:,:,2)&&frontleft(1,1,3)==w(:,:,3)
            frontleftCCW;
            bottomCCW;
            frontleftCW;
            bottomCW;
            frontleftCCW;
            bottomCCW;
            frontleftCW;
        elseif top(3,1,1)==r(:,:,1)&&top(3,1,2)==r(:,:,2)&&top(3,1,3)==r(:,:,3)&&frontleft(1,1,1)==g(:,:,1)&&frontleft(1,1,2)==g(:,:,2)&&frontleft(1,1,3)==g(:,:,3)
            backleftCW;            
            bottomCW;
            backleftCCW;
            bottomCCW;
            backleftCW;            
            bottomCW;
            backleftCCW;
        elseif top(3,3,1)==w(:,:,1)&&top(3,3,2)==w(:,:,2)&&top(3,3,3)==w(:,:,3)&&frontleft(1,3,1)==g(:,:,1)&&frontleft(1,3,2)==g(:,:,2)&&frontleft(1,3,3)==g(:,:,3)
            frontrightCCW;
            bottomCCW;
            frontrightCW;
            backleftCW;
            bottomCW;
            backleftCCW;
        elseif top(3,3,1)==g(:,:,1)&&top(3,3,2)==g(:,:,2)&&top(3,3,3)==g(:,:,3)&&frontleft(1,3,1)==r(:,:,1)&&frontleft(1,3,2)==r(:,:,2)&&frontleft(1,3,3)==r(:,:,3)
            frontrightCCW;
            backleftCW;
            bottomCCW;
            backleftCCW;
            frontrightCW;
        elseif top(3,3,1)==r(:,:,1)&&top(3,3,2)==r(:,:,2)&&top(3,3,3)==r(:,:,3)&&frontleft(1,3,1)==w(:,:,1)&&frontleft(1,3,2)==w(:,:,2)&&frontleft(1,3,3)==w(:,:,3)          
            frontrightCCW;
            bottomCW;
            frontrightCW;
            bottomCCW;
            backleftCW;
            bottomCW;
            backleftCCW;
        elseif top(1,1,1)==w(:,:,1)&&top(1,1,2)==w(:,:,2)&&top(1,1,3)==w(:,:,3)&&backright(1,3,1)==g(:,:,1)&&backright(1,3,2)==g(:,:,2)&&backright(1,3,3)==g(:,:,3)
            backrightCW;
            bottomCW;
            backrightCCW;
            frontleftCCW;
            bottomCCW;
            frontleftCW;
        elseif top(1,1,1)==g(:,:,1)&&top(1,1,2)==g(:,:,2)&&top(1,1,3)==g(:,:,3)&&backleft(1,1,1)==w(:,:,1)&&backleft(1,1,2)==w(:,:,2)&&backleft(1,1,3)==w(:,:,3)
            backrightCW;
            bottomCCW;
            backrightCCW;
            bottomCW;
            frontleftCCW;
            bottomCCW;
            frontleftCW;
        elseif top(1,1,1)==r(:,:,1)&&top(1,1,2)==r(:,:,2)&&top(1,1,3)==r(:,:,3)&&backleft(1,1,1)==g(:,:,1)&&backleft(1,1,2)==g(:,:,2)&&backleft(1,1,3)==g(:,:,3)
            backrightCW;
            frontleftCCW;
            bottomCW;
            frontleftCW;
            backrightCCW;
        elseif top(1,3,1)==w(:,:,1)&&top(1,3,2)==w(:,:,2)&&top(1,3,3)==w(:,:,3)&&frontright(1,3,1)==g(:,:,1)&&frontright(1,3,2)==g(:,:,2)&&frontright(1,3,3)==g(:,:,3)
            frontrightCW;
            backleftCW;
            bottomCCW;
            bottomCCW;
            backleftCCW;
            frontrightCCW;
        elseif top(1,3,1)==g(:,:,1)&&top(1,3,2)==g(:,:,2)&&top(1,3,3)==g(:,:,3)&&frontright(1,3,1)==r(:,:,1)&&frontright(1,3,2)==r(:,:,2)&&frontright(1,3,3)==r(:,:,3)
            backrightCCW;
            bottomCCW;
            backrightCW;
            backleftCW;
            bottomCCW;
            backleftCCW;
        elseif top(1,3,1)==r(:,:,1)&&top(1,3,2)==r(:,:,2)&&top(1,3,3)==r(:,:,3)&&frontright(1,3,1)==w(:,:,1)&&frontright(1,3,2)==w(:,:,2)&&frontright(1,3,3)==w(:,:,3)
            backrightCCW;
            bottomCW;
            backrightCW;
            bottomCCW;
            bottomCCW;
            backleftCW;
            bottomCW;
            backleftCCW;
        elseif backright(3,3,1)==w(:,:,1)&&backright(3,3,2)==w(:,:,2)&&backright(3,3,3)==w(:,:,3)&&backleft(3,1,1)==r(:,:,1)&&backleft(3,1,2)==r(:,:,2)&&backleft(3,1,3)==r(:,:,3)
            bottomCW;
            backleftCW;
            bottomCW;
            backleftCCW;
        elseif backright(3,3,1)==g(:,:,1)&&backright(3,3,2)==g(:,:,2)&&backright(3,3,3)==g(:,:,3)&&backleft(3,1,1)==w(:,:,1)&&backleft(3,1,2)==w(:,:,2)&&backleft(3,1,3)==w(:,:,3)
            bottomCCW;
            backleftCW;
            bottomCCW;
            bottomCCW;
            backleftCCW;
        elseif backright(3,3,1)==r(:,:,1)&&backright(3,3,2)==r(:,:,2)&&backright(3,3,3)==r(:,:,3)&&backleft(3,1,1)==g(:,:,1)&&backleft(3,1,2)==g(:,:,2)&&backleft(3,1,3)==g(:,:,3)
            bottomCCW;
            backleftCW;
            bottomCW;
            backleftCCW;
            frontleftCCW;
            bottomCCW;
            frontleftCW;
        elseif backleft(3,3,1)==w(:,:,1)&&backleft(3,3,2)==w(:,:,2)&&backleft(3,3,3)==w(:,:,3)&&frontleft(3,1,1)==r(:,:,1)&&frontleft(3,1,2)==r(:,:,2)&&frontleft(3,1,3)==r(:,:,3)
            backleftCW;
            bottomCW;
            backleftCCW;
        elseif backleft(3,3,1)==g(:,:,1)&&backleft(3,3,2)==g(:,:,2)&&backleft(3,3,3)==g(:,:,3)&&frontleft(3,1,1)==w(:,:,1)&&frontleft(3,1,2)==w(:,:,2)&&frontleft(3,1,3)==w(:,:,3)
            frontleftCCW;
            bottomCCW;
            frontleftCW;    
        elseif backleft(3,3,1)==r(:,:,1)&&backleft(3,3,2)==r(:,:,2)&&backleft(3,3,3)==r(:,:,3)&&frontleft(3,1,1)==g(:,:,1)&&frontleft(3,1,2)==g(:,:,2)&&frontleft(3,1,3)==g(:,:,3)
            frontleftCCW;
            bottomCW;
            frontleftCW;
            bottomCCW;
            bottomCCW;
            frontleftCCW;
            bottomCCW;
            frontleftCW;
        elseif frontleft(3,3,1)==w(:,:,1)&&frontleft(3,3,2)==w(:,:,2)&&frontleft(3,3,3)==w(:,:,3)&&frontright(3,1,1)==r(:,:,1)&&frontright(3,1,2)==r(:,:,2)&&frontright(3,1,3)==r(:,:,3)
            bottomCCW;
            backleftCW;
            bottomCW;
            backleftCCW;
        elseif frontleft(3,3,1)==g(:,:,1)&&frontleft(3,3,2)==g(:,:,2)&&frontleft(3,3,3)==g(:,:,3)&&frontright(3,1,1)==w(:,:,1)&&frontright(3,1,2)==w(:,:,2)&&frontright(3,1,3)==w(:,:,3)
            backleftCW;
            bottomCCW;
            backleftCCW;
        elseif frontleft(3,3,1)==r(:,:,1)&&frontleft(3,3,2)==r(:,:,2)&&frontleft(3,3,3)==r(:,:,3)&&frontright(3,1,1)==g(:,:,1)&&frontright(3,1,2)==g(:,:,2)&&frontright(3,1,3)==g(:,:,3)
            backleftCW;
            bottomCCW;
            bottomCCW;
            backleftCCW;
            frontleftCCW;
            bottomCCW;
            frontleftCW;
        elseif frontright(3,3,1)==w(:,:,1)&&frontright(3,3,2)==w(:,:,2)&&frontright(3,3,3)==w(:,:,3)&&backright(3,1,1)==r(:,:,1)&&backright(3,1,2)==r(:,:,2)&&backright(3,1,3)==r(:,:,3)
            bottomCCW;
            bottomCCW;
            backleftCW;
            bottomCW;
            backleftCCW;
        elseif frontright(3,3,1)==g(:,:,1)&&frontright(3,3,2)==g(:,:,2)&&frontright(3,3,3)==g(:,:,3)&&backright(3,1,1)==w(:,:,1)&&backright(3,1,2)==w(:,:,2)&&backright(3,1,3)==w(:,:,3)
            backleftCW;
            bottomCCW;
            bottomCCW;
            backleftCCW;
        elseif frontright(3,3,1)==r(:,:,1)&&frontright(3,3,2)==r(:,:,2)&&frontright(3,3,3)==r(:,:,3)&&backright(3,1,1)==g(:,:,1)&&backright(3,1,2)==g(:,:,2)&&backright(3,1,3)==g(:,:,3)
            backleftCW;
            bottomCW;
            backleftCCW;
            frontleftCCW;
            bottomCCW;
            frontleftCW;
        else error('white, green, and red corner piece not found, invalid cube')  
        end
end