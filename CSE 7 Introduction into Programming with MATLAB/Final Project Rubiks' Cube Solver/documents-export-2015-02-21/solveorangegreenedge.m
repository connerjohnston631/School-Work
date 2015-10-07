%look for and solve the second layer of the cube
%look for and put into place the blue and orange edge piece
if backright(2,3,1)==o(:,:,1) && backright(2,3,2)==o(:,:,2) && backright(2,3,3)==o(:,:,3) &&backleft(2,1,1)==g(:,:,1) &&backleft(2,1,2)==g(:,:,2) &&backleft(2,1,3)==g(:,:,3)
else
	if backright(2,3,1)==g(:,:,1) && backright(2,3,2)==g(:,:,2) && backright(2,3,3)==g(:,:,3) &&backleft(2,1,1)==o(:,:,1) &&backleft(2,1,2)==o(:,:,2) &&backleft(2,1,3)==o(:,:,3)
        backleftCCW;
        bottomCCW;
        backleftCW;
        bottomCW;
        backrightCW;
        bottomCW;
        backrightCCW;
        bottomCW;
        backleftCCW;
        bottomCCW;
        backleftCW;
        bottomCW;
        backrightCW;
        bottomCW;
        backrightCCW;
	elseif backleft(2,3,1)==o(:,:,1) && backleft(2,3,2)==o(:,:,2) && backleft(2,3,3)==o(:,:,3) &&frontleft(2,1,1)==g(:,:,1) &&frontleft(2,1,2)==g(:,:,2) &&frontleft(2,1,3)==g(:,:,3)
        frontleftCCW;
        bottomCCW;
        frontleftCW;
        bottomCW;
        backleftCW;
        bottomCW;
        backleftCCW;
        bottomCCW;
        backrightCW;
        bottomCW;
        backrightCCW;
        bottomCCW;
        backleftCCW;
        bottomCCW;
        backleftCW;
	elseif backleft(2,3,1)==g(:,:,1) && backleft(2,3,2)==g(:,:,2) && backleft(2,3,3)==g(:,:,3) &&frontleft(2,1,1)==o(:,:,1) &&frontleft(2,1,2)==o(:,:,2) &&frontleft(2,1,3)==o(:,:,3)
        frontleftCCW;
        bottomCCW;
        frontleftCW;
        bottomCW;
        backleftCW;
        bottomCW;
        backleftCCW;
        backleftCCW;
        bottomCCW;
        backleftCW;
        bottomCW;
        backrightCW;
        bottomCW;
        backrightCCW;
	elseif backright(3,2,1)==o(:,:,1) && backright(3,2,2)==o(:,:,2) && backright(3,2,3)==o(:,:,3) &&bottom(1,2,1)==g(:,:,1) &&bottom(1,2,2)==g(:,:,2) &&bottom(1,2,3)==g(:,:,3)
        bottomCCW;
        backleftCCW;
        bottomCCW;
        backleftCW;
        bottomCW;
        backrightCW;
        bottomCW;
        backrightCCW;
	elseif backright(3,2,1)==g(:,:,1) && backright(3,2,2)==g(:,:,2) && backright(3,2,3)==g(:,:,3) &&bottom(1,2,1)==o(:,:,1) &&bottom(1,2,2)==o(:,:,2) &&bottom(1,2,3)==o(:,:,3)
        bottomCCW;
        bottomCCW;
        backrightCW;
        bottomCW;
        backrightCCW;
        bottomCCW;
        backleftCCW;
        bottomCCW;
        backleftCW;
	elseif backleft(3,2,1)==o(:,:,1) && backleft(3,2,2)==o(:,:,2) && backleft(3,2,3)==o(:,:,3) &&bottom(2,3,1)==g(:,:,1) &&bottom(2,3,2)==g(:,:,2) &&bottom(2,3,3)==g(:,:,3)
        bottomCCW;
        bottomCCW;
        backleftCCW;
        bottomCCW;
        backleftCW;
        bottomCW;
        backrightCW;
        bottomCW;
        backrightCCW;
    elseif backleft(3,2,1)==g(:,:,1) && backleft(3,2,2)==g(:,:,2) && backleft(3,2,3)==g(:,:,3) &&bottom(2,3,1)==o(:,:,1) &&bottom(2,3,2)==o(:,:,2) &&bottom(2,3,3)==o(:,:,3)
        bottomCW;
        backrightCW;
        bottomCW;
        backrightCCW;
        bottomCCW;
        backleftCCW;
        bottomCCW;
        backleftCW;
	elseif frontleft(3,2,1)==o(:,:,1) && frontleft(3,2,2)==o(:,:,2) && frontleft(3,2,3)==o(:,:,3) &&bottom(3,2,1)==g(:,:,1) &&bottom(3,2,2)==g(:,:,2) &&bottom(3,2,3)==g(:,:,3)
        bottomCW;
        backleftCCW;
        bottomCCW;
        backleftCW;
        bottomCW;
        backrightCW;
        bottomCW;
        backrightCCW;
	elseif frontleft(3,2,1)==g(:,:,1) && frontleft(3,2,2)==g(:,:,2) && frontleft(3,2,3)==g(:,:,3) &&bottom(3,2,1)==o(:,:,1) &&bottom(3,2,2)==o(:,:,2) &&bottom(3,2,3)==o(:,:,3)
        backrightCW;
        bottomCW;
        backrightCCW;
        bottomCCW;
        backleftCCW;
        bottomCCW;
        backleftCW;
    elseif frontright(3,2,1)==o(:,:,1) && frontright(3,2,2)==o(:,:,2) && frontright(3,2,3)==o(:,:,3) &&bottom(2,1,1)==g(:,:,1) &&bottom(2,1,2)==g(:,:,2) &&bottom(2,1,3)==g(:,:,3)
        backleftCCW;
        bottomCCW;
        backleftCW;
        bottomCW;
        backrightCW;
        bottomCW;
        backrightCCW;
	elseif frontright(3,2,1)==g(:,:,1) && frontright(3,2,2)==g(:,:,2) && frontright(3,2,3)==g(:,:,3) &&bottom(2,1,1)==o(:,:,1) &&bottom(2,1,2)==o(:,:,2) &&bottom(2,1,3)==o(:,:,3)
        bottomCCW;
        backrightCW;
        bottomCW;
        backrightCCW;
        bottomCCW;
        backleftCCW;
        bottomCCW;
        backleftCW;
    else error('orange and green edge piece not found, invalid cube')
end

end


