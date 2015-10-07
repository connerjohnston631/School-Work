%rotates the bottom corners 
%checks orientation of yellow red blue corner
%if correct
if bottom(3,1,1)==y(:,:,1)&&bottom(3,1,2)==y(:,:,2)&&bottom(3,1,3)==y(:,:,3)&&frontleft(3,3,1)==r(:,:,1)&&frontleft(3,3,2)==r(:,:,2)&&frontleft(3,3,3)==r(:,:,3)
    %checks orientation of yellow blue orange corner
    %if correct
    if bottom(1,1,1)==y(:,:,1)&&bottom(1,1,2)==y(:,:,2)&&bottom(1,1,3)==y(:,:,3)&&backright(3,1,1)==o(:,:,1)&&backright(3,1,2)==o(:,:,2)&&backright(3,1,3)==o(:,:,3)
        %checks orientation of yellow orange green corner
        %if correct
        if bottom (1,3,1)==y(:,:,1)&&bottom (1,3,2)==y(:,:,2)&&bottom (1,3,3)==y(:,:,3)&&backright(3,3,1)==o(:,:,1)&&backright(3,3,2)==o(:,:,2)&&backright(3,3,3)==o(:,:,3)
            %checks orientation of yellow green red corner
            % if correct
            if bottom(3,3,1)==y(:,:,1)&&bottom(3,3,2)==y(:,:,2)&&bottom(3,3,3)==y(:,:,3)&&frontleft(3,1,1)==r(:,:,1)&&frontleft(3,1,2)==r(:,:,2)&&frontleft(3,1,3)==r(:,:,3)
            else 
                error('rotated corner piece, invalid cube')
            end
        %if rotated CW 
        elseif bottom (1,3,1)==g(:,:,1)&&bottom (1,3,2)==g(:,:,2)&&bottom (1,3,3)==g(:,:,3)&&backright(3,3,1)==y(:,:,1)&&backright(3,3,2)==y(:,:,2)&&backright(3,3,3)==y(:,:,3)
            %if rotated CCW
            if bottom(3,3,1)==g(:,:,1)&&bottom(3,3,2)==g(:,:,2)&&bottom(3,3,3)==g(:,:,3)&&frontleft(3,1,1)==y(:,:,1)&&frontleft(3,1,2)==y(:,:,2)&&frontleft(3,1,3)==y(:,:,3)
                bottomCCW;
                bottomCCW;
                bottomcornerCCW;
                bottomCCW;
                bottomcornerCCW;
                bottomcornerCCW;
                bottomCCW;
            else 
                error('rotated corner piece; invalid cube')
            end    
        %if rotated CCW
        elseif bottom (1,3,1)==o(:,:,1)&&bottom (1,3,2)==o(:,:,2)&&bottom (1,3,3)==o(:,:,3)&&backright(3,3,1)==g(:,:,1)&&backright(3,3,2)==g(:,:,2)&&backright(3,3,3)==g(:,:,3)
            %if rotated CW
            if bottom(3,3,1)==r(:,:,1)&&bottom(3,3,2)==r(:,:,2)&&bottom(3,3,3)==r(:,:,3)&&frontleft(3,1,1)==g(:,:,1)&&frontleft(3,1,2)==g(:,:,2)&&frontleft(3,1,3)==g(:,:,3)
                bottomCCW;
                bottomCCW;
                bottomcornerCCW;
                bottomcornerCCW;
                bottomCCW;
                bottomcornerCCW;
                bottomCCW;
            else 
                error('rotated corner piece; invalid cube')
            end        
        end    
    %if CW    
    elseif bottom(1,1,1)==o(:,:,1)&&bottom(1,1,2)==o(:,:,2)&&bottom(1,1,3)==o(:,:,3)&&backright(3,1,1)==b(:,:,1)&&backright(3,1,2)==b(:,:,2)&&backright(3,1,3)==b(:,:,3)
        %if correct
        if bottom (1,3,1)==y(:,:,1)&&bottom (1,3,2)==y(:,:,2)&&bottom (1,3,3)==y(:,:,3)&&backright(3,3,1)==o(:,:,1)&&backright(3,3,2)==o(:,:,2)&&backright(3,3,3)==o(:,:,3)
            %if CCW
            if bottom(3,3,1)==g(:,:,1)&&bottom(3,3,2)==g(:,:,2)&&bottom(3,3,3)==g(:,:,3)&&frontleft(3,1,1)==y(:,:,1)&&frontleft(3,1,2)==y(:,:,2)&&frontleft(3,1,3)==y(:,:,3)
            bottomCCW;
            bottomcornerCCW;
            bottomCCW;
            bottomCCW;
            bottomcornerCCW;
            bottomcornerCCW;
            bottomCCW;
            else 
                error('rotated corner piece; invalid cube')
            end    
        %if CW
        elseif bottom (1,3,1)==g(:,:,1)&&bottom (1,3,2)==g(:,:,2)&&bottom (1,3,3)==g(:,:,3)&&backright(3,3,1)==y(:,:,1)&&backright(3,3,2)==y(:,:,2)&&backright(3,3,3)==y(:,:,3)
            %if CW
            if bottom(3,3,1)==r(:,:,1)&&bottom(3,3,2)==r(:,:,2)&&bottom(3,3,3)==r(:,:,3)&&frontleft(3,1,1)==g(:,:,1)&&frontleft(3,1,2)==g(:,:,2)&&frontleft(3,1,3)==g(:,:,3)
            bottomCCW;
            bottomcornerCCW;
            bottomCCW;
            bottomcornerCCW;
            bottomCCW;
            bottomcornerCCW;
            bottomCCW;
            else 
                error('rotated corner piece; invalid cube')
            end    
        %if CCW
        elseif bottom (1,3,1)==o(:,:,1)&&bottom (1,3,2)==o(:,:,2)&&bottom (1,3,3)==o(:,:,3)&&backright(3,3,1)==g(:,:,1)&&backright(3,3,2)==g(:,:,2)&&backright(3,3,3)==g(:,:,3)
            %if normal
            if bottom(3,3,1)==y(:,:,1)&&bottom(3,3,2)==y(:,:,2)&&bottom(3,3,3)==y(:,:,3)&&frontleft(3,1,1)==r(:,:,1)&&frontleft(3,1,2)==r(:,:,2)&&frontleft(3,1,3)==r(:,:,3)
            bottomCCW;
            bottomcornerCCW;
            bottomCCW;
            bottomcornerCCW;
            bottomcornerCCW;
            bottomCCW;
            bottomCCW;
            else 
                error('rotated corner piece; invalid cube')
            end    
        end        
    %if rotated CCW     
    elseif bottom(1,1,1)==b(:,:,1)&&bottom(1,1,2)==b(:,:,2)&&bottom(1,1,3)==b(:,:,3)&&backright(3,1,1)==y(:,:,1)&&backright(3,1,2)==y(:,:,2)&&backright(3,1,3)==y(:,:,3)
       %if correct   
        if bottom (1,3,1)==y(:,:,1)&&bottom (1,3,2)==y(:,:,2)&&bottom (1,3,3)==y(:,:,3)&&backright(3,3,1)==o(:,:,1)&&backright(3,3,2)==o(:,:,2)&&backright(3,3,3)==o(:,:,3)
           %if rotated CW 
           if bottom(3,3,1)==r(:,:,1)&&bottom(3,3,2)==r(:,:,2)&&bottom(3,3,3)==r(:,:,3)&&frontleft(3,1,1)==g(:,:,1)&&frontleft(3,1,2)==g(:,:,2)&&frontleft(3,1,3)==g(:,:,3)
               bottomCCW;
               bottomcornerCCW;
               bottomcornerCCW;
               bottomCCW;
               bottomCCW;
               bottomcornerCCW;
               bottomCCW;
           else 
                error('rotated corner piece; invalid cube')
           end        
        %if rotated CW
        elseif bottom (1,3,1)==g(:,:,1)&&bottom (1,3,2)==g(:,:,2)&&bottom (1,3,3)==g(:,:,3)&&backright(3,3,1)==y(:,:,1)&&backright(3,3,2)==y(:,:,2)&&backright(3,3,3)==y(:,:,3)
            %if correct
            if bottom(3,3,1)==y(:,:,1)&&bottom(3,3,2)==y(:,:,2)&&bottom(3,3,3)==y(:,:,3)&&frontleft(3,1,1)==r(:,:,1)&&frontleft(3,1,2)==r(:,:,2)&&frontleft(3,1,3)==r(:,:,3)
                bottomCCW;
                bottomcornerCCW;
                bottomcornerCCW;
                bottomCCW;
                bottomcornerCCW;
                bottomCCW;
                bottomCCW;
            else 
                error('rotated corner piece; invalid cube')
            end
        %if rotated CCW    
        elseif bottom (1,3,1)==o(:,:,1)&&bottom (1,3,2)==o(:,:,2)&&bottom (1,3,3)==o(:,:,3)&&backright(3,3,1)==g(:,:,1)&&backright(3,3,2)==g(:,:,2)&&backright(3,3,3)==g(:,:,3)
           %if rotated CCW
           if bottom(3,3,1)==g(:,:,1)&&bottom(3,3,2)==g(:,:,2)&&bottom(3,3,3)==g(:,:,3)&&frontleft(3,1,1)==y(:,:,1)&&frontleft(3,1,2)==y(:,:,2)&&frontleft(3,1,3)==y(:,:,3)
               bottomCCW;
               bottomcornerCW;
               bottomCCW;
               bottomcornerCW;
               bottomCCW;
               bottomcornerCW;
               bottomCCW;
           else 
                error('rotated corner piece; invalid cube')
           end         
        end
    end            
%if CW
elseif bottom(3,1,1)==b(:,:,1)&&bottom(3,1,2)==b(:,:,2)&&bottom(3,1,3)==b(:,:,3)&&frontleft(3,3,1)==y(:,:,1)&&frontleft(3,3,2)==y(:,:,2)&&frontleft(3,3,3)==y(:,:,3)
   %if normal
   if bottom(1,1,1)==y(:,:,1)&&bottom(1,1,2)==y(:,:,2)&&bottom(1,1,3)==y(:,:,3)&&backright(3,1,1)==o(:,:,1)&&backright(3,1,2)==o(:,:,2)&&backright(3,1,3)==o(:,:,3)
    %if correct
        if bottom (1,3,1)==y(:,:,1)&&bottom (1,3,2)==y(:,:,2)&&bottom (1,3,3)==y(:,:,3)&&backright(3,3,1)==o(:,:,1)&&backright(3,3,2)==o(:,:,2)&&backright(3,3,3)==o(:,:,3)
            %if CCW
            if bottom(3,3,1)==g(:,:,1)&&bottom(3,3,2)==g(:,:,2)&&bottom(3,3,3)==g(:,:,3)&&frontleft(3,1,1)==y(:,:,1)&&frontleft(3,1,2)==y(:,:,2)&&frontleft(3,1,3)==y(:,:,3)
                bottomcornerCCW;
                bottomCW;
                bottomcornerCCW;
                bottomcornerCCW;
                bottomCCW;              
            else 
                error('rotated corner piece; invalid cube')
            end        
        %if CW
        elseif bottom (1,3,1)==g(:,:,1)&&bottom (1,3,2)==g(:,:,2)&&bottom (1,3,3)==g(:,:,3)&&backright(3,3,1)==y(:,:,1)&&backright(3,3,2)==y(:,:,2)&&backright(3,3,3)==y(:,:,3)
            %if CW
            if bottom(3,3,1)==r(:,:,1)&&bottom(3,3,2)==r(:,:,2)&&bottom(3,3,3)==r(:,:,3)&&frontleft(3,1,1)==g(:,:,1)&&frontleft(3,1,2)==g(:,:,2)&&frontleft(3,1,3)==g(:,:,3)
            bottomcornerCCW;
            bottomCCW;
            bottomCCW;
            bottomcornerCCW;
            bottomCCW;
            bottomcornerCCW;
            bottomCCW;
            else 
                error('rotated corner piece; invalid cube')
            end
        %if CCW
        elseif bottom (1,3,1)==o(:,:,1)&&bottom (1,3,2)==o(:,:,2)&&bottom (1,3,3)==o(:,:,3)&&backright(3,3,1)==g(:,:,1)&&backright(3,3,2)==g(:,:,2)&&backright(3,3,3)==g(:,:,3)
            %if normal
            if bottom(3,3,1)==y(:,:,1)&&bottom(3,3,2)==y(:,:,2)&&bottom(3,3,3)==y(:,:,3)&&frontleft(3,1,1)==r(:,:,1)&&frontleft(3,1,2)==r(:,:,2)&&frontleft(3,1,3)==r(:,:,3)
            bottomcornerCCW;
            bottomCCW;
            bottomCCW;
            bottomcornerCCW;
            bottomcornerCCW;
            bottomCCW;
            bottomCCW;
            else 
                error('rotated corner piece; invalid cube')
            end    
        end        
   %if CW  
   elseif bottom(1,1,1)==o(:,:,1)&&bottom(1,1,2)==o(:,:,2)&&bottom(1,1,3)==o(:,:,3)&&backright(3,1,1)==b(:,:,1)&&backright(3,1,2)==b(:,:,2)&&backright(3,1,3)==b(:,:,3)
       %if correct   
        if bottom (1,3,1)==y(:,:,1)&&bottom (1,3,2)==y(:,:,2)&&bottom (1,3,3)==y(:,:,3)&&backright(3,3,1)==o(:,:,1)&&backright(3,3,2)==o(:,:,2)&&backright(3,3,3)==o(:,:,3)
           %if rotated CW 
           if bottom(3,3,1)==r(:,:,1)&&bottom(3,3,2)==r(:,:,2)&&bottom(3,3,3)==r(:,:,3)&&frontleft(3,1,1)==g(:,:,1)&&frontleft(3,1,2)==g(:,:,2)&&frontleft(3,1,3)==g(:,:,3)
               bottomcornerCCW;
               bottomCCW;
               bottomcornerCCW;
               bottomCCW;
               bottomCCW;
               bottomcornerCCW;
               bottomCCW;
           else 
                error('rotated corner piece; invalid cube')
           end        
        %if rotated CW
        elseif bottom (1,3,1)==g(:,:,1)&&bottom (1,3,2)==g(:,:,2)&&bottom (1,3,3)==g(:,:,3)&&backright(3,3,1)==y(:,:,1)&&backright(3,3,2)==y(:,:,2)&&backright(3,3,3)==y(:,:,3)
            %if correct
            if bottom(3,3,1)==y(:,:,1)&&bottom(3,3,2)==y(:,:,2)&&bottom(3,3,3)==y(:,:,3)&&frontleft(3,1,1)==r(:,:,1)&&frontleft(3,1,2)==r(:,:,2)&&frontleft(3,1,3)==r(:,:,3)
                bottomcornerCCW;
                bottomCCW;
                bottomcornerCCW;
                bottomCCW;
                bottomcornerCCW;
                bottomCCW;
                bottomCCW;
            else 
                error('rotated corner piece; invalid cube')
            end
        %if rotated CCW    
        elseif bottom (1,3,1)==o(:,:,1)&&bottom (1,3,2)==o(:,:,2)&&bottom (1,3,3)==o(:,:,3)&&backright(3,3,1)==g(:,:,1)&&backright(3,3,2)==g(:,:,2)&&backright(3,3,3)==g(:,:,3)
           %if rotated CCW
           if bottom(3,3,1)==g(:,:,1)&&bottom(3,3,2)==g(:,:,2)&&bottom(3,3,3)==g(:,:,3)&&frontleft(3,1,1)==y(:,:,1)&&frontleft(3,1,2)==y(:,:,2)&&frontleft(3,1,3)==y(:,:,3)
               bottomcornerCCW;
               bottomCCW;
               bottomcornerCCW;
               bottomCCW;
               bottomcornerCCW;
               bottomcornerCCW;
               bottomCCW;
               bottomcornerCCW;
               bottomcornerCCW;
               bottomCCW;
           else 
                error('rotated corner piece; invalid cube')
           end 
        
        end   
   %if CCW 
   elseif bottom(1,1,1)==b(:,:,1)&&bottom(1,1,2)==b(:,:,2)&&bottom(1,1,3)==b(:,:,3)&&backright(3,1,1)==y(:,:,1)&&backright(3,1,2)==y(:,:,2)&&backright(3,1,3)==y(:,:,3)
       %if correct
        if bottom (1,3,1)==y(:,:,1)&&bottom (1,3,2)==y(:,:,2)&&bottom (1,3,3)==y(:,:,3)&&backright(3,3,1)==o(:,:,1)&&backright(3,3,2)==o(:,:,2)&&backright(3,3,3)==o(:,:,3)
            % if correct
            if bottom(3,3,1)==y(:,:,1)&&bottom(3,3,2)==y(:,:,2)&&bottom(3,3,3)==y(:,:,3)&&frontleft(3,1,1)==r(:,:,1)&&frontleft(3,1,2)==r(:,:,2)&&frontleft(3,1,3)==r(:,:,3)
                bottomcornerCCW;
                bottomCCW;
                bottomcornerCCW;
                bottomcornerCCW;
                bottomCW;
            else 
                error('rotated corner piece, invalid cube')
            end
        %if rotated CW 
        elseif bottom (1,3,1)==g(:,:,1)&&bottom (1,3,2)==g(:,:,2)&&bottom (1,3,3)==g(:,:,3)&&backright(3,3,1)==y(:,:,1)&&backright(3,3,2)==y(:,:,2)&&backright(3,3,3)==y(:,:,3)
            %if rotated CCW
            if bottom(3,3,1)==g(:,:,1)&&bottom(3,3,2)==g(:,:,2)&&bottom(3,3,3)==g(:,:,3)&&frontleft(3,1,1)==y(:,:,1)&&frontleft(3,1,2)==y(:,:,2)&&frontleft(3,1,3)==y(:,:,3)
                bottomcornerCCW;
                bottomCCW;
                bottomcornerCCW;
                bottomcornerCCW;
                bottomCCW;
                bottomcornerCCW;
                bottomCCW;
                bottomcornerCCW;
                bottomcornerCCW;
                bottomCCW;
            else
                error('rotated corner piece; invalid cube')
            end    
        %if rotated CCW
        elseif bottom (1,3,1)==o(:,:,1)&&bottom (1,3,2)==o(:,:,2)&&bottom (1,3,3)==o(:,:,3)&&backright(3,3,1)==g(:,:,1)&&backright(3,3,2)==g(:,:,2)&&backright(3,3,3)==g(:,:,3)
            %if rotated CW
            if bottom(3,3,1)==r(:,:,1)&&bottom(3,3,2)==r(:,:,2)&&bottom(3,3,3)==r(:,:,3)&&frontleft(3,1,1)==g(:,:,1)&&frontleft(3,1,2)==g(:,:,2)&&frontleft(3,1,3)==g(:,:,3)
                bottomcornerCCW;
                bottomCCW;
                bottomcornerCCW;
                bottomcornerCCW;
                bottomCCW;
                bottomcornerCCW;
                bottomcornerCCW;
                bottomCCW;
                bottomcornerCCW;
                bottomCCW;
            else 
                error('rotated corner piece; invalid cube')
            end        
        end
   end             
%if rotated CCW once
elseif bottom(3,1,1)==r(:,:,1)&&bottom(3,1,2)==r(:,:,2)&&bottom(3,1,3)==r(:,:,3)&&frontleft(3,3,1)==b(:,:,1)&&frontleft(3,3,2)==b(:,:,2)&&frontleft(3,3,3)==b(:,:,3)
    %if correct
    if bottom(1,1,1)==y(:,:,1)&&bottom(1,1,2)==y(:,:,2)&&bottom(1,1,3)==y(:,:,3)&&backright(3,1,1)==o(:,:,1)&&backright(3,1,2)==o(:,:,2)&&backright(3,1,3)==o(:,:,3)
        %if correct   
        if bottom (1,3,1)==y(:,:,1)&&bottom (1,3,2)==y(:,:,2)&&bottom (1,3,3)==y(:,:,3)&&backright(3,3,1)==o(:,:,1)&&backright(3,3,2)==o(:,:,2)&&backright(3,3,3)==o(:,:,3)
           %if rotated CW 
           if bottom(3,3,1)==r(:,:,1)&&bottom(3,3,2)==r(:,:,2)&&bottom(3,3,3)==r(:,:,3)&&frontleft(3,1,1)==g(:,:,1)&&frontleft(3,1,2)==g(:,:,2)&&frontleft(3,1,3)==g(:,:,3)
               bottomcornerCCW;
               bottomcornerCCW;
               bottomCW;
               bottomcornerCCW;
               bottomCCW;
           else 
                error('rotated corner piece; invalid cube')
           end        
        %if rotated CW
        elseif bottom (1,3,1)==g(:,:,1)&&bottom (1,3,2)==g(:,:,2)&&bottom (1,3,3)==g(:,:,3)&&backright(3,3,1)==y(:,:,1)&&backright(3,3,2)==y(:,:,2)&&backright(3,3,3)==y(:,:,3)
            %if correct
            if bottom(3,3,1)==y(:,:,1)&&bottom(3,3,2)==y(:,:,2)&&bottom(3,3,3)==y(:,:,3)&&frontleft(3,1,1)==r(:,:,1)&&frontleft(3,1,2)==r(:,:,2)&&frontleft(3,1,3)==r(:,:,3)
               bottomcornerCCW;
               bottomcornerCCW;
               bottomCCW;
               bottomCCW;
               bottomcornerCCW;
               bottomCCW;
               bottomCCW;
            else 
                error('rotated corner piece; invalid cube')
            end
        %if rotated CCW    
        elseif bottom (1,3,1)==o(:,:,1)&&bottom (1,3,2)==o(:,:,2)&&bottom (1,3,3)==o(:,:,3)&&backright(3,3,1)==g(:,:,1)&&backright(3,3,2)==g(:,:,2)&&backright(3,3,3)==g(:,:,3)
           %if rotated CCW
           if bottom(3,3,1)==g(:,:,1)&&bottom(3,3,2)==g(:,:,2)&&bottom(3,3,3)==g(:,:,3)&&frontleft(3,1,1)==y(:,:,1)&&frontleft(3,1,2)==y(:,:,2)&&frontleft(3,1,3)==y(:,:,3)
               bottomcornerCW;
               bottomCCW;
               bottomCCW;
               bottomcornerCW;
               bottomCCW;
               bottomcornerCW;
               bottomCCW;
           else 
                error('rotated corner piece; invalid cube')
           end         
        end       
    %if rotated CW
    elseif bottom(1,1,1)==o(:,:,1)&&bottom(1,1,2)==o(:,:,2)&&bottom(1,1,3)==o(:,:,3)&&backright(3,1,1)==b(:,:,1)&&backright(3,1,2)==b(:,:,2)&&backright(3,1,3)==b(:,:,3)
       %if normal
        if bottom (1,3,1)==y(:,:,1)&&bottom (1,3,2)==y(:,:,2)&&bottom (1,3,3)==y(:,:,3)&&backright(3,3,1)==o(:,:,1)&&backright(3,3,2)==o(:,:,2)&&backright(3,3,3)==o(:,:,3)
            %if correct
            if bottom(3,3,1)==y(:,:,1)&&bottom(3,3,2)==y(:,:,2)&&bottom(3,3,3)==y(:,:,3)&&frontleft(3,1,1)==r(:,:,1)&&frontleft(3,1,2)==r(:,:,2)&&frontleft(3,1,3)==r(:,:,3)
                bottomcornerCCW;
                bottomcornerCCW;
                bottomCCW;
                bottomcornerCCW;
                bottomCW;
            else 
                error('rotated corner piece; invalid cube')
            end
        %if rotated CW
       elseif bottom (1,3,1)==g(:,:,1)&&bottom (1,3,2)==g(:,:,2)&&bottom (1,3,3)==g(:,:,3)&&backright(3,3,1)==y(:,:,1)&&backright(3,3,2)==y(:,:,2)&&backright(3,3,3)==y(:,:,3)
          %if CCW
          if bottom(3,3,1)==g(:,:,1)&&bottom(3,3,2)==g(:,:,2)&&bottom(3,3,3)==g(:,:,3)&&frontleft(3,1,1)==y(:,:,1)&&frontleft(3,1,2)==y(:,:,2)&&frontleft(3,1,3)==y(:,:,3)
              bottomcornerCCW;
              bottomcornerCCW;
              bottomCCW;
              bottomcornerCCW;
              bottomCCW
              bottomcornerCCW;
              bottomCCW;
              bottomcornerCCW;
              bottomcornerCCW;
              bottomCCW;
          else 
              error('rotated corner piece; invalid cube')
          end
        %if rotated CCW
        elseif bottom (1,3,1)==o(:,:,1)&&bottom (1,3,2)==o(:,:,2)&&bottom (1,3,3)==o(:,:,3)&&backright(3,3,1)==g(:,:,1)&&backright(3,3,2)==g(:,:,2)&&backright(3,3,3)==g(:,:,3)
          %if CW
          if bottom(3,3,1)==r(:,:,1)&&bottom(3,3,2)==r(:,:,2)&&bottom(3,3,3)==r(:,:,3)&&frontleft(3,1,1)==g(:,:,1)&&frontleft(3,1,2)==g(:,:,2)&&frontleft(3,1,3)==g(:,:,3)
              bottomcornerCCW;
              bottomcornerCCW;
              bottomCCW;
              bottomcornerCCW;
              bottomCCW
              bottomcornerCCW;
              bottomcornerCCW;
              bottomCCW;
              bottomcornerCCW;
              bottomCCW;
          else 
               error('rotated corner piece; invalid cube')
          end
        end
    %if rotated CCW   
    elseif  bottom(1,1,1)==b(:,:,1)&&bottom(1,1,2)==b(:,:,2)&&bottom(1,1,3)==b(:,:,3)&&backright(3,1,1)==y(:,:,1)&&backright(3,1,2)==y(:,:,2)&&backright(3,1,3)==y(:,:,3)
        %if normal
       if bottom (1,3,1)==y(:,:,1)&&bottom (1,3,2)==y(:,:,2)&&bottom (1,3,3)==y(:,:,3)&&backright(3,3,1)==o(:,:,1)&&backright(3,3,2)==o(:,:,2)&&backright(3,3,3)==o(:,:,3)
          %if CCW
          if bottom(3,3,1)==g(:,:,1)&&bottom(3,3,2)==g(:,:,2)&&bottom(3,3,3)==g(:,:,3)&&frontleft(3,1,1)==y(:,:,1)&&frontleft(3,1,2)==y(:,:,2)&&frontleft(3,1,3)==y(:,:,3)
             bottomcornerCW;
             bottomCCW;
             bottomcornerCW;
             bottomCCW;
             bottomCCW;
             bottomcornerCW;
             bottomCCW;
          else 
               error('rotated corner piece; invalid cube')
          end
        %if rotated CW
       elseif bottom (1,3,1)==g(:,:,1)&&bottom (1,3,2)==g(:,:,2)&&bottom (1,3,3)==g(:,:,3)&&backright(3,3,1)==y(:,:,1)&&backright(3,3,2)==y(:,:,2)&&backright(3,3,3)==y(:,:,3)
          %if CW
          if bottom(3,3,1)==r(:,:,1)&&bottom(3,3,2)==r(:,:,2)&&bottom(3,3,3)==r(:,:,3)&&frontleft(3,1,1)==g(:,:,1)&&frontleft(3,1,2)==g(:,:,2)&&frontleft(3,1,3)==g(:,:,3)
              bottomcornerCCW;
              bottomcornerCCW;
              bottomCCW;
              bottomcornerCCW;
              bottomcornerCCW;
              bottomCCW;
              bottomcornerCCW;
              bottomCCW;
              bottomcornerCCW;
              bottomCCW;
          else 
              error('rotated corner piece; invalid cube')
          end
        %if rotated CCW
       elseif bottom (1,3,1)==o(:,:,1)&&bottom (1,3,2)==o(:,:,2)&&bottom (1,3,3)==o(:,:,3)&&backright(3,3,1)==g(:,:,1)&&backright(3,3,2)==g(:,:,2)&&backright(3,3,3)==g(:,:,3)
            %if correct 
            if bottom(3,3,1)==y(:,:,1)&&bottom(3,3,2)==y(:,:,2)&&bottom(3,3,3)==y(:,:,3)&&frontleft(3,1,1)==r(:,:,1)&&frontleft(3,1,2)==r(:,:,2)&&frontleft(3,1,3)==r(:,:,3)
                bottomcornerCW;
                bottomCCW;
                bottomcornerCW;
                bottomCCW;
                bottomcornerCW;
                bottomCCW;
                bottomCCW;
            else 
                error('rotated corner piece; invalid cube')
            end
       end
    end
end
            
      