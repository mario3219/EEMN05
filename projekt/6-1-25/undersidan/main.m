%%
clc,clear
data = readmatrix("CSV4.csv");
figure
start = 84;
stop = height(data);
q = data(start:stop,2);
f = data(start:stop,1)./10^6;

floor = 51.6;
for t = 1:1:284
    if t>0 & t<20
        q(t) = q(t)-(65-floor)
    elseif t>20 & t<56
        q(t) = q(t)-(59-floor)
    elseif t>56 & t<113
        q(t) = q(t)-(55.9-floor)
    elseif t>113 & t<169
        q(t) = q(t)-(53.96-floor)
    elseif t>169 & t<225
        q(t) = q(t)-(52.6-floor)
    elseif t>225 & t<284
        q(t) = q(t)-(51.08-floor)
    end
end

plot(f,q)

%%
clc,clear

final = [];
for t = 1:1:9
    name = append('CSV',int2str(t),'.csv');
    data = readmatrix(name);

    start = 84;
    stop = height(data);
    q = data(start:stop,2);
    f = data(start:stop,1)./10^6;
    
    floor = 51.6;
    for t = 1:1:284
        if t>0 & t<20
            q(t) = q(t)-(65-floor)
        elseif t>20 & t<56
            q(t) = q(t)-(59-floor)
        elseif t>56 & t<113
            q(t) = q(t)-(55.9-floor)
        elseif t>113 & t<169
            q(t) = q(t)-(53.96-floor)
        elseif t>169 & t<225
            q(t) = q(t)-(52.6-floor)
        elseif t>225 & t<284
            q(t) = q(t)-(51.08-floor)
        end
    end

    values = [];
    max = round(height(q)/2);
    intervall = round(max/15);
    for t = 1:intervall:max
        if t+intervall>max
            values = [values sum(q(t:max))/(max-t)];
        else
            values = [values sum(q(t:t+intervall))/intervall];
        end
    end
    final = [final values'];
end
final = [final values'];

degr = [1 2 3 4 5 6 7 8 9 10];

stairs(degr,final')
curtick = get(gca, 'xTick');
xticks(unique(round(curtick)));

%legend('0-1MHz','1-2MHz','2-3MHz','3-4MHz','5-6MHz','6-7MHz','7-8MHz','8-9MHz','9-10MHz', '10-11MHz', '11-12MHz', '12-13MHz', '13-14MHz', '14-15MHz')
title('Magnetic Field Frequency Power')
xlabel('Position')
ylabel('Mean dBm\muV')
xlim([1 9.9])

%%
clc,clear,close all
data = readmatrix("CSV1.csv");
figure
q = data(:,2);
t = data(:,1)./10^6;
dat = [t q];
dat(any(isnan(dat), 2), :) = [];
t = dat(:,1);
q = dat(:,2);

xlabel('Frequency (MHz)'), ylabel('dBm\muV')
[up,lo] = envelope(q,20,'peak');
hold on
plot(t,q,t,up,'linewidth',1.5)
legend('Signal','Envelope'), title('Magnetic Field Frequency Spectrum')
hold off

%%
clc,clear

figure
subplot(1,3,1)
for t = 1:1:9
    if t == 4
        subplot(1,3,2)
    elseif t == 7
        subplot(1,3,3)
    end
    name = append('CSV',int2str(t),'.csv');
    data = readmatrix(name);
    q = data(:,2);
    f = data(:,1)./10^6;
    dat = [f q];
    dat(any(isnan(dat), 2), :) = [];
    f = dat(:,1);
    q = dat(:,2);
    [up,lo] = envelope(q,20,'peak');
    plot(f,up,'linewidth',1.5), hold on
    if t == 3
        legend('Position 1','Position 2','Position 3')
    elseif t == 6
        legend('Position 4','Position 5','Position 6')
    elseif t == 9
        legend('Position 7','Position 8','Position 9')
    end
    xlabel('Frequency (MHz)')
    ylabel('dBm\muV')
end
sgtitle('Magnetic Field Frequency Spectrum')

%%
clc,clear,close all

final = [];
for t = 1:1:9
    name = append('CSV',int2str(t),'.csv');
    data = readmatrix(name);
    values = [];
    max = height(data)/2; %15MHz
    intervall = round(max/15);
    for t = 84:intervall:max
        if t+intervall>max
            values = [values sum(data(t:max,2))/(max-t)];
        else
            values = [values sum(data(t:t+intervall,2))/intervall];
        end
    end
    final = [final values'];
end

final = [final values'];

degr = [1 2 3 4 5 6 7 8 9 10];

stairs(degr,final')
curtick = get(gca, 'xTick');
xticks(unique(round(curtick)));

legend('0-1MHz','1-2MHz','2-3MHz','3-4MHz','5-6MHz','6-7MHz','7-8MHz','8-9MHz','9-10MHz', '10-11MHz', '11-12MHz', '12-13MHz', '13-14MHz', '14-15MHz')
title('Magnetic Field Frequency Power')
xlabel('Position')
ylabel('Mean dBm\muV')
xlim([1 9.9])