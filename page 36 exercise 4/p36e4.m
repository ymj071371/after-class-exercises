function [numMouse,numOwl] = p36e4(numMouse,numOwl)
k=numMouse.*numOwl;
numMouse = 1.2*numMouse-0.001*k;
numOwl = 0.7*numOwl+0.002*k;
end