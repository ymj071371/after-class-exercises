clear;
n0007_p6r1_data;
for m=1:1:5
    c=cpr(m,1);
    p=cpr(m,2);
    r=cpr(m,3);
    for n=1:1:60
       c(n+1)=p6r1(c(n),p,r);
       if c(n+1)<0 && c(n)>0
       paidMonth(m,1)=n+1; %#ok<SAGROW>
       end
    end
    plot(c,'o');
    grid on;
    picName=strcat('p6r1 No.',num2str(m),' Car.pdf');
    figName=strcat('p6r1 No.',num2str(m),' Car');
    title(figName);
    xlabel('Month');
    ylabel('Amount need to be paid');
    set(gca,'xticklabel',get(gca,'xtick'),'yticklabel',get(gca,'ytick'));
    exportgraphics(gcf,picName,'Resolution',300);
end