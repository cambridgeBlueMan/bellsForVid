(
//w = Window("well well well", bounds:Rect(0,0,200,200));
x = LevelIndicator(bounds:Rect(10, 10, 20, 160)).front;
x.warning = 0.6; x.critical = 0.9;
x.value = 0.5;
y = LevelIndicator(bounds:Rect(40, 40, 20, 160)).front;
y.warning = 0.6; y.critical = 0.9;

z = LevelIndicator(bounds:Rect(70, 70, 20, 160)).front;
z.warning = 0.6; z.critical = 0.9;

OSCFunc({|msg|
	{x.value = msg[1]}.defer
},
"/pithree/xaccel/"
);
OSCFunc({|msg|
	{y.value = msg[1]}.defer
},
"/pithree/yaccel/"
);
OSCFunc({|msg|
	{z.value = msg[1]}.defer
},
"/pithree/zaccel/"
);
)