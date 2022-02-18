[~,raw]=xlsread('voltage_with_ev.xlsx','A1:A25');
voltage_A=raw;
%[~,raw]=xlsread('voltage_at_634.csv','C10:C33');
%voltage_B=raw;
%[~,raw]=xlsread('voltage_at_634.csv','D10:D33');
%voltage_C=raw;

voltage_A=cellfun(@str2double,voltage_A);
%voltage_B=cellfun(@str2double,voltage_B);
%voltage_C=cellfun(@str2double,voltage_C);

voltage_A_mag=zeros(1,25);
%voltage_B_mag=zeros(1,24);
%voltage_C_mag=zeros(1,24);

for i=1:25
    voltage_A_mag(i)=abs(voltage_A(i));
    %voltage_B_mag(i)=abs(voltage_B(i));
    %voltage_C_mag(i)=abs(voltage_C(i));    
end

t=1:25;
plot(t,voltage_A_mag);
