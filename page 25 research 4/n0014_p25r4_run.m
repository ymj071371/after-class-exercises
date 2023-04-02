clear;
n0013_p25r4_data;
for n=1:1:100
    [Hg(n+1),HgPerKilogram(n+1)] = p25r4(HgPerFish,manWeight,attenuationRate,halfLife,Hg(n)); %#ok<SAGROW>
end

picName=strcat('p25r4 The content of methylmercury in the human body.pdf');
figName=strcat('p25r4 The content of methylmercury in the human body');

subplot(2,1,1);
plot(Hg,'.');
grid on;
title(figName,'FontName','宋体','FontSize',10);
xlabel('第n个70天','FontName','宋体','FontSize',10);
ylabel('甲基汞含量（g）','FontName','宋体','FontSize',10);

subplot(2,1,2);
plot(HgPerKilogram*1000,'.');
grid on;
title(figName,'FontName','宋体','FontSize',10);
xlabel('第n个70天','FontName','宋体','FontSize',10);
ylabel('甲基汞含量（g/kg）','FontName','宋体','FontSize',10);

exportgraphics(gcf,picName,'Resolution',300);