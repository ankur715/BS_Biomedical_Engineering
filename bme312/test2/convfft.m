function out = convfft(in,kernel)

% convolve the signal in with kernel in the frequency domain 

% make sure in and kernel are both column vectors

if size(in,2)~=1
   in = in'; 
end

if size(kernel,2)~=1
   kernel = kernel'; 
end

% get the length of the result of the full convolution

N = length(in) + length(kernel) - 1;

% zero-pad in and kernel to length N

in(N) = 0;
kernel(N) = 0;

% compute the discrete fourier transforms of in and kernel. Because we have
% zero padded them to the same length, corresponding elements of IN and K
% are associated with the same frequency.

IN = fft(in);
K = fft(kernel);

% multiply corresponding elements of IN and K together

OUT = IN.*K;

% do an inverse fourier transform to put OUT back into the time domain. out
% is the desired filtered signal.

out = ifft(OUT);

% The MATLAB command out = conv(in,kernel) does the same thing.





