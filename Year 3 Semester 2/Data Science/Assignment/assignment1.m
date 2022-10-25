%1
a = [3 5 7 9 11];
b = [7 8 9 10 10];
c = [1 2 3 4 5];
d = [6 9 8 5 12];
e = [1 4 5 7 5];
a1 = [a;b];
a2 = [a1;c];
a3 = [a2;d];
R55 = [a3;e];



%%2
Sub1245 = R55([1 2 3 4],[2 3 4 5:end-1]);

%%3
O7 = ones(7,7);
O7Mod = O7([1 2 3 4],[1 2 3]);
R55(Sub1245) = O7Mod;


%%4

%%loops and if statements

%%logical matrices
R55(R55==5) = 1;
%%find
[h,j] = find (R55.' == 5);
output = [h,j];

%5 
sortMatrix = sortrows(R55);
sortMatrixC = sort(R55);

%%6
M = mean(R55);
M2 = mean(mean(R55));
minimum = min(R55);
maximum = max(R55);
StandardD = std(Sub1245);

%%7
x = 1:50:900;
y = cos(x);
plot(x,y); grid on;

%%8
function total = tot(a,b,c,d)
    total = a+b+c+d
end

a =1; b=2; c =4; d=9;
total = tot(a, b, c, d);

%%10
fareData = TitanicDataSet(:,10);
fareDataNum = cell2mat(fareData);
fareDataLow = fareDataNum>=75;
fareDataHigh = fareDataNum<=200;
fareDataRange = fareDataLow.*fareDataHigh;
fareDataRange = fareDataRange>0;

nameData = TitanicDataSet(:,4);
correctNames = nameData(fareDataRange);

%%11
survData = TitanicDataSet(:,2);
survDataNum = cell2mat(survData);
noGuests = length(survDataNum);

sexData = TitanicDataSet(:,5);
sexMl = strcmp(sexData,'male');

%2-a-ii) vector for class=2
classData = TitanicDataSet(:,3);
classDataNum = cell2mat(classData);
class2L = classDataNum==2;


%2-a-iii) vector for 30<Age<45

ageData = TitanicDataSet(:,6);
ageDataNum = cell2mat(ageData);
ageDataLow = ageDataNum>=30;
ageDataHigh = ageDataNum<=45;
ageDataRange = ageDataLow.*ageDataHigh;


%2-a-iv) vector for sex=male AND class=2 AND 30<Age<45
YFC2 = sexMl.*class2L.*ageDataRange;


%2-a-v) P(18<Age<35,Sex=female,Class=1)
pYFC2 = sum(YFC2)/noGuests;



