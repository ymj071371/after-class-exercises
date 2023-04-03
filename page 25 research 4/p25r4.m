function [Hg,HgPerKilogram] = p25r4(HgPerFish,manWeight,attenuationRate,halfLife,Hg)
HgPer70days=HgPerFish*halfLife;
%Hg=HgPer70days+attenuationRate*Hg0;
Hg=HgPer70days+attenuationRate*Hg;
HgPerKilogram=Hg/manWeight;
end