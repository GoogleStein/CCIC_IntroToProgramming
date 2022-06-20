public class Snake{
  int x;
  int y;
public Snake(){
  x = 200;
  y = 200;
 }

public void drawSnake(){
  fill(0, 255, 0);
  rect(x, y, 10, 10);
}
}
