clc;clear;
%%    ����ͼƬ���µ�ѵ������   %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
strpath = fullfile('E:','data','orl','orl_train','orl_train_400');
files = dir([strpath '\*.bmp']); % ��ȡָ��·���µ�����png�ļ���Ϣ
fileNum = length(files); % ����
for i = 1:fileNum
img = imread([strpath '\' files(i).name]); % ��ȡ��ȫ·���µ��ļ�
img = imresize(img,[28 28]);
img=double(rgb2gray(img));
[m,n]=size(img);
v=reshape(img,m*n,1);
V_train_sample(:,i)=v;
end 
V_train_sample=double(V_train_sample);
save total_data.mat;