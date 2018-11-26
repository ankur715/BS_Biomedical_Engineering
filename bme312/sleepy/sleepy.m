function sleep = sleepy(video,crop)
%Takes in an input video and parses each frame. The plot of each
%from of the video to the template is then graphed. The point of highest
%plot is also plotted on the video for each frame.

%Get a image template.

%start a subplot. has input videos
subplot(2,1,1);

%manes video
h = imshow(video(:,:,1)); 
hold on

%parsing through each frame of the video
for k=1:size(video,3)
    
    set(h,'CData',video(:,:,k));

    pause(0.001);
    
%Find the correlation of each frame to the template
        c = normxcorr2(crop, video(:,:,k));
%max value and index scored
        [maxc ind] = max(abs(c(:)));
        [y, x] = ind2sub(size(c),ind(1));
%plot the points of highest correlation in first
        subplot(2,1,1);
        plot(x,y,'ro')

%plot the max value for each timestep in second
        subplot(2,1,2); hold on; 
        xlabel('Time');
        ylabel('Correlation (Wakefullness)');
        plot(k,maxc,'h',...
                'MarkerEdgeColor','k',...
                'MarkerFaceColor','k',...
                'MarkerSize',3);


end