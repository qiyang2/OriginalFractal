public void setup(){
	size(500,500);

}
public void draw(){
	background(255);
	fill(100,20,100,50);
	myFractal(250,230,150);
	myFractal(250,130,150);
	sierpinski(183,280,200);

	
}
public void myFractal(int x, int y, int length){

	ellipse(x, y, length, length);
	if(length > 40){
		myFractal(x-length/4,y,length/2);
		myFractal(x,y-length/4,length/2);
		myFractal(x+length/4,y,length/2);
		myFractal(x,y+length/4,length/2);
		

	}
}
public void sierpinski(int x, int y, int len) 
{
	if(len <= 10){
		fill(120,70,60);
		triangle((float)x,(float)y,(float)x+len,(float)y,(float)x+len/2,(float)y-len);
	}else 
	{
			
			sierpinski(x,y,len/2);
			sierpinski(x+len/3,y,len/2);
			sierpinski(x + len/5,y + len/2,len/2);
	}
	
}