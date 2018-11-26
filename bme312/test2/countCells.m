function N = countCells(I)

% Use ginput to manually count objects in an image. 

% initialize counter and diplay image

N=0;
imshow(I);
hold on;

% loop until user types the letter q

while 1
    
    % display crosshairs on image an wait for first mouse click or button 
    % press. The coorinates of the crosshair are returned in x and y. b
    % tells us which button/key was pressed.
    
    [x y b] = ginput(1);
    
    % if the user typed q, exit
    
    if b=='q', break; end
    
    % otherwise increment the counter...
    
    N=N+1;
    
    % and plot a red circle on the image on the click position.
    
    plot(x,y,'or');
end