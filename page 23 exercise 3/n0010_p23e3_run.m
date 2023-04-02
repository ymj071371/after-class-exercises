clear;
n0009_p23e3_data;
for m=1:1:5
    a=arb(m,1);
    r=arb(m,2);
    b=arb(m,3);
    for n=1:1:10
        a(n+1)=p23e3(a(n),r,b);
    end
    plot(a,'o');
    grid on;
    picName=strcat('p23e3 (',num2str(m),').pdf');
    figName=strcat('p23e3 (',num2str(m),')');
    title(figName,'FontName','宋体','FontSize',20);
    xlabel('n','FontName','宋体','FontSize',20);
    ylabel('a_n','FontName','Times New Roman','FontSize',20);
    set(gca,'xticklabel',get(gca,'xtick'),'yticklabel',get(gca,'ytick'));
    exportgraphics(gcf,picName,'Resolution',300);
end