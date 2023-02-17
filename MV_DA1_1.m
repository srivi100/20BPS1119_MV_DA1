clc
clear all
warning off;
%to display color image from file
rgbImage = imread("peppers.png");
subplot(3,3,1)
imshow(rgbImage)
title('color image');

%color to grayscale
A = rgb2gray(rgbImage);

A=double(A);
B=bitget(A,1);
subplot(3,3,2)
imshow((B))
title('Bit plane 1')

B=bitget(A,2);
subplot(3,3,3)
imshow(B)
title('Bit plane 2')

B=bitget(A,3);
subplot(3,3,4)
imshow(B)
title('Bit plane 3')

B=bitget(A,4);
subplot(3,3,5)
imshow(B)
title('Bit plane 4')

B=bitget(A,5);
subplot(3,3,6)
imshow(B)
title('Bit plane 5')

B=bitget(A,6);
subplot(3,3,7)
imshow(B)
title('Bit plane 6')

B=bitget(A,7);
subplot(3,3,8)
imshow(B)
title('Bit plane 7')

B=bitget(A,8);
subplot(3,3,9)
imshow(B)
title('Bit plane 8')