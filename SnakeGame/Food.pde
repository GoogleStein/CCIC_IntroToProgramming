public class Food{
  int foodx;
  int foody;
  int foodR;
  int foodG;
  int foodB;
  int drawFood;
  
  public Food (){
    foodx = int(random(0,400));
    foody = int(random(0,400));
  
  }
  public void drawFood(){
   fill(255,0,0);
   rect(foodx, foody, 20, 20);
   
  }
  
}
