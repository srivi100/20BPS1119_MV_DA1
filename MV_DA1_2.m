clc
clear all

%Original Image
rgbImage = imread("peppers.png");
score = piqe(rgbImage)
subplot(2,2,1)
imshow(rgbImage)
title(['Original: score = ',num2str(score)])

%Noisy Image
Anoise = imnoise(rgbImage,'Gaussian',0,0.05);
score_noise = piqe(Anoise)
subplot(2,2,2)
imshow(Anoise)
title(['Noisy: PIQE score = ', num2str(score_noise)])

%Blurred Image - Gaussian Smoothing Filters
PSF = fspecial('motion',21,11);
Idouble = im2double(rgbImage);
Ablur = imfilter(Idouble,PSF,'conv','circular');
score_blur = piqe(Ablur)
subplot(2,2,3);
imshow(Ablur)
title(['Blurred: PIQE score = ', num2str(score_blur)])

%Sharpening Image
%Image without noise
ASharpen = deconvwnr(Ablur,PSF);
score_sharp = piqe(ASharpen)
subplot(2,2,4)
imshow(ASharpen)
title(['Sharpened: PIQE score = ', num2str(score_sharp)])