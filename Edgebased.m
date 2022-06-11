function [segmentedimage,no_objects] = Edgebased(I_filepath)

%1) Read Image
image = imread(I_filepath);


%2) Convert loaded image to grayscale image
grayimage = rgb2gray(image);


%3) Edge Detection
BW = edge(grayimage,'canny');


%4) Dilate Image
BW = imdilate(BW,ones(5,5));


BW = ~BW;


[Labels no_objects] = bwlabel(BW); %Integer labels starting from 0
segmentedimage = label2rgb(Labels);
% Display objects
[h w] = size(image);
smallRatio = h*w*0.0002; 
for i=1:no_objects
    x = uint8(Labels==i);
    f = sum(sum(x==1));
     if(f < smallRatio) % to neglect small regions
         continue;
     end
    d = zeros(size(image));
    d(:,:,1) = uint8(x).*image(:,:,1);
    d(:,:,2) = uint8(x).*image(:,:,2);
    d(:,:,3) = uint8(x).*image(:,:,3);
     figure,imshow(d);
end


end
