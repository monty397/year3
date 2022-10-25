% obtain the data on August 2017
dateC = EcoTotemBroadwayBicycleCount(:,1);
% convert to numberic array to search through
dateC = datevec(dateC);
%%% obtain a logical vector for the year 2017
c_2017 = (dateC(:,1)==2017);
%%% obtain a logical vector for August
c_Aug = (dateC(:,2)==8);
%%% obtain a logical vector for August 2017
cAug_2017 = c_2017.*c_Aug;
cAug_2017 = cAug_2017>0;
%%% pull out the dates(days) for August 2017
daysData = dateC(:,3);
daysAug2017 = daysData(cAug_2017);
%%% obtain the total cyclist data for August 2017
tC = EcoTotemBroadwayBicycleCount(:,5);
% convert to numberic array to search through
tC = cell2mat(tC);
tC_Aug_2017 = tC(cAug_2017);
% to get the total cyslist daily: first group cyslist data per day
divPerDay = 96;% 24x4
NoDays = round(length(tC_Aug_2017)/divPerDay);% 27 days
cyclistT_Each_Day_Aug_2017 = zeros(NoDays,2);
% do a for loop to sum the number of enteries on each respective Wed.
for i=1:1:NoDays
    start_P = i + (i - 1)*(divPerDay-1);% Arithmetic Progressioon
    end_P = start_P + (divPerDay-1);
    cyclistT_Each_Day_Aug_2017(i,1) = sum(tC_Aug_2017(start_P:end_P,1));
    cyclistT_Each_Day_Aug_2017(i,2) = daysAug2017(start_P,1);
end
%%% now to obtain the average total cyclist per day in August 2017
avgCylistT_Aug2017 =    mean(cyclistT_Each_Day_Aug_2017(:,1));%1368
noDays  = 31;
avgC = zeros(1,noDays);
avgC(:) = avgCylistT_Aug2017;
figure(2);  plot(cyclistT_Each_Day_Aug_2017(:,2),cyclistT_Each_Day_Aug_2017(:,1)); hold on;
plot(1:31, avgC); legend('total cyclist','average cyclist'); grid on;
%%%% obtain Temp information for August 2017
% 1-a) obtain the year 2017 data
yearW = weatherData(:,1);
yearW = cell2mat(yearW);
w2017 = yearW==2017;
% 1-b) obtain August month data
monthW = weatherData(:,2);
monthW = cell2mat(monthW);
wAug = monthW==8;
%%% 1-c) obtain a logical vector for the August 2017
wAug_2017 = w2017.*wAug;
wAug_2017 = wAug_2017>0;
%%% 1-d) obtain the Temp data for May 2017
wTemp = weatherData(:,4);
wTemp = cell2mat(wTemp);
wTempAug2017 = wTemp(wAug_2017);
%%% 1-e) obtain days with high temp i.e. greater than threshold
wTempHval = 60;
%%% logical vector for the days that the Temp is above threshold
wTempAug2017H = wTempAug2017 > wTempHval;
sum(wTempAug2017H);
wDays = weatherData(:,3); % days
wDays = cell2mat(wDays); % convert to numerical
wDaysAug2017 = wDays(wAug_2017);% get all days in Aug 2017
wDaysAug2017H = wDaysAug2017(wTempAug2017H); %get days with high temp. in Aug 2017
%%%% now to get the total cyclst data on the days with prec
noTempDays = length(wDaysAug2017H);
TcTempDaysAug2017 = zeros(noTempDays,2);
for i=1:1:noTempDays
    %%% identify the days with high temperature
    TempDay = cyclistT_Each_Day_Aug_2017(:,2)==wDaysAug2017H(i,1);
    %%% extract the total cyclist information
    TcTempDaysAug2017(i,2) = wDaysAug2017H(i,1); % store the day information
    TcTempDays = cyclistT_Each_Day_Aug_2017(TempDay,1);
    if(length(TcTempDays)>0)
       TcTempDaysAug2017(i,1) = TcTempDays(1);
    end
end
%%% eliminate any missing information
validInfo = TcTempDaysAug2017(:,1)>0;
TcTempDaysAug2017 = TcTempDaysAug2017(validInfo,:);
%%%% now to plot all the info.
figure(3);  plot(cyclistT_Each_Day_Aug_2017(:,2),cyclistT_Each_Day_Aug_2017(:,1)); hold on;
plot(1:31, avgC);hold on; plot(TcTempDaysAug2017(:,2),TcTempDaysAug2017(:,1),'*'); legend('total cyclist','avg cyclist','High temp days');
