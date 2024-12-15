%%
clear,clc

dat = readtable('47microH.csv')
figure
tbl = table(dat.Z,dat.FREQUENCY)