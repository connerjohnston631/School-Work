%look for and solve the second layer of the cube
%look for and put into place the blue and orange edge piece
if frontright(2,3,1)==b(:,:,1) && frontright(2,3,2)==b(:,:,2) && frontright(2,3,3)==b(:,:,3) &&backright(2,1,1)==o(:,:,1) &&backright(2,1,2)==o(:,:,2) &&backright(2,1,3)==o(:,:,3)
else
	if frontright(2,3,1)==o(:,:,1) && frontright(2,3,2)==o(:,:,2) && frontright(2,3,3)==o(:,:,3) &&backright(2,1,1)==b(:,:,1) &&backright(2,1,2)==b(:,:,2) &&backright(2,1,3)==b(:,:,3)
        backrightCCW;
        bottomCCW;
        backrightCW;
        bottomCW;
        frontrightCW;
        bottomCW;
        frontrightCCW;
        bottomCW;
        backrightCCW;
        bottomCCW;
        backrightCW;
        bottomCW;
        frontrightCW;
        bottomCW;
        frontrightCCW;
	elseif backright(2,3,1)==b(:,:,1) && backright(2,3,2)==b(:,:,2) && backright(2,3,3)==b(:,:,3) &&backleft(2,1,1)==o(:,:,1) &&backleft(2,1,2)==o(:,:,2) &&backleft(2,1,3)==o(:,:,3)
        backleftCCW;
        bottomCCW;
        backleftCW;
        bottomCW;
        backrightCW;
        bottomCW;
        backrightCCW;
        bottomCCW;
        frontrightCW;
        bottomCW;
        frontrightCCW;
        bottomCCW;
        backrightCCW;
        bottomCCW;
        backrightCW;
	elseif backright(2,3,1)==o(:,:,1) && backright(2,3,2)==o(:,:,2) && backright(2,3,3)==o(:,:,3) &&backleft(2,1,1)==b(:,:,1) &&backleft(2,1,2)==b(:,:,2) &&backleft(2,1,3)==b(:,:,3)
        backrightCCW;
        backrightCCW;
        topCCW;
        bottomCW;
        backleftCCW;
        backleftCCW;
        topCW;
	elseif backleft(2,3,1)==b(:,:,1) && backleft(2,3,2)==b(:,:,2) && backleft(2,3,3)==b(:,:,3) &&frontleft(2,1,1)==o(:,:,1) &&frontleft(2,1,2)==o(:,:,2) &&frontleft(2,1,3)==o(:,:,3)
        backleftCCW;
        backleftCCW;
        topCW;
        bottomCCW;
        backrightCCW;
        backrightCCW;
        topCCW;
	elseif backleft(2,3,1)==o(:,:,1) && backleft(2,3,2)==o(:,:,2) && backleft(2,3,3)==o(:,:,3) &&frontleft(2,1,1)==b(:,:,1) &&frontleft(2,1,2)==b(:,:,2) &&frontleft(2,1,3)==b(:,:,3)
        backleftCW;
        bottomCW;
        backleftCCW;
        bottomCCW;
        frontleftCCW;
        bottomCCW;
        frontleftCW;
        bottomCW;
        frontrightCW;
        bottomCW;
        frontrightCCW;
        bottomCCW;
        backrightCCW;
        bottomCCW;
        backrightCW;
	elseif frontright(3,2,1)==b(:,:,1) && frontright(3,2,2)==b(:,:,2) && frontright(3,2,3)==b(:,:,3) &&bottom(2,1,1)==o(:,:,1) &&bottom(2,1,2)==o(:,:,2) &&bottom(2,1,3)==o(:,:,3)
        bottomCCW;
        backrightCCW;
        bottomCCW;
        backrightCW;
        bottomCW;
        frontrightCW;
        bottomCW;
        frontrightCCW;
	elseif frontright(3,2,1)==o(:,:,1) && frontright(3,2,2)==o(:,:,2) && frontright(3,2,3)==o(:,:,3) &&bottom(2,1,1)==b(:,:,1) &&bottom(2,1,2)==b(:,:,2) &&bottom(2,1,3)==b(:,:,3)
        bottomCCW;
        bottomCCW;
        frontrightCW;
        bottomCW;
        frontrightCCW;
        bottomCCW;
        backrightCCW;
        bottomCCW;
        backrightCW;
	elseif backright(3,2,1)==b(:,:,1) && backright(3,2,2)==b(:,:,2) && backright(3,2,3)==b(:,:,3) &&bottom(1,2,1)==o(:,:,1) &&bottom(1,2,2)==o(:,:,2) &&bottom(1,2,3)==o(:,:,3)
        bottomCCW;
        bottomCCW;
        backrightCCW;
        bottomCCW;
        backrightCW;
        bottomCW;
        frontrightCW;
        bottomCW;
        frontrightCCW;
    elseif backright(3,2,1)==o(:,:,1) && backright(3,2,2)==o(:,:,2) && backright(3,2,3)==o(:,:,3) &&bottom(1,2,1)==b(:,:,1) &&bottom(1,2,2)==b(:,:,2) &&bottom(1,2,3)==b(:,:,3)
        bottomCW;
        frontrightCW;
        bottomCW;
        frontrightCCW;
        bottomCCW;
        backrightCCW;
        bottomCCW;
        backrightCW;
	elseif backleft(3,2,1)==b(:,:,1) && backleft(3,2,2)==b(:,:,2) && backleft(3,2,3)==b(:,:,3) &&bottom(2,3,1)==o(:,:,1) &&bottom(2,3,2)==o(:,:,2) &&bottom(2,3,3)==o(:,:,3)
        bottomCW;
        backrightCCW;
        bottomCCW;
        backrightCW;
        bottomCW;
        frontrightCW;
        bottomCW;
        frontrightCCW;
	elseif backleft(3,2,1)==o(:,:,1) && backleft(3,2,2)==o(:,:,2) && backleft(3,2,3)==o(:,:,3) &&bottom(2,3,1)==b(:,:,1) &&bottom(2,3,2)==b(:,:,2) &&bottom(2,3,3)==b(:,:,3)
        frontrightCW;
        bottomCW;
        frontrightCCW;
        bottomCCW;
        backrightCCW;
        bottomCCW;
        backrightCW;
    elseif frontleft(3,2,1)==b(:,:,1) && frontleft(3,2,2)==b(:,:,2) && frontleft(3,2,3)==b(:,:,3) &&bottom(3,2,1)==o(:,:,1) &&bottom(3,2,2)==o(:,:,2) &&bottom(3,2,3)==o(:,:,3)
        backrightCCW;
        bottomCCW;
        backrightCW;
        bottomCW;
        frontrightCW;
        bottomCW;
        frontrightCCW;
	elseif frontleft(3,2,1)==o(:,:,1) && frontleft(3,2,2)==o(:,:,2) && frontleft(3,2,3)==o(:,:,3) &&bottom(3,2,1)==b(:,:,1) &&bottom(3,2,2)==b(:,:,2) &&bottom(3,2,3)==b(:,:,3)
        bottomCCW;
        frontrightCW;
        bottomCW;
        frontrightCCW;
        bottomCCW;
        backrightCCW;
        bottomCCW;
        backrightCW;
    else error('blue and orange edge piece not found, invalid cube')
end

end


