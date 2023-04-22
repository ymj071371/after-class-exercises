clear;
n0019_p64r3_data;


figure("Name",'small animals')
[y1,y2,y3,y4,y5] = p64r3(pulseSmall);
hold on;

subplot(3,2,1)
plot(weightSmall,pulseSmall,'o');
title('y~x')

subplot(3,2,2)
plot(weightSmall,y1,'o');
title('y~x')

subplot(3,2,3)
plot(weightSmall,y2,'o');
title('y~sqrt(x)')

subplot(3,2,4)
plot(weightSmall,y3,'o');
title('y~log(y)')

subplot(3,2,5)
plot(weightSmall,y4,'o');
title('y~-1./sqrt(y')

subplot(3,2,6)
plot(weightSmall,y5,'o');
title('y~-1./y)')

exportgraphics(gcf,'small animals.pdf','Resolution',300);


figure("Name",'normal animals')
[y1,y2,y3,y4,y5] = p64r3(pulseNormal);
hold on;

subplot(3,2,1)
plot(weightNormal,pulseNormal,'o');
title('y~x')

subplot(3,2,2)
plot(weightNormal,y1,'o');
title('y~x')

subplot(3,2,3)
plot(weightNormal,y2,'o');
title('y~sqrt(x)')

subplot(3,2,4)
plot(weightNormal,y3,'o');
title('y~log(y)')

subplot(3,2,5)
plot(weightNormal,y4,'o');
title('y~-1./sqrt(y')

subplot(3,2,6)
plot(weightNormal,y5,'o');
title('y~-1./y)')

exportgraphics(gcf,'normal animals.pdf','Resolution',300);

figure("Name",'large animals')
[y1,y2,y3,y4,y5] = p64r3(pulseLarge);
hold on;

subplot(3,2,1)
plot(weightLarge,pulseLarge,'o');
title('y~x')

subplot(3,2,2)
plot(weightLarge,y1,'o');
title('y~x')

subplot(3,2,3)
plot(weightLarge,y2,'o');
title('y~sqrt(x)')

subplot(3,2,4)
plot(weightLarge,y3,'o');
title('y~log(y)')

subplot(3,2,5)
plot(weightLarge,y4,'o');
title('y~-1./sqrt(y')

subplot(3,2,6)
plot(weightLarge,y5,'o');
title('y~-1./y)')

exportgraphics(gcf,'large animals.pdf','Resolution',300);