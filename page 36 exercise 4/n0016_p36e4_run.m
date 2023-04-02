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
    legend('老鼠的数量','斑点猫头鹰的数量');
    grid on;
    picName=strcat('p36e4 situation ',num2str(m),'.pdf');
    figName=strcat('p36e4 situation ',num2str(m));
    title(figName,'FontName','宋体','FontSize',15);
    xlabel('n段时间','FontName','宋体','FontSize',15);
    ylabel('种群数量','FontName','宋体','FontSize',15);
    hold off;
    exportgraphics(gcf,picName,'Resolution',300);
end