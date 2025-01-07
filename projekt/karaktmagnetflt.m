clc,clear,close all
H = [12.6 11 11.6 11.8 9.4 9.84 6.16 15];
degr = [0 45 90 135 180 225 270 315];
plot(degr,H),ylim([5 110]), xlim([0 315]), hold on
title('Magnetic Field Strength')
xlabel('Angle (Degrees)')
ylabel('Voltage Pk-Pk (V)')

mid = linspace(91.2,91.2,315);
plot(mid)
legend('Moving the probe around the circumference','Placing the probe in the middle');

%%
clc,clear
R = 50;
dbuv = 89;
dbm = dbuv-90-10*log(50);
P = 0.000097275*10^-3;
U = sqrt(P*R)

%%
clc,clear
H = [3.44 5.72 2.14 2.14]
stairs(H)
curtick = get(gca, 'xTick');
xticks(unique(round(curtick)));
title('Magnetic Field Strength')
xlabel('Probe position')
ylabel('Voltage Pk-Pk (V)')
xlim([1 3.5])
