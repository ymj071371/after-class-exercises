clear;
n0017_p36e6_data;
for m=1:1:4
    for n=1:1:100
        [price(m,n+1),quantity(m,n+1)] = p36e6(price(m,n),quantity(m,n)); %#ok<SAGROW>
    end
    plot(price(m,:));
    hold on;
    plot(quantity(m,:));
    hold off;
    grid on;
    legend('价格','数量');
    picName=strcat('p36e6 situation ',num2str(m),'.pdf');
    figName=strcat('p36e6 situation ',num2str(m));
    title(figName,'FontName','宋体','FontSize',15);
    xlabel('n段时间','FontName','宋体','FontSize',15);
    ylabel('价格 数量','FontName','宋体','FontSize',15);
    hold off;
    exportgraphics(gcf,picName,'Resolution',300);
end