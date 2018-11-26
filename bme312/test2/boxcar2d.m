function out = boxcar2d(in,w)

% two dimensional version of the boxcar filter for images. in should be a
% uint8 images (we should really have a check to verify). out is also a uint8
% w gives the size
% of the filter. This filter smoothes/blurs images. The bigger w is, the
% more blurring we get. 

% initialize the output image as a black uint8 image the same size as in.

out = zeros(size(in),'uint8');

% make the kernel. All elements are the same and sum to 1.

k = ones(2*w+1)/(2*w+1).^2;

% scan the image with the kernel. The outer loop is over rows, the inner
% loop is over columns.

for i = 1+w:size(in,1)-w
   for j = 1+w:size(in,2)-w
       
       % grab a chunk of the input image the same size as the kernel
       
       chunk = in(i-w:i+w,j-w:j+w);
       
       % multiply corresponding elements of chunk and the kernel. We have
       % to convert chunk to double first because k is a double
       
       temp = double(chunk).*k;
       
       % sum all elements of temp, convert the result back to uint8 (by
       % rounding) and assign to the appropriate pixel of the output image
       
       out(i,j) = uint8(sum(temp(:)));
   end
end
