%《数学建模》77页习题3
clear;
%美国黄松中部直径
x=[17 19 20 22 23 25 28 31 32 33 36 37 38 39 41];
%美国黄松的体积
y=[19 25 32 51 57 71 113 141 123 187 192 205 252 259 294];
%对x和y取自然对数
lnx=log(x);
lny=log(y);
%绘制ln（x）-ln（y）数据散点图
plot(lnx,lny,'o');
%保持
hold on;
%打开网格
grid on;
%求对ln（x）和ln（y）进行1次多项式拟合的系数
coefficient=polyfit(lnx,lny,1);
%使用系数和ln（x）构造多项式
yCoefficient=polyval(coefficient,lnx);
%绘制ln（x）-构造多项式运算结果的曲线图
plot(lnx,yCoefficient,'-');
%用水平串联字符串写文件名和图名
picName=strcat('美国黄松直径与体积度量的关系图.pdf');
figName=strcat('美国黄松直径与体积度量的关系图');
%设置图名、横轴和纵轴的样式
title(figName);
xlabel('黄松直径');
ylabel('体积');
%设置横轴和纵轴的刻度样式
set(gca,'xticklabel',get(gca,'xtick'),'yticklabel',get(gca,'ytick'));
%导出分辨率为300的图片
exportgraphics(gcf,picName,'Resolution',300);
hold off;