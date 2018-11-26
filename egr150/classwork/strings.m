myName='Ankur'

myName =

Ankur

myName=='Ankur'

ans =

     1     1     1     1     1

myName=='ankur'

ans =

     0     1     1     1     1

all(ans)

ans =

     0

length(Ankur)
Undefined function or variable 'Ankur'.
 
length(myName)

ans =

     5

vec=1:5

vec =

     1     2     3     4     5

vec(1,5)

ans =

     5

vec(1)

ans =

     1

vec(2)

ans =

     2

myname(3)=
 myname(3)=
          |
Error: Expression or statement is incomplete or
incorrect.
 
myName(3)

ans =

k

myname(1)
Undefined function 'myname' for input arguments of
type 'double'.
 
myName(1)

ans =

A

myName(5)='R'

myName =

AnkuR

atrfind(myName,'R')
Undefined function 'atrfind' for input arguments of
type 'char'.
 
strfind(myName,'R')

ans =

     5

myassignment=strfind(myName,'R')

myassignment =

     5

myName(myassignment)='r'

myName =

Ankur

firstname='Hassan'

firstname =

Hassan

firstname='Ankur'

firstname =

Ankur

title='dr.'

title =

dr.

lastname='patel'

lastname =

patel

vec

vec =

     1     2     3     4     5

t=45

t =

    45

[vec t]

ans =

     1     2     3     4     5    45

[vec firstname]

ans =

Ankur

double('h')

ans =

   104

double('H')

ans =

    72

str='C')
 str='C')
       |
Error: Unbalanced or unexpected parenthesis or
bracket.
 
str='C'

str =

C

lstr'c'
 lstr'c'
     |
Error: Unexpected MATLAB expression.
 
lstr='c'

lstr =

c

str-lstr

ans =

   -32

str='ritheyc'

str =

ritheyc

['ritheyc';'catherine';'ritchey']
Error using vertcat
CAT arguments dimensions are not consistent.
 
['ritheyc';'catherine';'ritheyc']
Error using vertcat
CAT arguments dimensions are not consistent.
 
char('ritheyc';'catherine';'ritheyc')
 char('ritheyc';'catherine';'ritheyc')
              |
Error: Unbalanced or unexpected parenthesis or
bracket.
 
user=input('what is your name?')
what is your name? 'ankur'

user =

ankur

user=input('what is your name?','s'))
 user=input('what is your name?','s'))
                                    |
Error: Unbalanced or unexpected parenthesis or
bracket.
 
user=input('what is your name?','s')
what is your name? ankur

user =

 ankur

