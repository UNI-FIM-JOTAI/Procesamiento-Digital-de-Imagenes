function sal = contrasteEqu(val)
    if(val>=0 && val<25)
        sal = val*(15/25);
    elseif (val>=25 && val<195)
        sal = (val-25)*(180/125)+15;
    elseif (val>=195 && val<=255)
        sal = (val-150)*(160/105)+195;
    end
end