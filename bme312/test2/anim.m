% script to animate data using handle graphics

% blink is a 3D array in the main workspace. Each slice of the array is one
% frame of a movie.

% use imshow to display the first frame of the movie. Save the return value
% in variable h. h becomes a "handle" to the displayed image. We can use
% the handle to read and write the properties of the image. For example,
% the command "get(h)" will list all of the image's properties.
% "get(h,'Cdata') will return the contents of the CData property, which is
% an array containing the grayscale intensity of each pixel in the image. 

h = imshow(blink(:,:,1));

% loop over each frame in the movie

for i=2:size(blink,3)
    
    % update the image. We use the "set" command to replace the image
    % contained in the Cdata property. This is much faster than calling
    % imshow for each frame.
    
    set(h,'CData',blink(:,:,i));
    
    % give the graphics system a little time to redraw the image before
    % going to the next loop iteration.
    
    pause(0.001);
    
end


% The same techniques can be used to modify a 2D plot after it has been
% created. In this case, you would work with the XData and YData properties