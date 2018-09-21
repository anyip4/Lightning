int startX = mouseX;
int startY = mouseY;
int endX = 0;
int endY = 150;
int chooseDirection;

void setup(){
  size(500,500);
  strokeWeight(3);
  background(0);
}
void draw(){
	stroke((int)(Math.random()*122) + 133,(int)(Math.random()*122) + 133,(int)(Math.random()*122) + 133);
	
}
	
void mousePressed(){
	chooseDirection = (int)(Math.random()*10);
	startX = mouseX;
	startY = mouseY;
	endX = 0;
	endY = 150;
	makeLightning();

}	

void makeLightning(){
	if(chooseDirection > 5){	
		while(endX < 501){
			endX = startX + (int)(Math.random()*9);
			endY = startY + (int)(Math.random()*30) - 15;	
			
			line(startX,startY,endX,endY);
			startX = endX;
			startY = endY;
		}
	}else{
		while(startX > 0){
			endX = startX - (int)(Math.random()*9);
			endY = startY + (int)(Math.random()*30) - 15;	
			
			line(startX,startY,endX,endY);
			startX = endX;
			startY = endY;
		}
	}	
}