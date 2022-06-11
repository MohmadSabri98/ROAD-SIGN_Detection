function [ result ] = sign_detection( input_image )
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
image = imread(input_image);
figure,imshow(image);

%segmentation
segmented_image = segmentation( input_image );

figure,imshow(segmented_image);

%result  = detect_circle(segmented_image , image);

%result = im2bw(result);
%result = edge(result);



end

