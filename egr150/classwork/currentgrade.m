clear;clc

disp('This code calculates your current average grade in this class')
disp('You need to input your individual grades with 2 decimal places')

hw1=input('What is your average for homework 1? ')
hw2=input('What is your average for homework 2? ')
hw3=input('What is your average for homework 3? ')
test1=input('What is your grade for test 1? ')

hwaverage=(hw1+hw2+hw3)/3;
currentaverage=(((hwaverage*0.4)+(test1*0.15))/55)*100