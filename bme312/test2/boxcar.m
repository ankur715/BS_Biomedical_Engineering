function out = boxcar(in,w)

% function out = boxcar(in,w)
% apply a "boxcar" moving average filter to signal in. The filtered signal
% is returned in out. w specifies the length of the filter: the filter
% window has central sample and w samples before and after it, so the total
% filter length is 2*w+1.

% preallocate the output signal. It is the same size as in. After
% filtering, the w samples at the beginning and end of out will still be 0.

out = zeros(size(in));

% apply the filter. The first output sample is inset w samples from the
% begining of in and the last output sample is inset w samples from the
% end.

for i=w+1:length(in)-w
    
    % compute the average of the 2w+1 input samples in the filter window
    
    out(i) = mean(in(i-w:i+w));
    
end