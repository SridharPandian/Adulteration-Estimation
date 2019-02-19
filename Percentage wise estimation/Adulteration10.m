% Clearing previous setups

clc
clear all
close all

% Training Images

inputImage=imread('D:\Image processing\Adulteration estimation\Training samples\Most contaminated.png');
MostContaminated=rgb2gray(inputImage);

inputImage=imread('D:\Image processing\Adulteration estimation\Training samples\Second most.png');
SecondMost=rgb2gray(inputImage);

inputImage=imread('D:\Image processing\Adulteration estimation\Training samples\Third most.png');
ThirdMost=rgb2gray(inputImage);

inputImage=imread('D:\Image processing\Adulteration estimation\Training samples\Least contaminated.png');
LeastContaminated=rgb2gray(inputImage);

% Test Images

f=imread('D:\Image processing\Adulteration estimation\Test samples\Brick.png');
PureBrick=rgb2gray(f);

d=imread('D:\Image processing\Adulteration estimation\Test samples\Chilly.png');
PureChilly=rgb2gray(d);

% Creating permuted image

PermutedImage=PureChilly;
num=numel(PureBrick);
b1=PureBrick(randperm(num, 884));  %adding the adulterants to the pure chilly powder
b3=randperm(85,8);

k=1;
for i=1:104:832
   %disp(i);
    PermutedImage(b3(k),:)=b1(1,i:i+103);
   %disp(i+103); 
    k=k+1;
end
ct=0;
for i=1:85
    for k=1:length(b3)
        if(b3(k)~=i)
            ct=1;
        else
            ct=0;
            break;
        end
    end
    if(ct==1)
        PermutedImage(i,21:72)=b1(1,833:884);
        break;
    end
end

% Comparison with pure chilly

[ssimval1, ssimmap1] = ssim(PermutedImage,PureChilly);
fprintf('The SSIM value 10 percent software contamination with pure chilly powder is %0.4f.\n\n',ssimval1);

% Comparison with pure brick

[ssimval2, ssimmap2] = ssim(PermutedImage,PureBrick);
fprintf('The SSIM value 10 percent software contamination with pure brick powder is %0.4f.\n\n',ssimval2);


% Comparison with 10% software contaminated sample.

[ssimval2, ssimmap2] = ssim(PermutedImage,LeastContaminated);
fprintf('The SSIM value 10 percent software contamination with unknown test sample (Least contaminated) is %0.4f.\n',ssimval2);

[ssimval2, ssimmap2] = ssim(PermutedImage,SecondMost);
fprintf('The SSIM value 10 percent software contamination with unknown test sample (second most) is %0.4f.\n',ssimval2);

[ssimval2, ssimmap2] = ssim(PermutedImage,ThirdMost);
fprintf('The SSIM value 10 percent software contamination with unknown test sample (third most) is %0.4f.\n',ssimval2);

[ssimval2, ssimmap2] = ssim(PermutedImage,MostContaminated);
fprintf('The SSIM value 10 percent software contamination with unknown test sample (most contaminated) is %0.4f.\n\n',ssimval2);

% Comparison with pure brick sample

[ssimval2, ssimmap2] = ssim(PureBrick,LeastContaminated);
fprintf('The SSIM value pure brick powder with the test sample (Least contaminated) is %0.4f.\n',ssimval2);

[ssimval2, ssimmap2] = ssim(PureBrick,ThirdMost);
fprintf('The SSIM value pure brick powder with the test sample (Third most) is %0.4f.\n',ssimval2);

[ssimval2, ssimmap2] = ssim(PureBrick,SecondMost);
fprintf('The SSIM value pure brick powder with the test sample (Second most) is %0.4f.\n',ssimval2);

[ssimval2, ssimmap2] = ssim(PureBrick,MostContaminated);
fprintf('The SSIM value pure brick powder with the test sample (Most contaminated) is %0.4f.\n\n',ssimval2);

% Comparision with Pure chilly sample

[ssimval2, ssimmap2] = ssim(PureChilly,LeastContaminated);
fprintf('The SSIM value pure chilly powder with the test sample (Least contaminated) is %0.4f.\n',ssimval2);

[ssimval2, ssimmap2] = ssim(PureChilly,ThirdMost);
fprintf('The SSIM value pure chilly powder with the test sample (Third most) is %0.4f.\n',ssimval2);

[ssimval2, ssimmap2] = ssim(PureChilly,SecondMost);
fprintf('The SSIM value pure chilly powder with the test sample (Second most) is %0.4f.\n',ssimval2);

[ssimval2, ssimmap2] = ssim(PureChilly,MostContaminated);
fprintf('The SSIM value pure chilly powder with the test sample (Most contaminated) is %0.4f.\n',ssimval2);
