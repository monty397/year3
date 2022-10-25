%2016
date = EcoTotemBroadwayBicycleCount(:,1);
dateNum = datevec(date);
date_2016 = (dateNum(:,1)==2016);

day = datevec(EcoTotemBroadwayBicycleCount(:,2),'dddd');
cyclist = EcoTotemBroadwayBicycleCount(:,5);
total_cyclist = cell2mat(cyclist);
cyclist_w = zeros(4,7);

dates = dateNum(:,3);
dayMon = (day(:,3)==2);
startDay = zeros(4,1);

%Full empty matrix with cyclists

for i=1:1:4
    aP = 1 + (i-1)*3;
    month = (dateNum(:,2)==aP);
    
    dateWeekVec =(date_2016.*month.*dayMon)>0;
    dateMonVec = dates(dateWeekVec);
    Sun = dateMonVec(1:96,1);
    
    startDay(i,1) = Sun(1,1);
    start_p = startDay(i,1);
    endP = startDay(i,1) + 6;
    k = 1;
    
    for j=start_p:1:endP
    day = (dateNum(:,3)==j);
    month_day = date_2016.*month.*day;
    month_day_vec = month_day > 0;
    cyclist_w(i,k) = sum(total_cyclist(month_day_vec));
    k = k+1;
    end
end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%Extract data for each month for displaying
Jan_2016 = cyclist_w(1,:);
Apr_2016 = cyclist_w(2,:);
Jul_2016 = cyclist_w(3,:);
Oct_2016 = cyclist_w(4,:);

%%This graph displays all the information for the 4 months for 2017
figure(1);
bar(cyclist_w);title('Total cyclist for the months of January, April, July and August of 2016');
xlabel('Quarterly Months');
ylabel('Total Cyclist');
grid on;

%%Graph for Jan 2016
figure(1);
bar(Jan_2016);title('Total cyclist for week of January 2016');
xlabel('January');
ylabel('Total Cyclist');
grid on;

%%Graph for Apr 2016
figure(2);
bar(Apr_2016);title('Total cyclist for 1st week of April 2016');
xlabel('April');
ylabel('Total Cyclist');
grid on;

%%Graph for Jul 2016
figure(3);
bar(Jul_2016);title('Total cyclist for 1st week of July 2016');
xlabel('Week');
ylabel('Total Cyclist');
grid on;

%%Graph for Oct 2016
figure(4);
bar(Oct_2016);title('Total cyclist for 1st week of October 2016');
xlabel('Week');
ylabel('Total Cyclist');
grid on;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%Percentage differences for Jan 2016
janA_cyclist_2016 = mean(Jan_2016);
per_difference_2016 =100*((Jan_2016 - janA_cyclist_2016) / janA_cyclist_2016);
figure(1);
bar(per_difference_2016);title('Percentage difference for January 2016');
xlabel('%');
ylabel('Total Cyclist');
grid on;

%Percentage differences for Apr 2016
aprA_cyclist_2016 = mean(Apr_2016);
aPer_difference_2016 =100*((Apr_2016 - aprA_cyclist_2016) / aprA_cyclist_2016);
figure(2);
bar(aPer_difference_2016);title('Percentage difference for April 2016');
xlabel('%');
ylabel('Total Cyclist');
grid on;

%Percentage differences for Jul 2016
julA_cyclist_2016 = mean(Jul_2016);
juPer_difference_2016 =100*((Jul_2016 - julA_cyclist_2016) / julA_cyclist_2016);
figure(3);
bar(juPer_difference_2016);title('Percentage difference for July 2016');
xlabel('%');
ylabel('Total Cyclist');
grid on;

%Percentage differences for Oct 2016
octA_cyclist_2016 = mean(Oct_2016);
oPer_difference_2016 =100*((Oct_2016 - octA_cyclist_2016) / octA_cyclist_2016);
figure(4);
bar(oPer_difference_2016);title('Percentage difference for October 2016');
xlabel('%');
ylabel('Total Cyclist');
grid on;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%2017
date_2017 = (dateNum(:,1)==2017);
cyclist_2017 = zeros(4,7);
%Full empty matrix with cyclists
for i=1:1:4
    aP = 1 + (i-1)*3;
    month = (dateNum(:,2)==aP);
    
    dateWeekVec =(date_2017.*month.*dayMon)>0;
    dateMonVec = dates(dateWeekVec);
    Sunday = dateMonVec(1:96,1);
    
    startDay(i,1) = Sunday(1,1);
    start_p = startDay(i,1);
    endP = startDay(i,1) + 6;
    k = 1;
    for j=start_p:1:endP
    day = (dateNum(:,3)==j);
    month_day = date_2017.*month.*day;
    month_day_vec = month_day > 0;
    cyclist_2017(i,k) = sum(total_cyclist(month_day_vec));
    k = k+1;
    end
end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%This graph displays all the information for the 4 months for 2017
figure(1);
bar(cyclist_2017);title('Total cyclist for the months of January, April, July and August of 2017');
xlabel('Quarterly Months');
ylabel('Total Cyclist');
grid on;

%Rows for cyclist for 2017
Jan_2017 = cyclist_2017(1,:);
Apr_2017 = cyclist_2017(2,:);
Jul_2017 = cyclist_2017(3,:);
Oct_2017 = cyclist_2017(4,:);

%%Graph for Jan 2017
figure(5);
bar(Jan_2017);title('Total cyclist for week of January 2017');
xlabel('January');
ylabel('Total Cyclist');
grid on;

%%Graph for Apr 2017
figure(6);
bar(Apr_2017);title('Total cyclist for 1st week of April 2017');
xlabel('April');
ylabel('Total Cyclist');
grid on;

%%Graph for Jul 2017
figure(7);
bar(Jul_2017);title('Total cyclist for 1st week of July 2017');
xlabel('Week');
ylabel('Total Cyclist');
grid on;

%%Graph for Oct 2017
figure(8);
bar(Oct_2017);title('Total cyclist for 1st week of October 2017');
xlabel('Week');
ylabel('Total Cyclist');
grid on;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%Percentage differences for Jan 2017
janA_cyclist_2017 = mean(Jan_2017);
per_difference_2017 =100*((Jan_2017 - janA_cyclist_2017) / janA_cyclist_2017);
figure(1);
bar(per_difference_2017);title('Percentage difference for January 2017');
xlabel('%');
ylabel('Total Cyclist');
grid on;

%Percentage differences for Apr 2017
aprA_cyclist_2017 = mean(Apr_2017);
aPer_difference_2017 =100*((Apr_2017 - aprA_cyclist_2017) / aprA_cyclist_2017);
figure(2);
bar(aPer_difference_2017);title('Percentage difference for April 2017');
xlabel('%');
ylabel('Total Cyclist');
grid on;

%Percentage differences for Jul 2017
julA_cyclist_2017 = mean(Jul_2017);
juPer_difference_2017 =100*((Jul_2017 - julA_cyclist_2017) / julA_cyclist_2017);
figure(3);
bar(juPer_difference_2017);title('Percentage difference for July 2017');
xlabel('%');
ylabel('Total Cyclist');
grid on;

%Percentage differences for Oct 2017
octA_cyclist_2017 = mean(Oct_2017);
oPer_difference_2017 =100*((Oct_2017 - octA_cyclist_2017) / octA_cyclist_2017);
figure(4);
bar(oPer_difference_2017);title('Percentage difference for October 2017');
xlabel('%');
ylabel('Total Cyclist');
grid on;

