clc
clear all

%to display color image from file
rgbImage = imread("peppers.png");
subplot(3,3,1)
imshow(rgbImage)
title('color image');

%color to grayscale
grayImage = rgb2gray(rgbImage);
subplot(3,3,2)
imshow(grayImage);
title('color to grayscale');

%Contrast stretching
%decreases contrast of an image
subplot(3,3,3)
adjustImage = imadjust(rgbImage,[0 0.2],[0.5 1]);
imshow(adjustImage)
title('Decrease contrast');

%Grayscale threshold Transform (or) Gray Level Slicing
j=double(grayImage);
k=double(grayImage);
[row,col]=size(j);
T1=input('Enter the Lowest threshold value:');
T2=input('Enter the Highest threshold value:');
for x=1:row 
 for y=1:col 
 if((j(x,y)>T1) && (j(x,y)<T2))
 j(x,y)=grayImage(x,y);
 k(x,y)=255;
 else
 j(x,y)=0;
 k(x,y)=0;
 end
 end
end

subplot(3,3,4)
imshow(uint8(j))
title('Graylevel slicing with bg')

subplot(3,3,5)
imshow(uint8(k))
title('Graylevel slicing w/o bg')

%Histogram equalization
%increases contrast of an image according to the nbins value given
nbins = 256
K = histeq(rgbImage,nbins);
subplot(3,3,6)
imshow(K);
title('histogram equalized');

%histogram plot of the high contrasted image
subplot(3,3,7)
imhist(K);
title('Hist plot of eq IMG');

subplot(3,3,8)
imhist(rgbImage);
title('Hist plot of color IMG');
