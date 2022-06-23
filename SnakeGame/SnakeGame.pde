Snake sneck;
Food Pellet;


void setup(){
size(400,400);
background (0,0,0);
sneck=new Snake();
Pellet=new Food();
}

void draw(){
sneck.moveSnake();
sneck.drawSnake();
sneck.changeDirection(keyCode);
Pellet.drawFood();


}
