clear;
S=[5 10 20 30 40 50 60 70 80 90 100];
e=[0 19 57 94 134 173 216 256 297 343 390];
x=S;
y=e;
plot(x,y,'o');
hold on;
grid on;
coefficient=polyfit(x,y,1);
yCoefficient=polyval(coefficient,x);
plot(x,yCoefficient,'-');
picName=strcat('弹簧拉力与伸长量之间的关系.pdf');
figName=strcat('弹簧拉力与伸长量之间的关系');
title(figName);
xlabel('拉力S');
ylabel('伸长e');
set(gca,'xticklabel',get(gca,'xtick'),'yticklabel',get(gca,'ytick'));
exportgraphics(gcf,picName,'Resolution',300);
hold off;