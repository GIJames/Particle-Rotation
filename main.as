var anchor:Sprite = new Sprite();
anchor.x = stage.stageWidth/2;
anchor.y = stage.stageHeight*.25;
stage.addChild(anchor);
var s:Sprite = new Sprite();
s.graphics.beginFill(0x000000);
s.graphics.drawCircle(0,0,10);
s.graphics.endFill();
anchor.addChild(s);

var t = 0;
var tmax = 2*Math.PI;
var r = 100;
var sd = stage.stageWidth/2;

function update(){
	t = t - .02;
	if(t <  0) t = tmax-t;
	var xp = r * Math.cos(t);
	var zp = r * Math.sin(t) + (sd);
	var xs = (xp/zp) * (sd);
	s.x = xs;
	var zs = Math.sqrt(Math.pow((xp),2) + Math.pow((zp),2));
	var scaleratio = sd/zs;
	s.scaleX = scaleratio;
	s.scaleY = scaleratio;
	s.alpha = (scaleratio <= 1 ? scaleratio : 1);
}
