%finds and places bottom corners
%checks position of first piece
%if piece A is in pos.A
if (bottom(1,1,1)==y(:,:,1)&&bottom(1,1,2)==y(:,:,2)&&bottom(1,1,3)==y(:,:,3)&&backright(3,1,1)==o(:,:,1)&&backright(3,1,2)==o(:,:,2)&&backright(3,1,2)==o(:,:,2))||(bottom(1,1,1)==o(:,:,1)&&bottom(1,1,2)==o(:,:,2)&&bottom(1,1,3)==o(:,:,3)&&backright(3,1,1)==b(:,:,1)&&backright(3,1,2)==b(:,:,2)&&backright(3,1,2)==b(:,:,2))||(bottom(1,1,1)==b(:,:,1)&&bottom(1,1,2)==b(:,:,2)&&bottom(1,1,3)==b(:,:,3)&&backright(3,1,1)==y(:,:,1)&&backright(3,1,2)==y(:,:,2)&&backright(3,1,2)==y(:,:,2))
    %checks position of second piece
    %...and piece B is in pos. B
    if(bottom(1,3,1)==y(:,:,1)&&bottom(1,3,2)==y(:,:,2)&&bottom(1,3,3)==y(:,:,3)&&backright(3,3,1)==o(:,:,1)&&backright(3,3,2)==o(:,:,2)&&backright(3,3,3)==o(:,:,3))||(bottom(1,3,1)==o(:,:,1)&&bottom(1,3,2)==o(:,:,2)&&bottom(1,3,3)==o(:,:,3)&&backright(3,3,1)==g(:,:,1)&&backright(3,3,2)==g(:,:,2)&&backright(3,3,3)==g(:,:,3))||(bottom(1,3,1)==g(:,:,1)&&bottom(1,3,2)==g(:,:,2)&&bottom(1,3,3)==g(:,:,3)&&backright(3,3,1)==y(:,:,1)&&backright(3,3,2)==y(:,:,2)&&backright(3,3,3)==y(:,:,3))
        %and piece C is in pos. C...
        if (bottom(3,1,1)==y(:,:,1)&&bottom(3,1,2)==y(:,:,2)&&bottom(3,1,3)==y(:,:,3)&&frontleft(3,3,1)==r(:,:,1)&&frontleft(3,3,2)==r(:,:,2)&&frontleft(3,3,3)==r(:,:,3))||(bottom(3,1,1)==r(:,:,1)&&bottom(3,1,2)==r(:,:,2)&&bottom(3,1,3)==r(:,:,3)&&frontleft(3,3,1)==b(:,:,1)&&frontleft(3,3,2)==b(:,:,2)&&frontleft(3,3,3)==b(:,:,3))||(bottom(3,1,1)==b(:,:,1)&&bottom(3,1,2)==b(:,:,2)&&bottom(3,1,3)==b(:,:,3)&&frontleft(3,3,1)==y(:,:,1)&&frontleft(3,3,2)==y(:,:,2)&&frontleft(3,3,3)==y(:,:,3))
        else 
            error('corner pieces swapped, invalid cube')
        end
        %...or if piece C is in pos. B...
    elseif(bottom(1,3,1)==y(:,:,1)&&bottom(1,3,2)==y(:,:,2)&&bottom(1,3,3)==y(:,:,3)&&backright(3,3,1)==r(:,:,1)&&backright(3,3,2)==r(:,:,2)&&backright(3,3,3)==r(:,:,3))||(bottom(1,3,1)==r(:,:,1)&&bottom(1,3,2)==r(:,:,2)&&bottom(1,3,3)==r(:,:,3)&&backright(3,3,1)==b(:,:,1)&&backright(3,3,2)==b(:,:,2)&&backright(3,3,3)==b(:,:,3))||(bottom(1,3,1)==b(:,:,1)&&bottom(1,3,2)==b(:,:,2)&&bottom(1,3,3)==b(:,:,3)&&backright(3,3,1)==y(:,:,1)&&backright(3,3,2)==y(:,:,2)&&backright(3,3,3)==y(:,:,3))
        %...and D is in pos C...
        if (bottom(3,1,1)==y(:,:,1)&&bottom(3,1,2)==y(:,:,2)&&bottom(3,1,3)==y(:,:,3)&&frontleft(3,3,1)==g(:,:,1)&&frontleft(3,3,2)==g(:,:,2)&&frontleft(3,3,3)==g(:,:,3))||(bottom(3,1,1)==g(:,:,1)&&bottom(3,1,2)==g(:,:,2)&&bottom(3,1,3)==g(:,:,3)&&frontleft(3,3,1)==r(:,:,1)&&frontleft(3,3,2)==r(:,:,2)&&frontleft(3,3,3)==r(:,:,3))||(bottom(3,1,1)==r(:,:,1)&&bottom(3,1,2)==r(:,:,2)&&bottom(3,1,3)==r(:,:,3)&&frontleft(3,3,1)==y(:,:,1)&&frontleft(3,3,2)==y(:,:,2)&&frontleft(3,3,3)==y(:,:,3))
           frontleftCW;
           bottomCCW;
           backrightCCW;
           bottomCW;
           frontleftCCW;
           bottomCCW;
           backrightCW;
           bottomCW;
        else 
            error('corner pieces swapped, invalid cube')
        end
        %if piece D is in pos B...
    elseif(bottom(1,3,1)==y(:,:,1)&&bottom(1,3,2)==y(:,:,2)&&bottom(1,3,3)==y(:,:,3)&&backright(3,3,1)==g(:,:,1)&&backright(3,3,2)==g(:,:,2)&&backright(3,3,3)==g(:,:,3))||(bottom(1,3,1)==g(:,:,1)&&bottom(1,3,2)==g(:,:,2)&&bottom(1,3,3)==g(:,:,3)&&backright(3,3,1)==r(:,:,1)&&backright(3,3,2)==r(:,:,2)&&backright(3,3,3)==r(:,:,3))||(bottom(1,3,1)==r(:,:,1)&&bottom(1,3,2)==r(:,:,2)&&bottom(1,3,3)==r(:,:,3)&&backright(3,3,1)==y(:,:,1)&&backright(3,3,2)==y(:,:,2)&&backright(3,3,3)==y(:,:,3))
        %and B in C...
        if (bottom(3,1,1)==y(:,:,1)&&bottom(3,1,2)==y(:,:,2)&&bottom(3,1,3)==y(:,:,3)&&frontleft(3,3,1)==o(:,:,1)&&frontleft(3,3,2)==o(:,:,2)&&frontleft(3,3,3)==o(:,:,3))||(bottom(3,1,1)==o(:,:,1)&&bottom(3,1,2)==o(:,:,2)&&bottom(3,1,3)==o(:,:,3)&&frontleft(3,3,1)==g(:,:,1)&&frontleft(3,3,2)==g(:,:,2)&&frontleft(3,3,3)==g(:,:,3))||(bottom(3,1,1)==g(:,:,1)&&bottom(3,1,2)==g(:,:,2)&&bottom(3,1,3)==g(:,:,3)&&frontleft(3,3,1)==y(:,:,1)&&frontleft(3,3,2)==y(:,:,2)&&frontleft(3,3,3)==y(:,:,3))
           bottomCCW;
           backrightCCW;
           bottomCW;
           frontleftCW;
           bottomCCW;
           backrightCW;
           bottomCW;
           frontleftCCW;        
        else
            error('corner pieces swapped, invalid cube')
        end        
    end
    %or if piece B is in pos A... X/
elseif (bottom(1,1,1)==y(:,:,1)&&bottom(1,1,2)==y(:,:,2)&&bottom(1,1,3)==y(:,:,3)&&backright(3,1,1)==g(:,:,1)&&backright(3,1,2)==g(:,:,2)&&backright(3,1,2)==g(:,:,2))||(bottom(1,1,1)==g(:,:,1)&&bottom(1,1,2)==g(:,:,2)&&bottom(1,1,3)==g(:,:,3)&&backright(3,1,1)==o(:,:,1)&&backright(3,1,2)==o(:,:,2)&&backright(3,1,2)==o(:,:,2))||(bottom(1,1,1)==o(:,:,1)&&bottom(1,1,2)==o(:,:,2)&&bottom(1,1,3)==o(:,:,3)&&backright(3,1,1)==y(:,:,1)&&backright(3,1,2)==y(:,:,2)&&backright(3,1,2)==y(:,:,2))
% and piece C is in pos B
    if (bottom(1,3,1)==y(:,:,1)&&bottom(1,3,2)==y(:,:,2)&&bottom(1,3,3)==y(:,:,3)&&backright(3,3,1)==r(:,:,1)&&backright(3,3,2)==r(:,:,2)&&backright(3,3,3)==r(:,:,3))||(bottom(1,3,1)==r(:,:,1)&&bottom(1,3,2)==r(:,:,2)&&bottom(1,3,3)==r(:,:,3)&&backright(3,3,1)==b(:,:,1)&&backright(3,3,2)==b(:,:,2)&&backright(3,3,3)==b(:,:,3))||(bottom(1,3,1)==b(:,:,1)&&bottom(1,3,2)==b(:,:,2)&&bottom(1,3,3)==b(:,:,3)&&backright(3,3,1)==y(:,:,1)&&backright(3,3,2)==y(:,:,2)&&backright(3,3,3)==y(:,:,3))
 %and piece A is in pos C...
        if (bottom(3,1,1)==y(:,:,1)&&bottom(3,1,2)==y(:,:,2)&&bottom(3,1,3)==y(:,:,3)&&frontleft(3,3,1)==b(:,:,1)&&frontleft(3,3,2)==b(:,:,2)&&frontleft(3,3,3)==b(:,:,3))||(bottom(3,1,1)==b(:,:,1)&&bottom(3,1,2)==b(:,:,2)&&bottom(3,1,3)==b(:,:,3)&&frontleft(3,3,1)==o(:,:,1)&&frontleft(3,3,2)==o(:,:,2)&&frontleft(3,3,3)==o(:,:,3))||(bottom(3,1,1)==o(:,:,1)&&bottom(3,1,2)==o(:,:,2)&&bottom(3,1,3)==o(:,:,3)&&frontleft(3,3,1)==y(:,:,1)&&frontleft(3,3,2)==y(:,:,2)&&frontleft(3,3,3)==y(:,:,3))
            frontrightCCW;
            bottomCW;
            backleftCW;
            bottomCCW;
            frontrightCW;
            bottomCW;
            backleftCCW;
            bottomCCW;            
        else
            error ('corner pieces swapped, invalid cube')
        end
        %piece A is in B...
    elseif (bottom(1,3,1)==y(:,:,1)&&bottom(1,3,2)==y(:,:,2)&&bottom(1,3,3)==y(:,:,3)&&backright(3,3,1)==b(:,:,1)&&backright(3,3,2)==b(:,:,2)&&backright(3,3,3)==b(:,:,3))||(bottom(1,3,1)==b(:,:,1)&&bottom(1,3,2)==b(:,:,2)&&bottom(1,3,3)==b(:,:,3)&&backright(3,3,1)==o(:,:,1)&&backright(3,3,2)==o(:,:,2)&&backright(3,3,3)==o(:,:,3))||(bottom(1,3,1)==o(:,:,1)&&bottom(1,3,2)==o(:,:,2)&&bottom(1,3,3)==o(:,:,3)&&backright(3,3,1)==y(:,:,1)&&backright(3,3,2)==y(:,:,2)&&backright(3,3,3)==y(:,:,3))
%and piece D is in pos. C...
        if (bottom(3,1,1)==y(:,:,1)&&bottom(3,1,2)==y(:,:,2)&&bottom(3,1,3)==y(:,:,3)&&frontleft(3,3,1)==g(:,:,1)&&frontleft(3,3,2)==g(:,:,2)&&frontleft(3,3,3)==g(:,:,3))||(bottom(3,1,1)==g(:,:,1)&&bottom(3,1,2)==g(:,:,2)&&bottom(3,1,3)==g(:,:,3)&&frontleft(3,3,1)==r(:,:,1)&&frontleft(3,3,2)==r(:,:,2)&&frontleft(3,3,3)==r(:,:,3))||(bottom(3,1,1)==r(:,:,1)&&bottom(3,1,2)==r(:,:,2)&&bottom(3,1,3)==r(:,:,3)&&frontleft(3,3,1)==y(:,:,1)&&frontleft(3,3,2)==y(:,:,2)&&frontleft(3,3,3)==y(:,:,3))
            bottomCW;
            frontleftCW;
            bottomCCW;
            backrightCCW;
            bottomCW;
            frontleftCCW;
            bottomCCW;
            backrightCW;
            frontleftCW;
            bottomCCW;
            backrightCCW;
            bottomCW;
            frontleftCCW;
            bottomCCW;
            backrightCW;
            bottomCW;
        else
                error ('corner pieces swapped, invalid cube')
        end
        %if D is in pos B
    elseif (bottom(1,3,1)==y(:,:,1)&&bottom(1,3,2)==y(:,:,2)&&bottom(1,3,3)==y(:,:,3)&&backright(3,3,1)==g(:,:,1)&&backright(3,3,2)==g(:,:,2)&&backright(3,3,3)==g(:,:,3))||(bottom(1,3,1)==g(:,:,1)&&bottom(1,3,2)==g(:,:,2)&&bottom(1,3,3)==g(:,:,3)&&backright(3,3,1)==r(:,:,1)&&backright(3,3,2)==r(:,:,2)&&backright(3,3,3)==r(:,:,3))||(bottom(1,3,1)==r(:,:,1)&&bottom(1,3,2)==r(:,:,2)&&bottom(1,3,3)==r(:,:,3)&&backright(3,3,1)==y(:,:,1)&&backright(3,3,2)==y(:,:,2)&&backright(3,3,3)==y(:,:,3))
        %if C is in C
        if (bottom(3,1,1)==y(:,:,1)&&bottom(3,1,2)==y(:,:,2)&&bottom(3,1,3)==y(:,:,3)&&frontleft(3,3,1)==r(:,:,1)&&frontleft(3,3,2)==r(:,:,2)&&frontleft(3,3,3)==r(:,:,3))||(bottom(3,1,1)==r(:,:,1)&&bottom(3,1,2)==r(:,:,2)&&bottom(3,1,3)==r(:,:,3)&&frontleft(3,3,1)==b(:,:,1)&&frontleft(3,3,2)==b(:,:,2)&&frontleft(3,3,3)==b(:,:,3))||(bottom(3,1,1)==b(:,:,1)&&bottom(3,1,2)==b(:,:,2)&&bottom(3,1,3)==b(:,:,3)&&frontleft(3,3,1)==y(:,:,1)&&frontleft(3,3,2)==y(:,:,2)&&frontleft(3,3,3)==y(:,:,3))
            backrightCCW;
            bottomCW;
            frontleftCW;
            bottomCCW;
            backrightCW;
            bottomCW;
            frontleftCCW;
            bottomCCW;
        else
                error ('corner pieces swapped, invalid cube')
        end
        
    end
    %if C is in A...
elseif (bottom(1,1,1)==y(:,:,1)&&bottom(1,1,2)==y(:,:,2)&&bottom(1,1,3)==y(:,:,3)&&backright(3,1,1)==b(:,:,1)&&backright(3,1,2)==b(:,:,2)&&backright(3,1,2)==b(:,:,2))||(bottom(1,1,1)==b(:,:,1)&&bottom(1,1,2)==b(:,:,2)&&bottom(1,1,3)==b(:,:,3)&&backright(3,1,1)==r(:,:,1)&&backright(3,1,2)==r(:,:,2)&&backright(3,1,2)==r(:,:,2))||(bottom(1,1,1)==r(:,:,1)&&bottom(1,1,2)==r(:,:,2)&&bottom(1,1,3)==r(:,:,3)&&backright(3,1,1)==y(:,:,1)&&backright(3,1,2)==y(:,:,2)&&backright(3,1,2)==y(:,:,2))
    %and A is in B...
    if (bottom(1,3,1)==y(:,:,1)&&bottom(1,3,2)==y(:,:,2)&&bottom(1,3,3)==y(:,:,3)&&backright(3,3,1)==b(:,:,1)&&backright(3,3,2)==b(:,:,2)&&backright(3,3,3)==b(:,:,3))||(bottom(1,3,1)==b(:,:,1)&&bottom(1,3,2)==b(:,:,2)&&bottom(1,3,3)==b(:,:,3)&&backright(3,3,1)==o(:,:,1)&&backright(3,3,2)==o(:,:,2)&&backright(3,3,3)==o(:,:,3))||(bottom(1,3,1)==o(:,:,1)&&bottom(1,3,2)==o(:,:,2)&&bottom(1,3,3)==o(:,:,3)&&backright(3,3,1)==y(:,:,1)&&backright(3,3,2)==y(:,:,2)&&backright(3,3,3)==y(:,:,3))
        %and B is in C...
        if(bottom(3,1,1)==y(:,:,1)&&bottom(3,1,2)==y(:,:,2)&&bottom(3,1,3)==y(:,:,3)&&frontleft(3,3,1)==o(:,:,1)&&frontleft(3,3,2)==o(:,:,2)&&frontleft(3,3,3)==o(:,:,3))||(bottom(3,1,1)==o(:,:,1)&&bottom(3,1,2)==o(:,:,2)&&bottom(3,1,3)==o(:,:,3)&&frontleft(3,3,1)==g(:,:,1)&&frontleft(3,3,2)==g(:,:,2)&&frontleft(3,3,3)==g(:,:,3))||(bottom(3,1,1)==g(:,:,1)&&bottom(3,1,2)==g(:,:,2)&&bottom(3,1,3)==g(:,:,3)&&frontleft(3,3,1)==y(:,:,1)&&frontleft(3,3,2)==y(:,:,2)&&frontleft(3,3,3)==y(:,:,3))
          bottomCW;
          backleftCW;
          bottomCCW;
          frontrightCCW;
          bottomCW;
          backleftCCW;
          bottomCCW;
          frontrightCW;
        else
                error ('corner pieces swapped, invalid cube')
        end
        %B is in B
    elseif(bottom(1,3,1)==y(:,:,1)&&bottom(1,3,2)==y(:,:,2)&&bottom(1,3,3)==y(:,:,3)&&backright(3,3,1)==o(:,:,1)&&backright(3,3,2)==o(:,:,2)&&backright(3,3,3)==o(:,:,3))||(bottom(1,3,1)==o(:,:,1)&&bottom(1,3,2)==o(:,:,2)&&bottom(1,3,3)==o(:,:,3)&&backright(3,3,1)==g(:,:,1)&&backright(3,3,2)==g(:,:,2)&&backright(3,3,3)==g(:,:,3))||(bottom(1,3,1)==g(:,:,1)&&bottom(1,3,2)==g(:,:,2)&&bottom(1,3,3)==g(:,:,3)&&backright(3,3,1)==y(:,:,1)&&backright(3,3,2)==y(:,:,2)&&backright(3,3,3)==y(:,:,3))
        %and D is in C
        if (bottom(3,1,1)==y(:,:,1)&&bottom(3,1,2)==y(:,:,2)&&bottom(3,1,3)==y(:,:,3)&&frontleft(3,3,1)==g(:,:,1)&&frontleft(3,3,2)==g(:,:,2)&&frontleft(3,3,3)==g(:,:,3))||(bottom(3,1,1)==g(:,:,1)&&bottom(3,1,2)==g(:,:,2)&&bottom(3,1,3)==g(:,:,3)&&frontleft(3,3,1)==r(:,:,1)&&frontleft(3,3,2)==r(:,:,2)&&frontleft(3,3,3)==r(:,:,3))||(bottom(3,1,1)==r(:,:,1)&&bottom(3,1,2)==r(:,:,2)&&bottom(3,1,3)==r(:,:,3)&&frontleft(3,3,1)==y(:,:,1)&&frontleft(3,3,2)==y(:,:,2)&&frontleft(3,3,3)==y(:,:,3))
        bottomCW;
        backrightCW;
        bottomCCW;
        frontleftCCW;
        bottomCW;
        backrightCCW;
        bottomCCW;
        frontleftCW;
        else
                error ('corner pieces swapped, invalid cube')
        end
        %D is in B
    elseif (bottom(1,3,1)==y(:,:,1)&&bottom(1,3,2)==y(:,:,2)&&bottom(1,3,3)==y(:,:,3)&&backright(3,3,1)==g(:,:,1)&&backright(3,3,2)==g(:,:,2)&&backright(3,3,3)==g(:,:,3))||(bottom(1,3,1)==g(:,:,1)&&bottom(1,3,2)==g(:,:,2)&&bottom(1,3,3)==g(:,:,3)&&backright(3,3,1)==r(:,:,1)&&backright(3,3,2)==r(:,:,2)&&backright(3,3,3)==r(:,:,3))||(bottom(1,3,1)==r(:,:,1)&&bottom(1,3,2)==r(:,:,2)&&bottom(1,3,3)==r(:,:,3)&&backright(3,3,1)==y(:,:,1)&&backright(3,3,2)==y(:,:,2)&&backright(3,3,3)==y(:,:,3))
       % A is in C
        if (bottom(3,1,1)==y(:,:,1)&&bottom(3,1,2)==y(:,:,2)&&bottom(3,1,3)==y(:,:,3)&&frontleft(3,3,1)==b(:,:,1)&&frontleft(3,3,2)==b(:,:,2)&&frontleft(3,3,3)==b(:,:,3))||(bottom(3,1,1)==b(:,:,1)&&bottom(3,1,2)==b(:,:,2)&&bottom(3,1,3)==b(:,:,3)&&frontleft(3,3,1)==o(:,:,1)&&frontleft(3,3,2)==o(:,:,2)&&frontleft(3,3,3)==o(:,:,3))||(bottom(3,1,1)==o(:,:,1)&&bottom(3,1,2)==o(:,:,2)&&bottom(3,1,3)==o(:,:,3)&&frontleft(3,3,1)==y(:,:,1)&&frontleft(3,3,2)==y(:,:,2)&&frontleft(3,3,3)==y(:,:,3))
            frontrightCCW;
            bottomCW;
            backleftCW;
            bottomCCW;
            frontrightCW;
            bottomCW;
            backleftCCW;
            frontrightCW;
            bottomCCW;
            backleftCCW;
            bottomCW;
            frontrightCCW;
            bottomCCW;
            backleftCW;
        else
                error ('corner pieces swapped, invalid cube')
        end
    end
%if D is in A (last one!!!)
elseif (bottom(1,1,1)==y(:,:,1)&&bottom(1,1,2)==y(:,:,2)&&bottom(1,1,3)==y(:,:,3)&&backright(3,1,1)==r(:,:,1)&&backright(3,1,2)==r(:,:,2)&&backright(3,1,2)==r(:,:,2))||(bottom(1,1,1)==r(:,:,1)&&bottom(1,1,2)==r(:,:,2)&&bottom(1,1,3)==r(:,:,3)&&backright(3,1,1)==g(:,:,1)&&backright(3,1,2)==g(:,:,2)&&backright(3,1,2)==g(:,:,2))||(bottom(1,1,1)==g(:,:,1)&&bottom(1,1,2)==g(:,:,2)&&bottom(1,1,3)==g(:,:,3)&&backright(3,1,1)==y(:,:,1)&&backright(3,1,2)==y(:,:,2)&&backright(3,1,2)==y(:,:,2))
  %A is in B...
  if (bottom(1,3,1)==y(:,:,1)&&bottom(1,3,2)==y(:,:,2)&&bottom(1,3,3)==y(:,:,3)&&backright(3,3,1)==b(:,:,1)&&backright(3,3,2)==b(:,:,2)&&backright(3,3,3)==b(:,:,3))||(bottom(1,3,1)==b(:,:,1)&&bottom(1,3,2)==b(:,:,2)&&bottom(1,3,3)==b(:,:,3)&&backright(3,3,1)==o(:,:,1)&&backright(3,3,2)==o(:,:,2)&&backright(3,3,3)==o(:,:,3))||(bottom(1,3,1)==o(:,:,1)&&bottom(1,3,2)==o(:,:,2)&&bottom(1,3,3)==o(:,:,3)&&backright(3,3,1)==y(:,:,1)&&backright(3,3,2)==y(:,:,2)&&backright(3,3,3)==y(:,:,3))
       %C is in C
       if(bottom(3,1,1)==y(:,:,1)&&bottom(3,1,2)==y(:,:,2)&&bottom(3,1,3)==y(:,:,3)&&frontleft(3,3,1)==r(:,:,1)&&frontleft(3,3,2)==r(:,:,2)&&frontleft(3,3,3)==r(:,:,3))||(bottom(3,1,1)==r(:,:,1)&&bottom(3,1,2)==r(:,:,2)&&bottom(3,1,3)==r(:,:,3)&&frontleft(3,3,1)==b(:,:,1)&&frontleft(3,3,2)==b(:,:,2)&&frontleft(3,3,3)==b(:,:,3))||(bottom(3,1,1)==b(:,:,1)&&bottom(3,1,2)==b(:,:,2)&&bottom(3,1,3)==b(:,:,3)&&frontleft(3,3,1)==y(:,:,1)&&frontleft(3,3,2)==y(:,:,2)&&frontleft(3,3,3)==y(:,:,3))
            bottomCW;
            frontleftCW;
            bottomCCW;
            backrightCCW;
            bottomCW;
            frontleftCCW;
            bottomCCW;
            backrightCW;
       else
                error ('corner pieces swapped, invalid cube')
       end
       %B is in B
  elseif (bottom(1,3,1)==y(:,:,1)&&bottom(1,3,2)==y(:,:,2)&&bottom(1,3,3)==y(:,:,3)&&backright(3,3,1)==o(:,:,1)&&backright(3,3,2)==o(:,:,2)&&backright(3,3,3)==o(:,:,3))||(bottom(1,3,1)==o(:,:,1)&&bottom(1,3,2)==o(:,:,2)&&bottom(1,3,3)==o(:,:,3)&&backright(3,3,1)==g(:,:,1)&&backright(3,3,2)==g(:,:,2)&&backright(3,3,3)==g(:,:,3))||(bottom(1,3,1)==g(:,:,1)&&bottom(1,3,2)==g(:,:,2)&&bottom(1,3,3)==g(:,:,3)&&backright(3,3,1)==y(:,:,1)&&backright(3,3,2)==y(:,:,2)&&backright(3,3,3)==y(:,:,3))
      %and A in C
      if (bottom(3,1,1)==y(:,:,1)&&bottom(3,1,2)==y(:,:,2)&&bottom(3,1,3)==y(:,:,3)&&frontleft(3,3,1)==b(:,:,1)&&frontleft(3,3,2)==b(:,:,2)&&frontleft(3,3,3)==b(:,:,3))||(bottom(3,1,1)==b(:,:,1)&&bottom(3,1,2)==b(:,:,2)&&bottom(3,1,3)==b(:,:,3)&&frontleft(3,3,1)==o(:,:,1)&&frontleft(3,3,2)==o(:,:,2)&&frontleft(3,3,3)==o(:,:,3))||(bottom(3,1,1)==o(:,:,1)&&bottom(3,1,2)==o(:,:,2)&&bottom(3,1,3)==o(:,:,3)&&frontleft(3,3,1)==y(:,:,1)&&frontleft(3,3,2)==y(:,:,2)&&frontleft(3,3,3)==y(:,:,3))
           frontleftCCW;
           bottomCW;
           backrightCW;
           bottomCCW;
           frontleftCW;
           bottomCW;
           backrightCCW;
           bottomCCW;
      else
                error ('corner pieces swapped, invalid cube')
      end
  %C is in B
  elseif (bottom(1,3,1)==y(:,:,1)&&bottom(1,3,2)==y(:,:,2)&&bottom(1,3,3)==y(:,:,3)&&backright(3,3,1)==r(:,:,1)&&backright(3,3,2)==r(:,:,2)&&backright(3,3,3)==r(:,:,3))||(bottom(1,3,1)==r(:,:,1)&&bottom(1,3,2)==r(:,:,2)&&bottom(1,3,3)==r(:,:,3)&&backright(3,3,1)==b(:,:,1)&&backright(3,3,2)==b(:,:,2)&&backright(3,3,3)==b(:,:,3))||(bottom(1,3,1)==b(:,:,1)&&bottom(1,3,2)==b(:,:,2)&&bottom(1,3,3)==b(:,:,3)&&backright(3,3,1)==y(:,:,1)&&backright(3,3,2)==y(:,:,2)&&backright(3,3,3)==y(:,:,3))
      %B is in C
      if (bottom(3,1,1)==y(:,:,1)&&bottom(3,1,2)==y(:,:,2)&&bottom(3,1,3)==y(:,:,3)&&frontleft(3,3,1)==o(:,:,1)&&frontleft(3,3,2)==o(:,:,2)&&frontleft(3,3,3)==o(:,:,3))||(bottom(3,1,1)==o(:,:,1)&&bottom(3,1,2)==o(:,:,2)&&bottom(3,1,3)==o(:,:,3)&&frontleft(3,3,1)==g(:,:,1)&&frontleft(3,3,2)==g(:,:,2)&&frontleft(3,3,3)==g(:,:,3))||(bottom(3,1,1)==g(:,:,1)&&bottom(3,1,2)==g(:,:,2)&&bottom(3,1,3)==g(:,:,3)&&frontleft(3,3,1)==y(:,:,1)&&frontleft(3,3,2)==y(:,:,2)&&frontleft(3,3,3)==y(:,:,3))
        frontrightCCW;
        bottomCW;
        backleftCW;
        bottomCCW;
        frontrightCW;
        bottomCW;
        backleftCCW;
        bottomCCW;
        backrightCCW;
        bottomCW;
        frontleftCW;
        bottomCCW;
        backrightCW;
        bottomCW;
        frontleftCCW;
        bottomCCW;
      else
                error ('corner pieces swapped, invalid cube')
      end
  end
else error ('invalid cube')
end
 
            
           