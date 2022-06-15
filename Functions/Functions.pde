void setup(){
  size(400,400);

}
void draw(){
  eyes (125, 150);
  eyes (275, 150);
  nose ();
  hair( 175, 85, 30, 100);
 
} 
void eyes(int x, int y){
  circle(x, y, 50);
  circle(x, y, 25);
}
void nose (){
  fill(250, 50, 125);
  quad(200, 175, 250, 250, 200, 275, 150, 250);
}
void hair(int a, int b, int c, int d){
  ellipse(a, b, c, d);
  ellipse(a+35, b+13, c, d-25);
}
