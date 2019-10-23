Bacteria[] colony;
 void setup()   
 {     
  size(500,500);
  background(192);
  colony = new Bacteria[100];
  for(int i = 0; i < colony.length;i++){
    colony[i] = new Bacteria();  
  }
 }   
 void draw()   
 {    
 	background(192);
 	for(int i = 0; i < colony.length; i++){
   		colony[i].move();
   		colony[i].show();
	}
 }  
 class Bacteria    
 {     
 	int x,y;
 	Bacteria(){
 		x = 250;
 		y = 250;
 	}
 	void move(){
 		x += (int)(Math.random()*9)-3;
 		y += (int)(Math.random()*9)-4;
  		if(mouseX>x){
 			x = x + (int)(Math.random()*9) -3;
  		}else{
  			x = x + (int)(Math.random()*9) -7;
  		if(mouseY>y){
  			y = y + (int)(Math.random()*9) -3;
  		}else{
  			y = y + (int)(Math.random()*9) -7;
  		}
  	}
 }

 	void show(){
 		ellipse(x,y,10,10);
 	}
 }  		
