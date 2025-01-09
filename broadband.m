clc,clear

data = readmatrix('mhzbw1mhz.csv')
figure
plot(data(:,1)./10^6,data(:,2))
xlabel('Frequency (MHz)'), ylabel('dB\muV')

%%
clc,clear

data = readmatrix('prob.csv')
figure
plot(data(:,1)./10^6,data(:,2))
xlabel('Frequency (MHz)'), ylabel('dB\muV')

%%
clc,clear

data = readmatrix('SSA_241216185519.csv')
figure
plot(data(:,1)./10^6,data(:,2))
xlabel('Frequency (MHz)'), ylabel('dB\muV')



