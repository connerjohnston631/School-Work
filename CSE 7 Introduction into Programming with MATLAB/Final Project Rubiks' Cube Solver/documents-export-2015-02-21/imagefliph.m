function [ output ] = imagefliph( input )
%takes an image and flips it horizontally

for i=1:120
    output(:,i,:)=input(:,(end-i+1),:);
end
    
end

