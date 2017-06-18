function [Train_sample,Test_sample]=Get_TrainSample_TestSample_Randomly(Sample_input,Total_index)
%[Train_sample,Test_sample]=Get_TrainSample_TestSample_Randomly(Sample_input,Total_index)
%Total_index
%Sample_input
%Total_index

%Train_sample
%Test_sample
[dim,sn,cn]=size(Sample_input);


for c=1:cn
    iTr=1;
    iTes=1;
    for s=1:sn
        if Total_index(1,s)==1
            Train_sample(:,iTr,c)=Sample_input(:,s,c);
            iTr=iTr+1;
        else
            Test_sample(:,iTes,c)=Sample_input(:,s,c);
            iTes=iTes+1;
        end
    end
end
