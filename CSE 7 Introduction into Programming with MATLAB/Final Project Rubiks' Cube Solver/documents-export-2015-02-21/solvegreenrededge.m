%look for and solve the second layer of the cube
%look for and put into place the blue and orange edge piece
if backleft(2,3,1)==g(:,:,1) && backleft(2,3,2)==g(:,:,2) && backleft(2,3,3)==g(:,:,3) &&frontleft(2,1,1)==r(:,:,1) &&frontleft(2,1,2)==r(:,:,2) &&frontleft(2,1,3)==r(:,:,3)
else
	if backleft(2,3,1)==r(:,:,1) && backleft(2,3,2)==r(:,:,2) && backleft(2,3,3)==r(:,:,3) &&frontleft(2,1,1)==g(:,:,1) &&frontleft(2,1,2)==g(:,:,2) &&frontleft(2,1,3)==g(:,:,3)
        frontleftCCW;
        bottomCCW;
        frontleftCW;
        bottomCW;
        backleftCW;
        bottomCW;
        backleftCCW;
        bottomCW;
        frontleftCCW;
        bottomCCW;
        frontleftCW;
        bottomCW;
        backleftCW;
        bottomCW;
        backleftCCW;
	elseif backleft(3,2,1)==g(:,:,1) && backleft(3,2,2)==g(:,:,2) && backleft(3,2,3)==g(:,:,3) &&bottom(2,3,1)==r(:,:,1) &&bottom(2,3,2)==r(:,:,2) &&bottom(2,3,3)==r(:,:,3)
        bottomCCW;
        frontleftCCW;
        bottomCCW;
        frontleftCW;
        bottomCW;
        backleftCW;
        bottomCW;
        backleftCCW;
	elseif backleft(3,2,1)==r(:,:,1) && backleft(3,2,2)==r(:,:,2) && backleft(3,2,3)==r(:,:,3) &&bottom(2,3,1)==g(:,:,1) &&bottom(2,3,2)==g(:,:,2) &&bottom(2,3,3)==g(:,:,3)
        bottomCCW;
        bottomCCW;
        backleftCW;
        bottomCW;
        backleftCCW;
        bottomCCW;
        frontleftCCW;
        bottomCCW;
        frontleftCW;
	elseif frontleft(3,2,1)==g(:,:,1) && frontleft(3,2,2)==g(:,:,2) && frontleft(3,2,3)==g(:,:,3) &&bottom(3,2,1)==r(:,:,1) &&bottom(3,2,2)==r(:,:,2) &&bottom(3,2,3)==r(:,:,3)
        bottomCCW;
        bottomCCW;
        frontleftCCW;
        bottomCCW;
        frontleftCW;
        bottomCW;
        backleftCW;
        bottomCW;
        backleftCCW;
    elseif frontleft(3,2,1)==r(:,:,1) && frontleft(3,2,2)==r(:,:,2) && frontleft(3,2,3)==r(:,:,3) &&bottom(3,2,1)==g(:,:,1) &&bottom(3,2,2)==g(:,:,2) &&bottom(3,2,3)==g(:,:,3)
        bottomCW;
        backleftCW;
        bottomCW;
        backleftCCW;
        bottomCCW;
        frontleftCCW;
        bottomCCW;
        frontleftCW;
	elseif frontright(3,2,1)==g(:,:,1) && frontright(3,2,2)==g(:,:,2) && frontright(3,2,3)==g(:,:,3) &&bottom(2,1,1)==r(:,:,1) &&bottom(2,1,2)==r(:,:,2) &&bottom(2,1,3)==r(:,:,3)
        bottomCW;
        frontleftCCW;
        bottomCCW;
        frontleftCW;
        bottomCW;
        backleftCW;
        bottomCW;
        backleftCCW;
	elseif frontright(3,2,1)==r(:,:,1) && frontright(3,2,2)==r(:,:,2) && frontright(3,2,3)==r(:,:,3) &&bottom(2,1,1)==g(:,:,1) &&bottom(2,1,2)==g(:,:,2) &&bottom(2,1,3)==g(:,:,3)
        backleftCW;
        bottomCW;
        backleftCCW;
        bottomCCW;
        frontleftCCW;
        bottomCCW;
        frontleftCW;
    elseif backright(3,2,1)==g(:,:,1) && backright(3,2,2)==g(:,:,2) && backright(3,2,3)==g(:,:,3) &&bottom(1,2,1)==r(:,:,1) &&bottom(1,2,2)==r(:,:,2) &&bottom(1,2,3)==r(:,:,3)
        frontleftCCW;
        bottomCCW;
        frontleftCW;
        bottomCW;
        backleftCW;
        bottomCW;
        backleftCCW;
	elseif backright(3,2,1)==r(:,:,1) && backright(3,2,2)==r(:,:,2) && backright(3,2,3)==r(:,:,3) &&bottom(1,2,1)==g(:,:,1) &&bottom(1,2,2)==g(:,:,2) &&bottom(1,2,3)==g(:,:,3)
        bottomCCW;
        backleftCW;
        bottomCW;
        backleftCCW;
        bottomCCW;
        frontleftCCW;
        bottomCCW;
        frontleftCW;
    else error('green and red edge piece not found, invalid cube')
end

end


