private double fractionLength = .8; 
private int smallestBranch = 10; 
private double branchAngle = .2;  

public void setup(){   
	size(640,480);    
	noLoop(); 
} 

public void draw(){   
	background(0);   
	stroke(0,255,0);   
	line(320,480,320,380);   
	//drawBranches(??,??,??,??);  //will add later 
} 

public void drawBranches(int x,int y, double branchLength, double angle){   
	double angle1, angle2;
  
  angle1 = angle + branchAngle;
  angle2 = angle - branchAngle;
  
  branchLength *= fractionLength;
  
  int endX1 = (int)(branchLength * Math.cos(angle1) + x);
  int endY1 = (int)(branchLength * Math.sin(angle1) + x);
  
  line(x, y, endX1, endY1);
} 
