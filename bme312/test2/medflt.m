function out = medflt(in,w)

% apply a median filter of width w to input signal in and return result in
% out. This is very similar to the boxcar filter, but we use median()
% instead of mean(). Median filters are good at getting rid of big outliers
% in your data.

out = zeros(size(in));

for i=w+1:length(in)-w
    out(i) = median(in(i-w:i+w));
end