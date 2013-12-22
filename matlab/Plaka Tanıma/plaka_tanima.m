clc;
clear all;
close all;

im= imread('plaka2.jpg');
im = rgb2gray(im);
im1=im;
im= double(im);
level = graythresh(im);

[row col]=size(im);
display(size(im));

BW = edge(double(im),'sobel');
figure(1)
imshow(BW);
title('Sobel Final Gradient Image');

vp = sum(BW,2);
hp = sum(BW,1); 
[ybm , indy ] = max(vp);

se = strel('rectangle',[3,8]);
closeBW = imclose(BW,se);

fI = imfill(closeBW,'holes');
figure(2);
imshow(fI);

fO = imopen(fI,se);
fO = imclearborder(fO,8);
figure(3);
imshow(fO);


figure;
imshow(im1);
pause(1);
figure;

labeledImage = bwlabel(fO, 8);
originalImage =im1; 

measure = regionprops(labeledImage, originalImage, 'all');   
number = size(measure, 1);

display(number);

for k = 1 : number          
        chk=1;
		thisBoundingBox = measure(k).BoundingBox;  
		subImage = imcrop(im1, thisBoundingBox);
        [x y]= size(subImage);
        if(x >=25 && y >=100)   
            imshow(subImage);
            imwrite(subImage,'kesilmis_plaka.jpg');
            break;      
        end   
end


    
