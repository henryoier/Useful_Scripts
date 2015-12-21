%cd 'www/img/research/Computer Vision' 
% get into the directory of you image

high_threshold = 205;

% input the image
original  = imread('elliptical.png');

% convert the image into gray image
gray = rgb2gray(original);

% eliminating watermarks
for i = 1:size(gray, 1)
    for j = 1:size(gray, 2)
        if(gray(i,j) > high_threshold)
            original(i,j,:) = [255,255,255];
        end
    end
end

% output the result image
imwrite(original, 'elliptical.png');
