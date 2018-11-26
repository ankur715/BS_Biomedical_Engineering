function out = peak2d(in,w)

% peak finder for images

out = zeros(size(in));



for i = 1+w:size(in,1)-w
   for j = 1+w:size(in,2)-w
       
       % grab a chunk of the input image
       
       chunk = in(i-w:i+w,j-w:j+w);
       
       % find the largest value in chunk
       
       [m ind] = max(chunk(:));
       
       % if it is right in the middle, we have a peak
       
       if ind == (length(chunk(:))+1)/2
           out(i,j) = in(i,j);
       end
       
     end
end
