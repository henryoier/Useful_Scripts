% This script is to change the background of a profile image
% cd the directory of your image.
cd ../..;
% input the image
initial = imread('IMG_9514_meitu_1.jpg');

% converted into gray image
binary = rgb2gray(initial);

high_threshold = 245;

for i=1:size(binary, 1)
    for j=1:size(binary,2)
        if(binary(i,j) > high_threshold)
            initial (i,j,:) = [0 ,191, 243];
        end
    end
end

imwrite(initial, 'convert.jpg');

disp('Finished!');