function out = intensTrans(in,trans)

% apply an intensity transformation function to the input image, in, and
% return the result in out.  trans is a vector that specifies the 
% intensity transformation function. All pixels in the input image that
% have gray level i-1 will have gray level trans(i) in the output image. in
% and trans must both be of data type uint8. trans must contain 256
% elements. out will be a uint8.

% check inputs for correctness. The function isa() returns 1 if its first
% argument is the type specified by its second argument and 0 otherwise.

if ~isa(in,'uint8') 
   error('bogus input image'); 
end

if ~isa(trans,'uint8')
   error('bogus trans'); 
end

if length(trans)~=256
    error('bogus trans')
end

% preallocate out to be the same size as in and force it to be type uint8.

out = zeros(size(in),'uint8');

% loop over all elements of trans. Each element corresponds to a gray level
% in the input image.

for i=1:length(trans)
    inGray = i-1;  % input gray level
    outGray = trans(i);  % output gray level
    
    % (in==inGray) returns a logical vector that specifies the pixels in in
    % with value inGray. Set those pixels in out to outGray.
    
    out(in==inGray) = outGray;
end