clear;
n0015_p36e4_data;
for m=1:1:4
    for n=1:1:30
        [numMouse(m,n+1),numOwl(m,n+1)] = p36e4(numMouse(m,n),numOwl(m,n)); %#ok<SAGROW>
    end
    plot(numMouse(m,:));
    hold on;
    plot(numOwl(m,:));
    hold off;
    legend('Number of rats','Number of spotted owls');
    grid on;
    picName=strcat('p36e4 situation ',num2str(m),'.pdf');
    figName=strcat('p36e4 situation ',num2str(m));
    title(figName,'FontName');
    xlabel('Time');
    ylabel('Population size');
    hold off;
    exportgraphics(gcf,picName,'Resolution',300);
end