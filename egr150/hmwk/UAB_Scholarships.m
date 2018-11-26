clear;clc

ACT=input('What is your ACT score? ')
GPA=input('What is your GPA? ')

if ACT>=33 & ACT<=36 & GPA>=3.0 & GPA<=3.29
    scholarship='Presidential'
elseif ACT>=28 & ACT<=32 & GPA>=3.3 & GPA<=4.0
    scholarship='Golden Excellence'
elseif ACT>=25 & ACT<=27 & GPA>=3.5 & GPA<=4.0
    scholarship='Collegiate Honors' 
elseif ACT==24 & GPA>=3.5 & GPA<=4.0
    scholarship='UAB Breakthrough'
elseif ACT>=24 & ACT<=27 & GPA>=3.0 & GPA<=3.49
    scholarship='UAB Academic Achievement'
else scholarship='No Scholarship'
end
