function out = boxcar2(in,w)

% use a time domain convolution to apply a boxcar (moving average) filter

% make sure input signal (in) is a column vector

if size(in,2)~=1
   in = in'; 
end

% preallocate the output signal

out = zeros(size(in));

% make the kernel

kernel = ones(1,2*w+1)/(2*w+1);

for i=w+1:length(in)-w
    
    % Apply the kernel at the current position of the sliding window.
    % kernel is a row vector and the hunk of in is column vector. Both are
    % the same size. With these operands, the "*" operator does a "dot
    % product"--multiplies corresponding elements and sums the results
    
    out(i) = kernel*in(i-w:i+w);
    
end