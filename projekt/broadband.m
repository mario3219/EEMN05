clc,clear

data = readmatrix('mhzbw1mhz.csv')
figure
plot(data(:,1)./10^6,data(:,2)), xlim([0 40])
xlabel('Frequency (MHz)'), ylabel('dBm\muV')

%%
clc,clear

data = readmatrix('mhzbw25mhz.csv')
figure
plot(data(:,1)./10^6,data(:,2)), xlim([0 40])
xlabel('Frequency (MHz)'), ylabel('dBm\muV')

