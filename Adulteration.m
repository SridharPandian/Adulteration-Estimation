clc 
clear all
close all

% Importing test images

f=imread('D:\Image processing\Adulteration estimation\Test samples\Brick.png');
PureBrick=rgb2gray(f);

d=imread('D:\Image processing\Adulteration estimation\Test samples\Chilly.png');
PureChilly=rgb2gray(d);

% Importing training images

inputImage=imread('D:\Image processing\Adulteration estimation\Training samples\Most contaminated.png');
MostContaminated=rgb2gray(inputImage);

inputImage=imread('D:\Image processing\Adulteration estimation\Training samples\Second most.png');
SecondMost=rgb2gray(inputImage);

inputImage=imread('D:\Image processing\Adulteration estimation\Training samples\Third most.png');
ThirdMost=rgb2gray(inputImage);

inputImage=imread('D:\Image processing\Adulteration estimation\Training samples\Least contaminated.png');
LeastContaminated=rgb2gray(inputImage);

% Permuted images

% 90 percent permutation

PermNinety=PureChilly;
num=numel(PureBrick);
b1=PureBrick(randperm(num, 7956));  %adding the adulterants to the pure chilly powder
b3=randperm(85,76);

k=1;
for i=1:104:7604
   %disp(i);
    PermNinety(b3(k),:)=b1(1,i:i+103);
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
        PermNinety(i,21:72)=b1(1,7605:7656);
        break;
    end
end

% 80 percent perumtation

PermEighty=PureChilly;
num=numel(PureBrick);
b1=PureBrick(randperm(num, 7072));  %adding the adulterants to the pure chilly powder
b3=randperm(85,68);

k=1;
for i=1:104:7072
   %disp(i);
    PermEighty(b3(k),:)=b1(1,i:i+103);
   %disp(i+103); 
    k=k+1;
end

%  70 percent permutation

PermSeventy=PureChilly;
num=numel(PureBrick);
b1=PureBrick(randperm(num, 6188));  %adding the adulterants to the pure chilly powder
b3=randperm(85,59);

k=1;
for i=1:104:6136
   %disp(i);
    PermSeventy(b3(k),:)=b1(1,i:i+103);
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
        PermSeventy(i,21:72)=b1(1,6137:6188);
        break;
    end
end

% 60 percent permutation

PermSixty=PureChilly;
num=numel(PureBrick);
b1=PureBrick(randperm(num, 5304));  %adding the adulterants to the pure chilly powder
b3=randperm(85,51);

k=1;
for i=1:104:5304
   %disp(i);
    PermSixty(b3(k),:)=b1(1,i:i+103);
   %disp(i+103); 
    k=k+1;
end

% 50 percent permutation

PermFifty=PureChilly;
num=numel(PureBrick);
b1=PureBrick(randperm(num, 4420));  %adding the adulterants to the pure chilly powder
b3=randperm(85,42);

k=1;
for i=1:104:4368
   %disp(i);
    PermFifty(b3(k),:)=b1(1,i:i+103);
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
        PermFifty(i,21:72)=b1(1,4369:4420);
        break;
    end
end

% 40 percent permutation

PermForty=PureChilly;
num=numel(PureBrick);
b1=PureBrick(randperm(num, 3536));  %adding the adulterants to the pure chilly powder
b3=randperm(85,34);

k=1;
for i=1:104:3536
   %disp(i);
    PermForty(b3(k),:)=b1(1,i:i+103);
   %disp(i+103); 
    k=k+1;
end

% 30 percent permutation

PermThirty=PureChilly;
num=numel(PureBrick);
b1=PureBrick(randperm(num, 2652));  %adding the adulterants to the pure chilly powder
b3=randperm(85,25);

k=1;
for i=1:104:2600
   %disp(i);
    PermThirty(b3(k),:)=b1(1,i:i+103);
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
        PermThirty(i,21:72)=b1(1,2601:2652);
        break;
    end
end

% 20 percent permutation

PermTwenty=PureChilly;
num=numel(PureBrick);
b1=PureBrick(randperm(num, 1768));  %adding the adulterants to the pure chilly powder
b3=randperm(85,17);

k=1;
for i=1:104:1768
   %disp(i);
    PermTwenty(b3(k),:)=b1(1,i:i+103);
   %disp(i+103); 
    k=k+1;
end

% 10 percent permutation

PermTen=PureChilly;
num=numel(PureBrick);
b1=PureBrick(randperm(num, 884));  %adding the adulterants to the pure chilly powder
b3=randperm(85,8);

k=1;
for i=1:104:832
   %disp(i);
    PermTen(b3(k),:)=b1(1,i:i+103);
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
        PermTen(i,21:72)=b1(1,833:884);
        break;
    end
end

% Comparison with pure chilly

[ssimval1, ssimmap1] = ssim(PermTen,PureChilly);
[ssimval2, ssimmap2] = ssim(PermTwenty,PureChilly);
[ssimval3, ssimmap3] = ssim(PermThirty,PureChilly);
[ssimval4, ssimmap4] = ssim(PermForty,PureChilly);
[ssimval5, ssimmap5] = ssim(PermFifty,PureChilly);
[ssimval6, ssimmap6] = ssim(PermSixty,PureChilly);
[ssimval7, ssimmap7] = ssim(PermSeventy,PureChilly);
[ssimval8, ssimmap8] = ssim(PermEighty,PureChilly);
[ssimval9, ssimmap9] = ssim(PermNinety,PureChilly);

PureChillySSIM = [ssimval1 ssimval2 ssimval3 ssimval4 ssimval5 ssimval6 ssimval7 ssimval8 ssimval9];

% Comparison with pure brick

[ssimval1, ssimmap1] = ssim(PermTen,PureBrick);
[ssimval2, ssimmap2] = ssim(PermTwenty,PureBrick);
[ssimval3, ssimmap3] = ssim(PermThirty,PureBrick);
[ssimval4, ssimmap4] = ssim(PermForty,PureBrick);
[ssimval5, ssimmap5] = ssim(PermFifty,PureBrick);
[ssimval6, ssimmap6] = ssim(PermSixty,PureBrick);
[ssimval7, ssimmap7] = ssim(PermSeventy,PureBrick);
[ssimval8, ssimmap8] = ssim(PermEighty,PureBrick);
[ssimval9, ssimmap9] = ssim(PermNinety,PureBrick);

PureBrickSSIM = [ssimval1 ssimval2 ssimval3 ssimval4 ssimval5 ssimval6 ssimval7 ssimval8 ssimval9];

% Comparison with Most contaminated training image

[ssimval1, ssimmap1] = ssim(PermTen,MostContaminated);
[ssimval2, ssimmap2] = ssim(PermTwenty,MostContaminated);
[ssimval3, ssimmap3] = ssim(PermThirty,MostContaminated);
[ssimval4, ssimmap4] = ssim(PermForty,MostContaminated);
[ssimval5, ssimmap5] = ssim(PermFifty,MostContaminated);
[ssimval6, ssimmap6] = ssim(PermSixty,MostContaminated);
[ssimval7, ssimmap7] = ssim(PermSeventy,MostContaminated);
[ssimval8, ssimmap8] = ssim(PermEighty,MostContaminated);
[ssimval9, ssimmap9] = ssim(PermNinety,MostContaminated);

MostContaminatedSSIM = [ssimval1 ssimval2 ssimval3 ssimval4 ssimval5 ssimval6 ssimval7 ssimval8 ssimval9];

% Comparison with Second most contaminated training image

[ssimval1, ssimmap1] = ssim(PermTen,SecondMost);
[ssimval2, ssimmap2] = ssim(PermTwenty,SecondMost);
[ssimval3, ssimmap3] = ssim(PermThirty,SecondMost);
[ssimval4, ssimmap4] = ssim(PermForty,SecondMost);
[ssimval5, ssimmap5] = ssim(PermFifty,SecondMost);
[ssimval6, ssimmap6] = ssim(PermSixty,SecondMost);
[ssimval7, ssimmap7] = ssim(PermSeventy,SecondMost);
[ssimval8, ssimmap8] = ssim(PermEighty,SecondMost);
[ssimval9, ssimmap9] = ssim(PermNinety,SecondMost);

SecondMostSSIM = [ssimval1 ssimval2 ssimval3 ssimval4 ssimval5 ssimval6 ssimval7 ssimval8 ssimval9];

% Comparison with Third most contaminated training image

[ssimval1, ssimmap1] = ssim(PermTen,ThirdMost);
[ssimval2, ssimmap2] = ssim(PermTwenty,ThirdMost);
[ssimval3, ssimmap3] = ssim(PermThirty,ThirdMost);
[ssimval4, ssimmap4] = ssim(PermForty,ThirdMost);
[ssimval5, ssimmap5] = ssim(PermFifty,ThirdMost);
[ssimval6, ssimmap6] = ssim(PermSixty,ThirdMost);
[ssimval7, ssimmap7] = ssim(PermSeventy,ThirdMost);
[ssimval8, ssimmap8] = ssim(PermEighty,ThirdMost);
[ssimval9, ssimmap9] = ssim(PermNinety,ThirdMost);

ThirdMostSSIM = [ssimval1 ssimval2 ssimval3 ssimval4 ssimval5 ssimval6 ssimval7 ssimval8 ssimval9];

% Comparison with Least contaminated training image

[ssimval1, ssimmap1] = ssim(PermTen,LeastContaminated);
[ssimval2, ssimmap2] = ssim(PermTwenty,LeastContaminated);
[ssimval3, ssimmap3] = ssim(PermThirty,LeastContaminated);
[ssimval4, ssimmap4] = ssim(PermForty,LeastContaminated);
[ssimval5, ssimmap5] = ssim(PermFifty,LeastContaminated);
[ssimval6, ssimmap6] = ssim(PermSixty,LeastContaminated);
[ssimval7, ssimmap7] = ssim(PermSeventy,LeastContaminated);
[ssimval8, ssimmap8] = ssim(PermEighty,LeastContaminated);
[ssimval9, ssimmap9] = ssim(PermNinety,LeastContaminated);

LeastContaminatedSSIM = [ssimval1 ssimval2 ssimval3 ssimval4 ssimval5 ssimval6 ssimval7 ssimval8 ssimval9];

filename = 'SSIMData.xlsx';
A = {'Permutation percentage','10%','20%','30%','40%','50%','60%','70%','80%','90%';
    'Comparison with pure chilly powder',PureChillySSIM(1),PureChillySSIM(2),PureChillySSIM(3),PureChillySSIM(4),PureChillySSIM(5),PureChillySSIM(6),PureChillySSIM(7),PureChillySSIM(8),PureChillySSIM(9);
    'Comparison with pure brick powder',PureBrickSSIM(1),PureBrickSSIM(2),PureBrickSSIM(3),PureBrickSSIM(4),PureBrickSSIM(5),PureBrickSSIM(6),PureBrickSSIM(7),PureBrickSSIM(8),PureBrickSSIM(9)
    };
sheet = 1;
xlRange1 = 'B2';
xlswrite(filename,A,sheet,xlRange1)   

B = {'Permutation percentage','10%','20%','30%','40%','50%','60%','70%','80%','90%';
    'Comparison with Most contaminated mixture',MostContaminatedSSIM(1),MostContaminatedSSIM(2),MostContaminatedSSIM(3),MostContaminatedSSIM(4),MostContaminatedSSIM(5),MostContaminatedSSIM(6),MostContaminatedSSIM(7),MostContaminatedSSIM(8),MostContaminatedSSIM(9);
    'Comparison with Second most contaminated mixture',SecondMostSSIM(1),SecondMostSSIM(2),SecondMostSSIM(3),SecondMostSSIM(4),SecondMostSSIM(5),SecondMostSSIM(6),SecondMostSSIM(7),SecondMostSSIM(8),SecondMostSSIM(9);
    'Comparison with Third most contaminated mixture',ThirdMostSSIM(1),ThirdMostSSIM(2),ThirdMostSSIM(3),ThirdMostSSIM(4),ThirdMostSSIM(5),ThirdMostSSIM(6),ThirdMostSSIM(7),ThirdMostSSIM(8),ThirdMostSSIM(9);
    'Comparison with Least contaminated mixture',LeastContaminatedSSIM(1),LeastContaminatedSSIM(2),LeastContaminatedSSIM(3),LeastContaminatedSSIM(4),LeastContaminatedSSIM(5),LeastContaminatedSSIM(6),LeastContaminatedSSIM(7),LeastContaminatedSSIM(8),LeastContaminatedSSIM(9)
    };
xlRange1 = 'B6';
xlswrite(filename,B,sheet,xlRange1) 

% Comparison of Training images with test images

[ssimval1, ssimmap1] = ssim(PureChilly,LeastContaminated);
[ssimval2, ssimmap2] = ssim(PureChilly,ThirdMost);
[ssimval3, ssimmap3] = ssim(PureChilly,SecondMost);
[ssimval4, ssimmap4] = ssim(PureChilly,MostContaminated);
[ssimval5, ssimmap5] = ssim(PureBrick,LeastContaminated);
[ssimval6, ssimmap6] = ssim(PureBrick,ThirdMost);
[ssimval7, ssimmap7] = ssim(PureBrick,SecondMost);
[ssimval8, ssimmap8] = ssim(PureBrick,MostContaminated);

PureBrickSSIM = [ssimval5 ssimval6 ssimval7 ssimval8];
PureChillySSIM = [ssimval1 ssimval2 ssimval3 ssimval4];

C = {'Sample','Pure brick', 'Pure Chilly';
    'Most contaminated mixture',PureBrickSSIM(4),PureChillySSIM(4);
    'Second most contaminated mixture',PureBrickSSIM(3),PureChillySSIM(3);
    'Third most contaminated mixture',PureBrickSSIM(2),PureChillySSIM(2);
    'Least contaminated mixture',PureBrickSSIM(1),PureChillySSIM(1);
    };

xlRange1 = 'B12';
xlswrite(filename,C,sheet,xlRange1) 