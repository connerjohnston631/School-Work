%look for and solve the second layer of the cube
%look for and put into place the blue and red edge piece
if frontleft(2,3,1)==r(:,:,1) && frontleft(2,3,2)==r(:,:,2) && frontleft(2,3,3)==r(:,:,3) &&frontright(2,1,1)==b(:,:,1) &&frontright(2,1,2)==b(:,:,2) &&frontright(2,1,3)==b(:,:,3)
else
	if frontleft(2,3,1)==b(:,:,1) && frontleft(2,3,2)==b(:,:,2) && frontleft(2,3,3)==b(:,:,3) &&frontright(2,1,1)==r(:,:,1) &&frontright(2,1,2)==r(:,:,2) &&frontright(2,1,3)==r(:,:,3)
        frontrightCCW;
        bottomCCW;
        frontrightCW;
        bottomCW;
        frontleftCW;
        bottomCW;
        frontleftCCW;
        bottomCW;
        frontrightCCW;
        bottomCCW;
        frontrightCW;
        bottomCW;
        frontleftCW;
        bottomCW;
        frontleftCCW;
	elseif frontright(2,3,1)==r(:,:,1) && frontright(2,3,2)==r(:,:,2) && frontright(2,3,3)==r(:,:,3) &&backright(2,1,1)==b(:,:,1) &&backright(2,1,2)==b(:,:,2) &&backright(2,1,3)==b(:,:,3)
        backrightCCW;
        bottomCCW;
        backrightCW;
        bottomCW;
        frontrightCW;
        bottomCW;
        frontrightCCW;
        bottomCCW;
        frontleftCW;
        bottomCW;
        frontleftCCW;
        bottomCCW;
        frontrightCCW;
        bottomCCW;
        frontrightCW;
	elseif frontright(2,3,1)==b(:,:,1) && frontright(2,3,2)==b(:,:,2) && frontright(2,3,3)==b(:,:,3) &&backright(2,1,1)==r(:,:,1) &&backright(2,1,2)==r(:,:,2) &&backright(2,1,3)==r(:,:,3)
        frontrightCCW;
        frontrightCCW;
        topCCW;
        topCCW;
        bottomCCW;
        bottomCCW;
        backleftCCW;
        backleftCCW;
        topCCW;
        topCCW;
	elseif backright(2,3,1)==r(:,:,1) && backright(2,3,2)==r(:,:,2) && backright(2,3,3)==r(:,:,3) &&backleft(2,1,1)==b(:,:,1) &&backleft(2,1,2)==b(:,:,2) &&backleft(2,1,3)==b(:,:,3)
        backrightCCW;
        backrightCCW;
        topCW;
        bottomCCW;
        frontrightCCW;
        frontrightCCW;
        topCCW;
	elseif backright(2,3,1)==b(:,:,1) && backright(2,3,2)==b(:,:,2) && backright(2,3,3)==b(:,:,3) &&backleft(2,1,1)==r(:,:,1) &&backleft(2,1,2)==r(:,:,2) &&backleft(2,1,3)==r(:,:,3)
        backleftCCW;
        bottomCCW;
        backleftCW;
        bottomCW;
        backrightCW;
        bottomCW;
        backrightCCW;
        bottomCCW;
        frontrightCCW;
        bottomCCW;
        frontrightCW;
        bottomCW
        frontleftCW;
        bottomCW;
        frontleftCCW;        
	elseif backleft(2,3,1)==r(:,:,1) && backleft(2,3,2)==r(:,:,2) && backleft(2,3,3)==r(:,:,3) &&frontleft(2,1,1)==b(:,:,1) &&frontleft(2,1,2)==b(:,:,2) &&frontleft(2,1,3)==b(:,:,3)
        frontleftCCW;
        bottomCCW;
        frontleftCW;
        bottomCW;
        backleftCW;
        bottomCW;
        backleftCCW;
        bottomCW;
        frontleftCW;
        bottomCW;
        frontleftCCW;
        bottomCCW;
        frontrightCCW;
        bottomCCW;
        frontrightCW;
	elseif backleft(2,3,1)==b(:,:,1) && backleft(2,3,2)==b(:,:,2) && backleft(2,3,3)==b(:,:,3) &&frontleft(2,1,1)==r(:,:,1) &&frontleft(2,1,2)==r(:,:,2) &&frontleft(2,1,3)==r(:,:,3)
        frontleftCCW;
        frontleftCCW;
        topCCW;
        topCCW;
        bottomCCW;
        bottomCCW;
        backrightCCW;
        backrightCCW;
        topCCW;
        topCCW;
	elseif frontleft(3,2,1)==r(:,:,1) && frontleft(3,2,2)==r(:,:,2) && frontleft(3,2,3)==r(:,:,3) &&bottom(3,2,1)==b(:,:,1) &&bottom(3,2,2)==b(:,:,2) &&bottom(3,2,3)==b(:,:,3)
        bottomCCW;
        frontrightCCW;
        bottomCCW;
        frontrightCW;
        bottomCW;
        frontleftCW;
        bottomCW;
        frontleftCCW;
	elseif frontleft(3,2,1)==b(:,:,1) && frontleft(3,2,2)==b(:,:,2) && frontleft(3,2,3)==b(:,:,3) &&bottom(3,2,1)==r(:,:,1) &&bottom(3,2,2)==r(:,:,2) &&bottom(3,2,3)==r(:,:,3)
        bottomCCW;
        bottomCCW;
        frontleftCW;
        bottomCW;
        frontleftCCW;
        bottomCCW;
        frontrightCCW;
        bottomCCW;
        frontrightCW;
	elseif frontright(3,2,1)==r(:,:,1) && frontright(3,2,2)==r(:,:,2) && frontright(3,2,3)==r(:,:,3) &&bottom(2,1,1)==b(:,:,1) &&bottom(2,1,2)==b(:,:,2) &&bottom(2,1,3)==b(:,:,3)
        bottomCCW;
        bottomCCW;
        frontrightCCW;
        bottomCCW;
        frontrightCW;
        bottomCW;
        frontleftCW;
        bottomCW;
        frontleftCCW;
    elseif frontright(3,2,1)==b(:,:,1) && frontright(3,2,2)==b(:,:,2) && frontright(3,2,3)==b(:,:,3) &&bottom(2,1,1)==r(:,:,1) &&bottom(2,1,2)==r(:,:,2) &&bottom(2,1,3)==r(:,:,3)
        bottomCW;
        frontleftCW;
        bottomCW;
        frontleftCCW;
        bottomCCW;
        frontrightCCW;
        bottomCCW;
        frontrightCW;
	elseif backleft(3,2,1)==r(:,:,1) && backleft(3,2,2)==r(:,:,2) && backleft(3,2,3)==r(:,:,3) &&bottom(2,3,1)==b(:,:,1) &&bottom(2,3,2)==b(:,:,2) &&bottom(2,3,3)==b(:,:,3)
        frontrightCCW;
        bottomCCW;
        frontrightCW;
        bottomCW;
        frontleftCW;
        bottomCW;
        frontleftCCW;
	elseif backleft(3,2,1)==b(:,:,1) && backleft(3,2,2)==b(:,:,2) && backleft(3,2,3)==b(:,:,3) &&bottom(2,3,1)==r(:,:,1) &&bottom(2,3,2)==r(:,:,2) &&bottom(2,3,3)==r(:,:,3)
        bottomCCW;
        frontleftCW;
        bottomCW;
        frontleftCCW;
        bottomCCW;
        frontrightCCW;
        bottomCCW;
        frontrightCW;
    elseif backright(3,2,1)==r(:,:,1) && backright(3,2,2)==r(:,:,2) && backright(3,2,3)==r(:,:,3) &&bottom(1,2,1)==b(:,:,1) &&bottom(1,2,2)==b(:,:,2) &&bottom(1,2,3)==b(:,:,3)
        bottomCW;
        frontrightCCW;
        bottomCCW;
        frontrightCW;
        bottomCW;
        frontleftCW;
        bottomCW;
        frontleftCCW;
	elseif backright(3,2,1)==b(:,:,1) && backright(3,2,2)==b(:,:,2) && backright(3,2,3)==b(:,:,3) &&bottom(1,2,1)==r(:,:,1) &&bottom(1,2,2)==r(:,:,2) &&bottom(1,2,3)==r(:,:,3)
        frontleftCW;
        bottomCW;
        frontleftCCW;
        bottomCCW;
        frontrightCCW;
        bottomCCW;
        frontrightCW;
    else error('red and blue edge piece not found, invalid cube')
end

end


