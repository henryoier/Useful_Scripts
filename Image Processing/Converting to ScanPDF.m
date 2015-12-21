% This script is to convert your photo to the scanned pdf file like image
% cd the directory of your image.

% input the image
initial = imread('IMG_2466.JPG');

% converted into gray image
binary = rgb2gray(initial);

high_threshold = 168;
low_threshold = 80;

for i=1:size(binary, 1)
    for j=1:size(binary,2)
        if(binary(i,j) > high_threshold)
            initial (i,j,:) = [255,255,255];
        end
        if(binary(i,j) < low_threshold)
            initial (i,j,:) = [0,0,0];
        end
    end
end

imwrite(initial, 'convert.jpg');