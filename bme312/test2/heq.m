function trans = heq(inHist)

% perform a histogram equalization. inHist is an intensity histogram.
% inHist(i) gives the number of pixels in an image that have gray level
% i-1. On output, trans is an intensity transformation function that when
% applied to to the image that corresponds to inHist, will generate an
% image that uses as many gray levels as possible and has higher contrast.
% inHist is normally the output of the imhist() function. trans will be a
% uint8. See the course notes for discussion of the algorithm. Try stepping
% through this function in the debugger using the example in the notes.

% get the number of gray levels in the image. This is just the length of
% the imHist vector (256 for uint8 images).

nLevels = length(inHist);

% get the overall target for the number of pixel we want assigned to each
% gray level. This is the number of pixels in the
% image divided by the number of gray levels. 

overallTarget = sum(inHist)/nLevels;

% The algorithm works by looking at each gray level in the input image and
% deciding which output gray level it will be mapped to. We start by
% initializing the output gray level to 0 and the target pixel-count for
% that gray level (currentTarget) to the overall target pixel count.

outGray = 0;
currentTarget = overallTarget;

% loop over gray levels in the input histogram 

for i=1:length(inHist)
    
    % get the number of pixels with this gray level
    
    nPix = inHist(i);
    
    % figure out which output gray level those pixels will be set to. If
    % nPix is larger than the current target pixel count, we increment the
    % output gray level by one and the current target pixel count by the
    % overall target. Keep doing this until we find a gray level that can
    % accommodate nPix.
    
    while nPix > currentTarget
        currentTarget = currentTarget+overallTarget;
        outGray = outGray+1;
    end
    
    % when we get here, we've found our output gray level. Set trans(i)
    % accordingly (making it datatype uint8)
    
    trans(i) = uint8(outGray);
    
    % decrement current target by nPix
    
    currentTarget = currentTarget - nPix;
end

