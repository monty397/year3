ageData = train(:,6);
ageDataNum = cell2mat(ageData);

noDataPts = length(ageDataNum); 
NaNcount = 0;
NANindex = zeros(noDataPts, 1);
for i=1:1:noDataPts
    value = ageDataNum(i);
    if(strcmp(num2str(value),'NaN'))
        NaNcount = NaNcount + 1;
        NaNindex(NaNcount, 1)=i;
    end
end
NaNindex = NaNindex(1:NaNcount,1);