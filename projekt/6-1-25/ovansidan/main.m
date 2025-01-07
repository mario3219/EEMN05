%%
clc,clear
data = readmatrix("CSV6.csv")
figure
plot(data(:,1)./10^6,data(:,2))
xlabel('Frequency (MHz)'), ylabel('dBm\muV')

%%
clc,clear

final = [];
for t = 1:1:8
    name = append('CSV',int2str(t),'.csv');
    data = readmatrix(name);
    values = [];
    for t = 1:79:height(data)
        if t+79>height(data)
            values = [values sum(data(t:height(data),2))/(height(data)-t)];
        else
            values = [values sum(data(t:t+80,2))/79];
        end
    end
    final = [final values'];
end

data = readmatrix('CSV9.csv');
values = [];
for t = 1:79:height(data)
    if t+79>height(data)
        values = [values sum(data(t:height(data),2))/(height(data)-t)];
    else
        values = [values sum(data(t:t+79,2))/79];
    end
end
final = [final values'];
final = [final values'];

degr = [1 2 3 4 5 6 7 8 9 10];

stairs(degr,final')
curtick = get(gca, 'xTick');
xticks(unique(round(curtick)));

legend('0-0.1MHz','0.1-0.2MHz','0.2-0.3MHz','0.3-0.4MHz','0.5-0.6MHz','0.6-0.7MHz','0.7-0.8MHz','0.8-0.9MHz','0.9-1MHz')
title('Magnetic Field Frequency Spectrum')
xlabel('Position')
ylabel('Mean dBm\muV')
xlim([1 9.9])
