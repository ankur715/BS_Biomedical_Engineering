% use the input command to read in the length of the vector. We use a
% semicolon to prevent the value of n from being echoed to the command
% window.

n = input('enter n: ');

% Make a random row vector with n elements

r=rand(1,n);

% Make a logical vector that indicates which elements of r are > 0.5. We
% use a vector/scalar operation in which each element of r is compared to
% 0.5

l = r>0.5;

% count the "true" elements in l by summing the vector. This time, we leave
% off the semicolon so we can see the answer. s should be about half of n.

s=sum(l)