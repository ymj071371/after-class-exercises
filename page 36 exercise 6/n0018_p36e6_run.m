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
    legend('Price','Quantity');
    picName=strcat('p36e6 situation ',num2str(m),'.pdf');
    figName=strcat('p36e6 situation ',num2str(m));
    title(figName);
    xlabel('Time');
    ylabel('Price and quantity');
    hold off;
    exportgraphics(gcf,picName,'Resolution',300);
end