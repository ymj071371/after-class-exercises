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
title(figName);
xlabel('Every 70 days');
ylabel('Methylmercury content (g)');

subplot(2,1,2);
plot(HgPerKilogram*1000,'.');
grid on;
title(figName);
xlabel('Every 70 days');
ylabel('Methylmercury content (g/kg)');

exportgraphics(gcf,picName,'Resolution',300);