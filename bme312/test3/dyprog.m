function [table alignedS alignedT] = dyprog(S,T)

% find one optimal alignment of the the two sequences in S and T. The
% dynamic programming score table is returned in table. alignedS and
% alignedT are the sequences with gaps inserted to yield the highest score.

% prepend S and T with the gap character '-' This is to match the header
% row/column in the table (see notes).

S = ['-' S]
T = ['-' T]

% preallocate table and the arrows array. 

table = zeros(length(S),length(T));
arrows = zeros(size(table));

% set the 1,1 element of table to the score for a gap matched with a gap

table(1,1) = 0;

% fill in the first column of table and arrows. arrow=2 points up

for i = 2:length(S)
    table(i,1) = table(i-1,1) + score(S(i),'-');
    arrows(i,1) = 2;
end

% fill in the first row of table and arrows. arrow=3 points left.

for j=2:length(T)
    table(1,j) = table(1,j-1) + score('-',T(j));
    arrows(1,j) = 3;
end

% use the recurrence relation to fill in the rest of the table

for i = 2:length(S)
    for j = 2:length(T)
        
        % find which of the three choies give the best score (if there is a
        % tie, just take the first one).
        
        [mx ind] = max( [table(i-1,j-1)+score(S(i),T(j)), ...
                         table(i-1,j) + score(S(i),'-'), ...
                         table(i,j-1) + score('-',T(j))] );
                     
        table(i,j) = mx;  % save the score of best choice
        
        % use the index of the best choice (1,2 or 3) as the "arrow"
        % information
        
        arrows(i,j) = ind;
    end
end

% trace back to recover the best aignment

% initialize i and j to point to the last cell in the table 

i = length(S);
j = length(T);

% initialize alignedS and alignedT to the empty sequence

alignedS = '';
alignedT = '';

% keep looping until i and j are both 1

while i>1 || j>1
    switch arrows(i,j)
        case 1
            
            % diagonal arrow. add current S and T characters to the aligned
            % sequences. Jump diagonally
            
            alignedS = [S(i) alignedS];
            alignedT = [T(j) alignedT];
            i = i-1;
            j=j-1;
        case 2
            
            % up arrow. add current S character to alignedS and gap to
            % alignedT. Jump to cell above
            
            alignedS = [S(i) alignedS];
            alignedT = ['-' alignedT];
            i = i-1;
        case 3
            
            % left arrow. add current T character to alignedT and gap to
            % alignedS. jump to cell to left.
 
            alignedS = ['-' alignedS];
            alignedT = [T(j) alignedT];
            j = j-1;
    end
end


function s = score(a,b)

% scoring function

if a==b
    s = 2;
else 
    s = -1;
end