clc,clear

dat = readmatrix('kndensat.csv')
figure
plot(dat(:,1),dat(:,2))

%%
clc,clear
dat = readmatrix('kort vs lang.csv')
figure
plot(dat(:,1),dat(:,2))

%%
clc,clear
dat1 = readmatrix('kort vs lang.csv')
dat2 = readmatrix('kndensat.csv')
figure
plot(dat1(:,1)./10^6,dat1(:,2)), hold on
plot(dat1(:,1)./10^6,dat1(:,3)), hold on
plot(dat2(:,1)./10^6,dat2(:,2))
legend('Kort kondensator','Diskreta komponenter kondensator','Lång kondensator')
xlabel('Frekvens (MHz)'), ylabel('dBm')