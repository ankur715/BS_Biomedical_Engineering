cone=[24.5 25 17 22];
grphone=char(zeros(1,length(cone)));
for index=1:length(cone)
    grphone(index)=sprintf('a');
end
length(cone)
mean(cone)
std(cone)

ctwo=[9 17 11.5 9.5]
grphtwo=char(zeros(1,length(ctwo)));
for index=1:length(ctwo)
    grphtwo(index)=sprintf('b');
end
length(ctwo)
mean(ctwo)
std(ctwo)

cthree=[12.5 14 23.5 12.5];
grphthree=char(zeros(1,length(cthree)));
for index=1:length(cthree)
    grphthree(index)=sprintf('c');
end
length(cthree)
mean(cthree)
std(cthree)

cfour=[23.5 22 23.5 19.5];
grphfour=char(zeros(1,length(cfour)));
for index=1:length(cfour)
    grphfour(index)=sprintf('d');
end
length(cfour)
mean(cfour)
std(cfour)

cfive=[8 7 8 6.5];
grphfour=char(zeros(1,length(cfive)));
for index=1:length(cfive)
    grphfive(index)=sprintf('e');
end
length(cfive)
mean(cfive)
std(cfive)

call=[cone,ctwo,cthree,cfour,cfive];
grphall=[grphone,grphtwo,grphthree,grphfour,grphfive];
grphall=transpose(grphall);

p=anova1(call,grphall)

