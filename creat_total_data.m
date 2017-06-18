clc;clear;   
strpath = fullfile('E:','data','orl','orl_train','orl_train_400');
files = dir([strpath '\*.bmp']); 
fileNum = length(files); 
for i = 1:fileNum
img = imread([strpath '\' files(i).name]); 
img = imresize(img,[28 28]);
img=double(rgb2gray(img));
[m,n]=size(img);
v=reshape(img,m*n,1);
V_train_sample(:,i)=v;
end 
V_train_sample=double(V_train_sample);
save total_data.mat;
