>>t=linspace(0,8*pi,200);
>>r=exp(-.1*t);
>>x=r.*cos(t);
>>y=r.*sin(t);
>>h1 = axes('position',[.1 .1 .5 .5]);
>>fill(x,y,'g')
>>h2 = axes('position',[.45 .45 .3 .3]);
>>fill(x,y,'b')
>>set(h2,'xcolor','b'); 
>>set(h2,'ycolor','b');
>>set(h2,'xticklabel',' '); 
>>set(h2,'yticklabel',' ');
>>h3=axes('position',[.67 .67 .2 .2]); 
>>fill(x,y,'m') 
>>box('off')
>>set(h3,'xcolor','m'); 
>>set(h3,'ycolor','m');
>>set(h3,'xticklabel',' '); 
>>set(h3,'yticklabel',' ');
>>h4 = axes('position',[.84 .84  .1 .1 ]); 
>>fill(x,y,'r') 
>>set(h4,'color','y'); 
>>set(h4,'xaxisloc','top'); 
>>set(h4,'yaxisloc','right'); 
