private double fractionLength = .8; 
private int smallestBranch = 10; 
private double branchAngle = .2;  

public void setup(){   
	size(640,480);    
	noLoop(); 
} 

public void draw(){   
	background(0);   
	stroke(83,53,10);   
	line(320,480,320,380);   
	drawBranches(320,380,100,3 * Math.PI / 2);  
} 

public void drawBranches(int x,int y, double branchLength, double angle){
	double angle1, angle2, angle3, angle4;

  stroke(83, 53, 10);
  
  angle1 = angle + branchAngle;
  angle2 = angle - branchAngle;
  angle3 = angle + branchAngle / 2;
  angle4 = angle - branchAngle / 2;
  
  branchLength *= fractionLength;
  
  int endX1 = (int)(branchLength * Math.cos(angle1) + x);
  int endY1 = (int)(branchLength * Math.sin(angle1) + y);
  int endX2 = (int)(branchLength * Math.cos(angle2) + x);
  int endY2 = (int)(branchLength * Math.sin(angle2) + y);
  int endX3 = (int)(branchLength * Math.cos(angle3) + x);
  int endY3 = (int)(branchLength * Math.sin(angle3) + y);
  int endX4 = (int)(branchLength * Math.cos(angle4) + x);
  int endY4 = (int)(branchLength * Math.sin(angle4) + y);
  
  if(branchLength <= smallestBranch){
    return;
  } else {
    if(branchLength <= 50){
      stroke(0, 255, 0);
    }
    
    line(x, y, endX1, endY1);
    line(x, y, endX2, endY2);
    drawBranches(endX1, endY1, branchLength, angle1);
    drawBranches(endX2, endY2, branchLength, angle2);
    
    if(branchLength >= 60){
      line(x, y, endX3, endY3);
      line(x, y, endX4, endY4);
      drawBranches(endX3, endY3, branchLength, angle3);
      drawBranches(endX4, endY4, branchLength, angle4);
    }
  }
} 
