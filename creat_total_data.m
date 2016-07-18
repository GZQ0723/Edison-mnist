clc;clear;
%%    生成图片集下的训练矩阵   %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
strpath = fullfile('E:','data','orl','orl_train','orl_train_400');
files = dir([strpath '\*.bmp']); % 获取指定路径下的所有png文件信息
fileNum = length(files); % 个数
for i = 1:fileNum
img = imread([strpath '\' files(i).name]); % 读取完全路径下的文件
img = imresize(img,[28 28]);
img=double(rgb2gray(img));
[m,n]=size(img);
v=reshape(img,m*n,1);
V_train_sample(:,i)=v;
end 
V_train_sample=double(V_train_sample);
save total_data.mat;