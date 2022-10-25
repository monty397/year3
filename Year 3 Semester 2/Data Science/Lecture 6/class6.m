%%%% Data Science - Class 6
%question: plot a bar graph of the total cyclist for
%          each Wednesday in July of 2015
%%% Steps
%%% i)narrow dataset to the particular dates, ii) gather total cyclist info
%%% on those dates, iii) gather total cyclist info per day on those dates

%------------------------------------------------------
% Step-1: narrow dataset to the particular dates,
%------------------------------------------------------
% 1-a) obtain the data on July 2015
date = EcoTotemBroadwayBicycleCount(:,1);
% convert to numberic array to search through
dateNum = datevec(date);
%%% obtain a logical vector for the year 2015
date_2015 = (dateNum(:,1)==2015);
%%% obtain a logical vector for July
date_July = (dateNum(:,2)==7);
%%% 1-b) obtain a logical vector for Wednesdays
   %%% convert days in text to corresponding numbers
   day = datevec(EcoTotemBroadwayBicycleCount(:,2),'dddd');
   %%% day: wed-5,thur-6,fri-7,sat-1,sun-2,mon-3,tue-4
day_Wed = (day(:,3)==2); %%% pull out all the Wednesdays
%%% 1-c) obtain logical vector for all wed in july 2015
wed_July_2015 = date_2015.*date_July.*day_Wed;
   %%% convert to a logical vector
wed_July_2015 = wed_July_2015>0;
%------------------------------------------------------
% step-2: get the total cyclist data for those specific date(s)
%------------------------------------------------------
%%% 1-d) obtain the total cyclist data 
cyclistT = EcoTotemBroadwayBicycleCount(:,5);
cyclistTnum = cell2mat(cyclistT);
    %%% obtain total cyclist vector for all wed July 2015
cyclistT_Wed_July_2015 = cyclistTnum(wed_July_2015);
%-------------------------------------------------------
% iii) gather total cyclist info per day on those dates
%-------------------------------------------------------
%%% 1-e) obtain total cyclist for each wed in July - 24x4 = 96 enteries
divPerDay = 96;% 24x4
NoOfWed = round(length(cyclistT_Wed_July_2015)/divPerDay);
cyclistT_Each_Wed_July_2015 = zeros(NoOfWed,1);
% do a for loop to sum the number of enteries on each respective Wed.
for i=1:1:NoOfWed
    start_P = i + (i - 1)*(divPerDay-1);% Arithmetic Progressioon
    end_P = start_P + (divPerDay-1);
    cyclistT_Each_Wed_July_2015(i,1) = sum(cyclistT_Wed_July_2015(start_P:end_P,1));
end
%%% now to visualize the data
wed_No = (1:NoOfWed)';
figure(2);bar(wed_No,cyclistT_Each_Wed_July_2015);title('Total cyclist per Sunday in July 2015');xlabel('Wednesday#');ylabel('Total Cyclist'); grid on;



%%%% to obtain the actual dates:
dates = dateNum(:,3);
dates_wed_July_2015 = dates(wed_July_2015);
cyclistT_Each_Wed_July_2015 = zeros(NoOfWed,1);
dates_wed_July_2015_S = zeros(NoOfWed,1);
% do a for loop to sum the number of enteries on each respective Wed.
for i=1:1:NoOfWed
    start_P = i + (i - 1)*(divPerDay-1);% Arithmetic Progressioon
    end_P = start_P + (divPerDay-1);
    cyclistT_Each_Wed_July_2015(i,1) = sum(cyclistT_Wed_July_2015(start_P:end_P,1));
    dates_wed_July_2015_S(i,1) = dates_wed_July_2015(start_P,1);
end

figure(9);bar(dates_wed_July_2015_S,cyclistT_Each_Wed_July_2015);title('Total cyclist per Sundays in July 2015');xlabel('Wednesday Date');ylabel('Total Cyclist'); grid on;
