%%Question 1

%2016
date = EcoTotemBroadwayBicycleCount(:,1);
dateNum = datevec(date);
date_2016 = (dateNum(:,1)==2016);

%Extract cyclist data from dataset
cyclist = EcoTotemBroadwayBicycleCount(:,5);
total_cyclist = cell2mat(cyclist);

%Fill data into empty matrix
%%Get months in the year
cyclist_2016 = zeros(12,1);
for i=1:1:12
    mon_2016 = dateNum(:,2)==i;
    month_2016Vec = mon_2016.*date_2016;
    month_2016_vec = month_2016Vec > 0;
    cyclist_2016(i,1) = sum(total_cyclist(month_2016_vec));
end

%2017
%Fill data into empty matrix
date_2017 = (dateNum(:,1)==2017);
cyclist_2017 = zeros(12,1);
for i=1:1:12
    mon_2017 = dateNum(:,2)==i;
    month_2017Vec = mon_2017.*date_2017;
    month_2017_vec = month_2017Vec > 0;
    cyclist_2017(i,1) = sum(total_cyclist(month_2017_vec));
end

%Plotting total cyclist per month for 2017/2017
figure(1); bar(cyclist_2016);title('Total cyclist per Month for 2016');xlabel('Month');ylabel('Total Cyclist'); grid on;
figure(2); bar(cyclist_2017);title('Total cyclist per Month for 2017');xlabel('Month');ylabel('Total Cyclist'); grid on;

%%Percentage difference for 2016
%Get Average First
avg_cyclist_2016 = mean(cyclist_2016);
month_difference_2016 =100*((cyclist_2016 - avg_cyclist_2016) / avg_cyclist_2016);

%%Percentage difference for 2017
%Get Average First
avg_cyclist_2017 = mean(cyclist_2017);
month_difference_2017 = 100*((cyclist_2017 - avg_cyclist_2017) / avg_cyclist_2017);

%%Plot percentage difference
figure(3); 
bar(month_difference_2016);
title('Percentange Difference  for 2016');
xlabel('Month');
ylabel('%'); 
grid on;

figure(4);
bar(month_difference_2017);
title('Percentange Difference  for 2017');
xlabel('Month');ylabel('%');
grid on;
