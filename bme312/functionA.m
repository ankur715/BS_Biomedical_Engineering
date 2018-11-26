function functionA()
A=1; B=2; C=3; D=4; E=5; 
[D,E]=functionB(A,B,C); 
fprintf(1,'functionA: A=%d, B=%d, C=%d, D=%d, E=%d\n',A,B,C,D,E)
