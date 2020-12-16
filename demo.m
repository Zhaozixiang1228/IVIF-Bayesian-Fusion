clear
clc

R = {};
M = [];
cd('.\datasets')
[~,img_num]=size(struct2cell(dir('*.png')));
cd('..\')

for i=1:img_num/2
    I1 = im2double(imread(['.\datasets\IR',num2str(i),'.png']));
    I2 = im2double(imread(['.\datasets\VIS',num2str(i),'.png']));   
    R{i} = BayesFusion(I1,I2); 
    mkdir('.\result')
    imwrite(R{i}, ['.\result\F',num2str(i),'.png'])
end