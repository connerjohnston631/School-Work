if top(1,1,1)==w(:,:,1)&&top(1,1,2)==w(:,:,2)&&top(1,1,3)==w(:,:,3)&&backright(1,3,1)==o(:,:,1)&&backright(1,3,2)==o(:,:,2)&&backright(1,3,3)==o(:,:,3)
else
        if  top(1,1,1)==o(:,:,1)&&top(1,1,2)==o(:,:,2)&&top(1,1,3)==o(:,:,3)&&backleft(1,1,1)==w(:,:,1)&&backleft(1,1,2)==w(:,:,2)&&backleft(1,1,3)==w(:,:,3)
            backleftCCW;
            bottomCCW;
            backleftCW;
            bottomCW;
            backleftCCW;
            bottomCCW;
            backleftCW;
        elseif top(1,1,1)==g(:,:,1)&&top(1,1,2)==g(:,:,2)&&top(1,1,3)==g(:,:,3)&&backright(1,3,1)==w(:,:,1)&&backright(1,3,2)==w(:,:,2)&&backright(1,3,3)==w(:,:,3)
            backrightCW;
            bottomCW;
            backrightCCW;
            bottomCCW;
            backrightCW;
            bottomCW;
            backrightCCW;
        elseif backright(3,3,1)==w(:,:,1)&&backright(3,3,2)==w(:,:,2)&&backright(3,3,3)==w(:,:,3)&&backleft(3,1,1)==g(:,:,1)&&backleft(3,1,2)==g(:,:,2)&&backleft(3,1,3)==g(:,:,3)
            backrightCW;
            bottomCW;
            backrightCCW;
        elseif backright(3,3,1)==o(:,:,1)&&backright(3,3,2)==o(:,:,2)&&backright(3,3,3)==o(:,:,3)&&backleft(3,1,1)==w(:,:,1)&&backleft(3,1,2)==w(:,:,2)&&backleft(3,1,3)==w(:,:,3)
            backleftCCW;
            bottomCCW;
            backleftCW;
        elseif backright(3,3,1)==g(:,:,1)&&backright(3,3,2)==g(:,:,2)&&backright(3,3,3)==g(:,:,3)&&backleft(3,1,1)==o(:,:,1)&&backleft(3,1,2)==o(:,:,2)&&backleft(3,1,3)==o(:,:,3)
            backrightCW;
            bottomCCW;
            backrightCCW;
            bottomCCW;
            bottomCCW;
            backrightCW;
            bottomCW;
            backrightCCW;
        elseif backleft(3,3,1)==w(:,:,1)&&backleft(3,3,2)==w(:,:,2)&&backleft(3,3,3)==w(:,:,3)&&frontleft(3,1,1)==g(:,:,1)&&frontleft(3,1,2)==g(:,:,2)&&frontleft(3,1,3)==g(:,:,3)
            bottomCCW;
            backrightCW;
            bottomCW;
            backrightCCW;
        elseif backleft(3,3,1)==o(:,:,1)&&backleft(3,3,2)==o(:,:,2)&&backleft(3,3,3)==o(:,:,3)&&frontleft(3,1,1)==w(:,:,1)&&frontleft(3,1,2)==w(:,:,2)&&frontleft(3,1,3)==w(:,:,3)
            backrightCW;
            bottomCCW;
            backrightCCW;
        elseif backleft(3,3,1)==g(:,:,1)&&backleft(3,3,2)==g(:,:,2)&&backleft(3,3,3)==g(:,:,3)&&frontleft(3,1,1)==o(:,:,1)&&frontleft(3,1,2)==o(:,:,2)&&frontleft(3,1,3)==o(:,:,3)
            backrightCW;
            bottomCCW;
            bottomCCW;
            backrightCCW;
            backleftCCW;
            bottomCCW;
            backleftCW;
        elseif frontleft(3,3,1)==w(:,:,1)&&frontleft(3,3,2)==w(:,:,2)&&frontleft(3,3,3)==w(:,:,3)&&frontright(3,1,1)==g(:,:,1)&&frontright(3,1,2)==g(:,:,2)&&frontright(3,1,3)==g(:,:,3)
            bottomCCW;
            bottomCCW;
            backrightCW;
            bottomCW;
            backrightCCW;
        elseif frontleft(3,3,1)==o(:,:,1)&&frontleft(3,3,2)==o(:,:,2)&&frontleft(3,3,3)==o(:,:,3)&&frontright(3,1,1)==w(:,:,1)&&frontright(3,1,2)==w(:,:,2)&&frontright(3,1,3)==w(:,:,3)            
            backrightCW;
            bottomCCW;
            bottomCCW;
            backrightCCW;
        elseif frontleft(3,3,1)==g(:,:,1)&&frontleft(3,3,2)==g(:,:,2)&&frontleft(3,3,3)==g(:,:,3)&&frontright(3,1,1)==o(:,:,1)&&frontright(3,1,2)==o(:,:,2)&&frontright(3,1,3)==o(:,:,3)
            backleftCCW;
            bottomCCW;
            backleftCW;
            backrightCW;
            bottomCW;
            backrightCCW;
        elseif frontright(3,3,1)==w(:,:,1)&&frontright(3,3,2)==w(:,:,2)&&frontright(3,3,3)==w(:,:,3)&&backright(3,1,1)==g(:,:,1)&&backright(3,1,2)==g(:,:,2)&&backright(3,1,3)==g(:,:,3)
           backleftCCW;
           bottomCW;
           backleftCW;
        elseif frontright(3,3,1)==o(:,:,1)&&frontright(3,3,2)==o(:,:,2)&&frontright(3,3,3)==o(:,:,3)&&backright(3,1,1)==w(:,:,1)&&backright(3,1,2)==w(:,:,2)&&backright(3,1,3)==w(:,:,3)
            bottomCW;
            backleftCCW;
            bottomCCW;
            backleftCW;
        elseif frontright(3,3,1)==g(:,:,1)&&frontright(3,3,2)==g(:,:,2)&&frontright(3,3,3)==g(:,:,3)&&backright(3,1,1)==o(:,:,1)&&backright(3,1,2)==o(:,:,2)&&backright(3,1,3)==o(:,:,3)
            backleftCCW;
            bottomCCW;
            bottomCCW;
            backleftCW;
            backrightCW;
            bottomCW;
            backrightCCW;
        else error('white, orange, and green corner piece not found, invalid cube')  
        end
end