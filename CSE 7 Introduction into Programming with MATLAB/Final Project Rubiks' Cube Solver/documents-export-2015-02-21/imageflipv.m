function [ output ] = imageflipv( input )
%takes an image and flips it vertically

for i=1:120
    output(i,:,:)=input((end-i+1),:,:);
end
    
end