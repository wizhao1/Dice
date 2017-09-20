int dieNum;
int num6 = 0;

void setup()
{
	size(300,300);
	noLoop();
	background((int)((Math.random()*255)+1), (int)((Math.random()*255)+1), (int)((Math.random()*255)+1));
}

void draw()
{
	background((int)((Math.random()*255)+1), (int)((Math.random()*255)+1), (int)((Math.random()*255)+1));
	for(int y=55; y<270; y=y+40)
	{
		for(int x=15; x<270; x=x+40)
		{
			Die dice1 = new Die(x,y);
			dice1.roll();
			dice1.show();
		}
	}
	textSize(20);
	textAlign(CENTER);
	text("Number of 6's: " + num6, 150, 35);
}

void mousePressed()
{
	redraw();
}

class Die //models one single dice cube
{
	//variable declarations here
	int myX, myY;
	Die(int x, int y) //constructor
	{
		//variable initializations here
		myX = x;
		myY = y;
	}
	void roll()
	{
		dieNum = (int)(Math.random()*6)+1;
	}
	void show()
	{
		fill(255);
		rect(myX, myY, 30, 30,5);
		fill(0);
		if(dieNum==1)
		{
			ellipse(myX+15, myY+15, 5, 5);
		} else if (dieNum==2)
		{
			ellipse(myX+10, myY+20, 5, 5);
			ellipse(myX+20, myY+10, 5, 5);
		} else if (dieNum==3) 
		{
			ellipse(myX+7.5, myY+22.5, 5, 5);
			ellipse(myX+15, myY+15, 5, 5);
			ellipse(myX+22.5, myY+7.5, 5, 5);			
		} else if (dieNum==4) 
		{
			ellipse(myX+10, myY+10, 5, 5);			
			ellipse(myX+10, myY+20, 5, 5);
			ellipse(myX+20, myY+10, 5, 5);
			ellipse(myX+20, myY+20, 5, 5);							
		} else if (dieNum==5) 
		{
			ellipse(myX+7.5, myY+7.5, 5, 5);			
			ellipse(myX+7.5, myY+22.5, 5, 5);
			ellipse(myX+15, myY+15, 5, 5);			
			ellipse(myX+22.5, myY+7.5, 5, 5);
			ellipse(myX+22.5, myY+22.5, 5, 5);				
			
		} else if (dieNum==6) 
		{
			num6 = num6 + 1;
			ellipse(myX+10, myY+7.5, 5, 5);			
			ellipse(myX+10, myY+15, 5, 5);
			ellipse(myX+10, myY+22.5, 5, 5);			
			ellipse(myX+20, myY+7.5, 5, 5);
			ellipse(myX+20, myY+15, 5, 5);			
			ellipse(myX+20, myY+22.5, 5, 5);	
		}
	}
}
