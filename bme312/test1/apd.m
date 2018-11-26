
%This code estimates the duration of each action potential. The function's
%input is the optical signal. It has two ourputs which are the mean and std
%deviation.

function [average , deviation] = apd(pace)

[b g] = sgolay(2,55);
der = conv(pace, g(:,2));
secder = conv(pace, g(:,3));
E = peak(der, 185);
F = peak(secder, 185);
C= find(F);
B= find(E);
APD= B-C;
deviation = std(APD);
average = mean(APD);
plot(E,'g'); hold on
plot(F,'y')
end



function out = peak(in,w)

% Finds positive local peaks in the input signal (in). out(i) is the same as
% in(i) if that sample is a local peak; otherwise it is 0. w should be a
% little less than the expected separation between peaks. If w is too big,
% peaks will be skipped. If it is too small, spurious peaks will be
% detected. 

% initialize output signal

out =  zeros(size(in));

for i=w+1:length(in)-w
    
    % copy a hunk of the input signal to a new vector.
    
    window = in(i-w:i+w);
    
    % find the largest value in window (m) and the index at which it occurs
    % (ind).
    
    [m ind] = max(window);
    
    % if the maximum value in window was right in the middle, we have found
    % a local peak
    
    if ind == (w+1)
        out(i)=in(i);
    end
    
end

end
