function [Train_sample,Test_sample]=Get_TrainSample_TestSample_Randomly(Sample_input,Total_index)
%[Train_sample,Test_sample]=Get_TrainSample_TestSample_Randomly(Sample_input,Total_index)
%根据Total_index得到随机的训练样本和剩下的测试样本
%Sample_input--输入的总体样本
%Total_index--随机索引

%Train_sample--获得的训练样本
%Test_sample--获得的测试样本
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
