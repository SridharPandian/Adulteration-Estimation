clc 
clear all
l=imread('br1.png');%only brick
I1=rgb2gray(l);
i=imread('lcmb1.png');%less chilly more brick
I2=rgb2gray(i);
p=imread('chilly.png');%only chilly
I3=rgb2gray(p);
q=imread('mclb7.png');%more chilly less brick
I4=rgb2gray(q);

[ssimval1, ssimmap1] = ssim(I2,I3);
fprintf('The SSIM value is %0.4f.\n',ssimval1);%(less chilly more brick) with (chilly only)
[ssimval2, ssimmap2] = ssim(I2,I1);
fprintf('The SSIM value is %0.4f.\n',ssimval2);%(less chilly more brick) with (brick only)
[ssimval3, ssimmap3] = ssim(I4,I3);
fprintf('The SSIM value is %0.4f.\n',ssimval3);%(more chilly less brick) with (chilly only)
[ssimval4, ssimmap4] = ssim(I1,I4);
fprintf('The SSIM value is %0.4f.\n',ssimval4);%(more chilly less brick) with (brick only)