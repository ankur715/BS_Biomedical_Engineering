function sleepy(blink,eye)

% Use normalized cross correlation to compute how sleepy a cat is. Use
% MATLAB handle graphics for smoother animation. Blink is a 3D array
% containing frames of a movie. eye is a template image.

% we will make a figure window with two subplots. The top will be a movie
% of the cat and the bottom will be a plot of "wakefullness."

subplot(2,1,1);

% create an image of the first frame. Keep a handle to it so we can modify
% it later

hi = imshow(blink(:,:,1));

% create a plot of the red circle that will track the eye. keep a handle to
% it for later modification.

hold on
hp1 = plot(0,0,'ro');

% set up the plot in the bottom subplot

subplot(2,1,2)

% create the plot and keep a handle

hp2 = plot(0,0);

% set the axis scaling

axis([0 size(blink,3) 0 1]);

% These offsets account for the difference in size between the cat images
% and the cross correlation images created below.

offsetX = round((size(eye,2)-1)/2);
offsetY = round((size(eye,1)-1)/2);

% loop over each movie frame

for i=1:size(blink,3)
    
   % update the CData property of the image--this sets the image to the
   % current frame
   
   set(hi,'CData',blink(:,:,i));
   
   % Compute the normalized cross-correlation between eye and the current
   % frame. In frames in which the eye is open, the output image will have
   % a bright spot at the position in which the eye template lines up best
   % with the input image. 
   
   X = normxcorr2(eye,blink(:,:,i));
   
   % find the maximum intensity (and its postion) in X. When the eye is
   % closed, this may not line up the eye.
   
   [m(i) ind] = max(X(:));
   
   % convert the linear index from max to row/column indices into X
   
   [i j] = ind2sub(size(X),ind);
   
   % update the position of the red circle to put it over the eye. X is
   % bigger than movie frames by half the size of template around all
   % edges.  Use the offsets computed above to correct the postion of the
   % marker.
   
   set(hp1,'XData',j-offsetX)
   set(hp1,'YData',i-offsetY);
   
   % update the wakefullness plot
   
   set(hp2,'Xdata',1:length(m))
   set(hp2,'YData',m);
   
   % short pause so graphics can keep up with loop
   
   pause(0.001);
   
end