%start solving the bottom y cross
if frontleft(3,2,1)==r(:,:,1)&&frontleft(3,2,2)==r(:,:,2)&&frontleft(3,2,3)==r(:,:,3)&&frontright(3,2,1)==b(:,:,1)&&frontright(3,2,2)==b(:,:,2)&&frontright(3,2,3)==b(:,:,3)&&backleft(3,2,1)==g(:,:,1)&&backleft(3,2,2)==g(:,:,2)&&backleft(3,2,3)==g(:,:,3)&&backright(3,2,1)==o(:,:,1)&&backright(3,2,2)==o(:,:,2)&&backright(3,2,3)==o(:,:,3) 
else
    %aligns yellow and red edge to simplify this step
    if frontleft(3,2,1)==r(:,:,1)&&frontleft(3,2,2)==r(:,:,2)&&frontleft(3,2,3)==r(:,:,3)
    else
        if frontright(3,2,1)==r(:,:,1)&&frontright(3,2,2)==r(:,:,2)&&frontright(3,2,3)==r(:,:,3)
            bottomCCW;
        elseif backright(3,2,1)==r(:,:,1)&&backright(3,2,2)==r(:,:,2)&&backright(3,2,3)==r(:,:,3)
            bottomCCW;
            bottomCCW;
        elseif backleft(3,2,1)==r(:,:,1)&&backleft(3,2,2)==r(:,:,2)&&backleft(3,2,3)==r(:,:,3)
            bottomCW;
        end
    end
    if frontleft(3,2,1)==r(:,:,1)&&frontleft(3,2,2)==r(:,:,2)&&frontleft(3,2,3)==r(:,:,3)&&frontright(3,2,1)==b(:,:,1)&&frontright(3,2,2)==b(:,:,2)&&frontright(3,2,3)==b(:,:,3)&&backleft(3,2,1)==g(:,:,1)&&backleft(3,2,2)==g(:,:,2)&&backleft(3,2,3)==g(:,:,3)&&backright(3,2,1)==o(:,:,1)&&backright(3,2,2)==o(:,:,2)&&backright(3,2,3)==o(:,:,3) 
    else 
        if  frontright(3,2,1)==g(:,:,1)&&frontright(3,2,2)==g(:,:,2)&&frontright(3,2,3)==g(:,:,3)&&backleft(3,2,1)==b(:,:,1)&&backleft(3,2,2)==b(:,:,2)&&backleft(3,2,3)==b(:,:,3)&&backright(3,2,1)==o(:,:,1)&&backright(3,2,2)==o(:,:,2)&&backright(3,2,3)==o(:,:,3)
            backleftCW;
            bottomCW;
            backleftCCW;
            bottomCW;
            backleftCW;
            bottomCCW;
            bottomCCW;
            backleftCCW;
            frontleftCW;
            bottomCW;
            frontleftCCW;
            bottomCW;
            frontleftCW;
            bottomCCW;
            bottomCCW;
            frontleftCCW;
            bottomCW;
        elseif frontright(3,2,1)==b(:,:,1)&&frontright(3,2,2)==b(:,:,2)&&frontright(3,2,3)==b(:,:,3)&&backleft(3,2,1)==o(:,:,1)&&backleft(3,2,2)==o(:,:,2)&&backleft(3,2,3)==o(:,:,3)&&backright(3,2,1)==g(:,:,1)&&backright(3,2,2)==g(:,:,2)&&backright(3,2,3)==g(:,:,3)
            frontrightCW;
            bottomCW;
            frontrightCCW;
            bottomCW;
            frontrightCW;
            bottomCCW;
            bottomCCW;
            frontrightCCW;
            bottomCW;
        elseif frontright(3,2,1)==g(:,:,1)&&frontright(3,2,2)==g(:,:,2)&&frontright(3,2,3)==g(:,:,3)&&backleft(3,2,1)==o(:,:,1)&&backleft(3,2,2)==o(:,:,2)&&backleft(3,2,3)==o(:,:,3)&&backright(3,2,1)==b(:,:,1)&&backright(3,2,2)==b(:,:,2)&&backright(3,2,3)==b(:,:,3)
            backleftCW;
            bottomCW;
            backleftCCW;
            bottomCW;
            backleftCW;
            bottomCCW;
            bottomCCW;
            backleftCCW;
        elseif frontright(3,2,1)==o(:,:,1)&&frontright(3,2,2)==o(:,:,2)&&frontright(3,2,3)==o(:,:,3)&&backleft(3,2,1)==g(:,:,1)&&backleft(3,2,2)==g(:,:,2)&&backleft(3,2,3)==g(:,:,3)&&backright(3,2,1)==b(:,:,1)&&backright(3,2,2)==b(:,:,2)&&backright(3,2,3)==b(:,:,3)
            backleftCCW;
            bottomCCW;
            backleftCW;
            bottomCCW;
            backleftCCW;
            bottomCCW;
            bottomCCW;
            backleftCW;
            bottomCCW;
        elseif frontright(3,2,1)==o(:,:,1)&&frontright(3,2,2)==o(:,:,2)&&frontright(3,2,3)==o(:,:,3)&&backleft(3,2,1)==b(:,:,1)&&backleft(3,2,2)==b(:,:,2)&&backleft(3,2,3)==b(:,:,3)&&backright(3,2,1)==g(:,:,1)&&backright(3,2,2)==g(:,:,2)&&backright(3,2,3)==g(:,:,3)
            frontrightCCW;
            bottomCCW;
            frontrightCW;
            bottomCCW;
            frontrightCCW;
            bottomCCW;
            bottomCCW;
            frontrightCW;
        else
            error('something is wrong....')
        end
    end
    
end
