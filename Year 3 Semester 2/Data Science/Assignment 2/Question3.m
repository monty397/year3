%April 2016
date = EcoTotemBroadwayBicycleCount(:,1);
dateNum = datevec(date);
date_2016 = (dateNum(:,1)==2016);

%extract data from dataset for cyclists
cyclist = EcoTotemBroadwayBicycleCount(:,5);
cyclist_t = cell2mat(cyclist);

%get the month of April
monthApril = (dateNum(:,2)==4);


dates = dateNum(:,3);
day = datevec(EcoTotemBroadwayBicycleCount(:,2),'dddd');
startDay = (day(:,3)==3);
dateVec2016 = (date_2016.*monthApril.*startDay)>0;

dateMonVec = dates(dateVec2016);

Monday = dateMonVec(1:96,1);

start_P = Monday(1,1);
end_P = Monday(1,1) + 5;

%shell to store cyclist
cycApril = zeros(96,6);

%shell to store hours
cycHourApril = zeros(24,6);
k = 0;

for i=start_P:1:end_P
    dateVec = (dateNum(:,3)==i);
    dateVec2016 = (date_2016.*monthApril.*dateVec)>0;
    k = k + 1;
    cycApril(:,k) = cyclist_t(dateVec2016);
    for j=1:1:24
        start_P = j + (j - 1)*3;
        end_P = start_P + 3;
        dayTemp = cycApril(:,k);
        cycHourApril(j,k) = sum(dayTemp(start_P:end_P,1));
    end
end

day1 = cycHourApril(:,1);
day2 = cycHourApril(:,2);
day3 = cycHourApril(:,3);
day4 = cycHourApril(:,4);
day5 = cycHourApril(:,5);
day6 = cycHourApril(:,6);

figure(1);
bar(cycHourApril);title('Total cyclist for April 2016');
xlabel('Hours');
ylabel('Total Cyclist');
grid on;

%%Graph for April 2016
%Monday
figure(1);
bar(day1);title('Total cyclist for April (Monday) 2016');
xlabel('Hours');
ylabel('Total Cyclist');
grid on;

%Tuesday
figure(2);
bar(day2);title('Total cyclist for April (Tueday) 2016');
xlabel('Hours');
ylabel('Total Cyclist');
grid on;

%Wednesday
figure(3);
bar(day3);title('Total cyclist for April (Wednesday) 2016');
xlabel('Hours');
ylabel('Total Cyclist');
grid on;

%Thursday
figure(4);
bar(day4);title('Total cyclist for April (Thursday) 2016');
xlabel('Hours');
ylabel('Total Cyclist');
grid on;

%Friday
figure(5);
bar(day5);title('Total cyclist for April (Friday) 2016');
xlabel('Hours');
ylabel('Total Cyclist');
grid on;

%Saturday
figure(6);
bar(day6);title('Total cyclist for April (Saturday) 2016');
xlabel('Hours');
ylabel('Total Cyclist');
grid on;

%Percentage differences for Monday April 2016
%Monday
mon_cyclist_2016 = mean(day1);
per_difference1 =100*((day1 - mon_cyclist_2016) / mon_cyclist_2016);
figure(1);
bar(per_difference1);title('Percentage difference for Monday April 2016');
xlabel('hours');
ylabel('%');
grid on;

%Tuesday
tue_cyclist_2016 = mean(day2);
per_difference2 =100*((day2 - tue_cyclist_2016) / tue_cyclist_2016);
figure(2);
bar(per_difference2);title('Percentage difference for Tuesday April 2016');
xlabel('hours');
ylabel('%');
grid on;

%Wednesday
wed_cyclist_2016 = mean(day3);
per_difference3 =100*((day3 - wed_cyclist_2016) / wed_cyclist_2016);
figure(3);
bar(per_difference3);title('Percentage difference for Wednesday April 2016');
xlabel('hours');
ylabel('%');
grid on;

%Thursday
thu_cyclist_2016 = mean(day4);
per_difference4 =100*((day1 - thu_cyclist_2016) / thu_cyclist_2016);
figure(4);
bar(per_difference4);title('Percentage difference for Thursday April 2016');
xlabel('hours');
ylabel('%');
grid on;

%Friday
fri_cyclist_2016 = mean(day5);
per_difference5 =100*((day1 - fri_cyclist_2016) / fri_cyclist_2016);
figure(5);
bar(per_difference5);title('Percentage difference for Friday April 2016');
xlabel('hours');
ylabel('%');
grid on;

%Saturday
sat_cyclist_2016 = mean(day6);
per_difference6 =100*((day6 - sat_cyclist_2016) / sat_cyclist_2016);
figure(6);
bar(per_difference6);title('Percentage difference for Saturday April 2016');
xlabel('hours');
ylabel('%');
grid on;


%April 2017
date_2017 = (dateNum(:,1)==2017);

%empty shell for cyclists
cycApril2017 = zeros(96,6);

%empty shell for hours
cycHourApril2017 = zeros(24,6);

dateVec2017 = (date_2017.*monthApril.*startDay)>0;
dateMonVec = dates(dateVec2017);
Monday = dateMonVec(1:96,1);

start_17 = Monday(1,1);
end_17 = Monday(1,1) + 5;
p = 0;
for i=start_17:1:end_17
    dateVec = (dateNum(:,3)==i);
    dateVec2017 = (date_2017.*monthApril.*dateVec)>0;
    p = p + 1;
    cycApril2017(:,p) = cyclist_t(dateVec2017);
    for j=1:1:24
        aP_start = j + (j - 1)*3;
        aP_end = aP_start + 3;
        dayTemp = cycApril2017(:,p);
        cycHourApril2017(j,p) = sum(dayTemp(aP_start:aP_end,1));
    end
end

day171 = cycHourApril2017(:,1);
day172 = cycHourApril2017(:,2);
day173 = cycHourApril2017(:,3);
day174 = cycHourApril2017(:,4);
day175 = cycHourApril2017(:,5);
day176 = cycHourApril2017(:,6);

%%Graph for April 2017
%Monday
figure(1);
bar(day171);title('Total cyclist for April (Monday) 2017');
xlabel('Hours');
ylabel('Total Cyclist');
grid on;

%Tuesday
figure(2);
bar(day172);title('Total cyclist for April (Tueday) 2017');
xlabel('Hours');
ylabel('Total Cyclist');
grid on;

%Wednesday
figure(3);
bar(day173);title('Total cyclist for April (Wednesday) 2016');
xlabel('Hours');
ylabel('Total Cyclist');
grid on;

%Thursday
figure(4);
bar(day174);title('Total cyclist for April (Thursday) 2017');
xlabel('Hours');
ylabel('Total Cyclist');
grid on;

%Friday
figure(5);
bar(day175);title('Total cyclist for April (Friday) 2017');
xlabel('Hours');
ylabel('Total Cyclist');
grid on;

%Saturday
figure(6);
bar(day176);title('Total cyclist for April (Saturday) 2017');
xlabel('Hours');
ylabel('Total Cyclist');
grid on;

%Percentage differences for Monday April 2017
%Monday
mon_cyclist_2017 = mean(day171);
per_difference171 =100*((day171 - mon_cyclist_2016) / mon_cyclist_2017);
figure(1);
bar(per_difference171);title('Percentage difference for Monday April 2017');
xlabel('hours');
ylabel('%');
grid on;

%Tuesday
tue_cyclist_2017 = mean(day172);
per_difference172 =100*((day172 - tue_cyclist_2017) / tue_cyclist_2017);
figure(2);
bar(per_difference172);title('Percentage difference for Tuesday April 2017');
xlabel('hours');
ylabel('%');
grid on;

%Wednesday
wed_cyclist_2017 = mean(day173);
per_difference173 =100*((day173 - wed_cyclist_2017) / wed_cyclist_2017);
figure(3);
bar(per_difference173);title('Percentage difference for Wednesday April 2017');
xlabel('hours');
ylabel('%');
grid on;

%Thursday
thu_cyclist_2017 = mean(day174);
per_difference174 =100*((day1 - thu_cyclist_2017) / thu_cyclist_2017);
figure(4);
bar(per_difference174);title('Percentage difference for Thursday April 2017');
xlabel('hours');
ylabel('%');
grid on;

%Friday
fri_cyclist_2017 = mean(day175);
per_difference175 =100*((day1 - fri_cyclist_2017) / fri_cyclist_2017);
figure(5);
bar(per_difference175);title('Percentage difference for Friday April 2017');
xlabel('hours');
ylabel('%');
grid on;

%Saturday
sat_cyclist_2017 = mean(day176);
per_difference176 =100*((day176 - sat_cyclist_2017) / sat_cyclist_2017);
figure(6);
bar(per_difference176);title('Percentage difference for Saturday April 2017');
xlabel('hours');
ylabel('%');
grid on;