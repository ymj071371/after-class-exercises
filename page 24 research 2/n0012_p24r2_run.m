clear;
n0011_p24r2_data;
for i=1:1:6
    a=aMmk(i,1);
    M=aMmk(i,2);
    m=aMmk(i,3);
    k=aMmk(i,4);
    for n=1:1:20
        a(n+1)=p24r2(a(n),M,m,k);
    end
    plot(a,'o');
    grid on;
    picName=strcat('p24r2 situation ',num2str(i),'.pdf');
    figName=strcat('p24r2 situation ',num2str(i));
    title(figName,'FontName','宋体','FontSize',20);
    xlabel('年份','FontName','宋体','FontSize',20);
    ylabel('鲸鱼数量','FontName','宋体','FontSize',20);
    set(gca,'xticklabel',get(gca,'xtick'),'yticklabel',get(gca,'ytick'));
    exportgraphics(gcf,picName,'Resolution',300);
end