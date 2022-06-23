public class Snake{
  public int x;
  public int y;
  String currentDirection;
  int t = 1;
public Snake(){
  x = 200;
  y = 200;
  currentDirection = "Up";
 }

public void drawSnake(){
  fill(0, 255, 0);
  rect(x, y, 20, 20);
}
public void moveSnake(){
  if(currentDirection == "Up"){
  y = y - t;
  }if(currentDirection == "Right"){
  x = x + t;
  }if(currentDirection == "Down"){
  y = y + t;
  }if(currentDirection == "Left"){
  x = x - t;
  }
}

public void changeDirection(int keyNum){
  if(keyNum == 38){
    currentDirection = "Up";
    }else if(keyNum == 39){
      currentDirection = "Right";
    }else if(keyNum == 40){
      currentDirection = "Down";
    }else if(keyNum == 37){
      currentDirection = "Left";
    }
  }


}
