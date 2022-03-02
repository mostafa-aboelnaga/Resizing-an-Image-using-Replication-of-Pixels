% Reading the image
camMan = imread('cameraman.tif');

% Getting the dimensions of the image
[m n] = size(camMan);

% Creating an array of zeros, double the size of the image
%(2x each dimension)
resizedCamMan = zeros(2*m, 2*n);

% Preparing it to be unint8, the same type as the original image
resizedCamMan = uint8(resizedCamMan);

% Now, doing the magic.
for x=1:m
    for y=1:n
        u = 2*(x-1) + 1;
        v = 2*(y-1) + 1;
        
        % replicating
        resizedCamMan(u,v) = camMan(x,y);
        resizedCamMan(u+1,v) = camMan(x,y);
        resizedCamMan(u,v+1) = camMan(x,y);
        resizedCamMan(u+1,v+1) = camMan(x,y);
    end
end

% Displaying the results in two figures
figure, imshow(camMan), figure, imshow(resizedCamMan);
        
