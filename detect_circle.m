function [ result ] = detect_circle( image , actual_image )
%UNTITLED4 Summary of this function goes here
%   Detailed explanation goes here

%image = imread(image);

[h w l]=size(image);

%filteration remove noises
image = medfilt2(image , [6 6]);

%morophology   &closing
R = 4;
N = 4;
se = strel('disk', R, N);
closeBW = imclose(image,se);
%figure, imshow(closeBW);


%fill holes
clear_image = imfill(closeBW,'holes');
%figure,imshow(clear_image);


[centers, radii, metric] = imfindcircles(clear_image,[20 w],'Sensitivity', .97);

centersStrong5 = centers(:,:);
radiiStrong5 = radii(:);
%metricStrong5 = metric(:);

viscircles(centersStrong5, radiiStrong5,'EdgeColor','b');

%max circle
[x] = centers(1,1);
[y] = centers(1,2);
r = radii(1);

d = r*2;
xmin = x-r;
ymin = y-r;
result = imcrop( actual_image , [xmin ymin d d]);



end

