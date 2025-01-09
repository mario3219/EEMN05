%%
clc,clear

data = readmatrix('7 4t8.csv')
figure
plot(data(:,1)./(10^6), data(:,2)), hold on
plot(data(:,1)./(10^6), data(:,3)), hold on
plot(data(:,1)./(10^6), data(:,4)), hold on
plot(data(:,1)./(10^6), data(:,5)), hold on
xlabel('Frequency (MHz)'), ylabel('dBm'), ylim([-5 0]), legend('5 ferrit', '6 ferrit', '7 ferrit', '8 ferrit'), title('FB-75-101')

%%
clc,clear

data = readmatrix('43 8parlor.csv')
figure
plot(data(:,1)./(10^6), data(:,2)), hold on
plot(data(:,1)./(10^6), data(:,3)), hold on
plot(data(:,1)./(10^6), data(:,4)), hold on
plot(data(:,1)./(10^6), data(:,5)), hold on
xlabel('Frequency (MHz)'), ylabel('dBm'), ylim([-5 0]), legend('5 ferrit', '6 ferrit', '7 ferrit', '8 ferrit'), title('FB-43-101')

%%
clc,clear

data = readmatrix('61 0T4.csv')
figure
plot(data(:,1)./(10^6), data(:,2)), hold on
plot(data(:,1)./(10^6), data(:,3)), hold on
plot(data(:,1)./(10^6), data(:,4)), hold on
plot(data(:,1)./(10^6), data(:,5)), hold on
xlabel('Frequency (MHz)'), ylabel('dBm'), ylim([-8.5 0]), legend('1 ferrit', '2 ferrit', '3 ferrit', '4 ferrit'), title('FB-61-101')

%%
clc,clear

data = readmatrix('61 4T8.csv')
figure
plot(data(:,1)./(10^6), data(:,2)), hold on
plot(data(:,1)./(10^6), data(:,3)), hold on
plot(data(:,1)./(10^6), data(:,4)), hold on
plot(data(:,1)./(10^6), data(:,5)), hold on
xlabel('Frequency (MHz)'), ylabel('dBm'), ylim([-4.5 0]), legend('5 ferrit', '6 ferrit', '7 ferrit', '8 ferrit'), title('FB-61-101')

%%
clc,clear

data = readmatrix('75 0T4.csv')
figure
plot(data(:,1)./(10^6), data(:,2)), hold on
plot(data(:,1)./(10^6), data(:,3)), hold on
plot(data(:,1)./(10^6), data(:,4)), hold on
plot(data(:,1)./(10^6), data(:,5)), hold on
xlabel('Frequency (MHz)'), ylabel('dBm'), ylim([-8.5 0]), legend('1 ferrit', '2 ferrit', '3 ferrit', '4 ferrit'), title('FB-75-101')

%%
clc,clear

data = readmatrix('43manga.csv')
figure
plot(data(:,1)./(10^6), data(:,2)), hold on
plot(data(:,1)./(10^6), data(:,3)), hold on
plot(data(:,1)./(10^6), data(:,4)), hold on
plot(data(:,1)./(10^6), data(:,5)), hold on
xlabel('Frequency (MHz)'), ylabel('dBm'), ylim([-9 0]), legend('1 ferrit', '2 ferrit', '3 ferrit', '4 ferrit'), title('FB-43-101')