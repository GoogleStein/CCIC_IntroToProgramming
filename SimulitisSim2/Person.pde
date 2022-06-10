public class Person{
  boolean susceptible;
  boolean infected;
  int daysInfected;
  boolean symptomatic;
  boolean alive;
  boolean recovered;
  PVector position;
  PVector velocity;
  
  public Person(int citySize, InfectedCount count){
    alive = true;
    recovered = false;
    daysInfected = 0;
    int x = getRand10(0, citySize);
    int y = getRand10(0, citySize - 75); // -75 to make room for text at the bottom of screen.
    position = new PVector(x, y);
    velocity = PVector.random2D();
    velocity.mult(5);
    // First n people are infected. The value of n is determined by a user, which becomes a property of InfectedCount objects.
    if(!count.enoughInfected()){
      this.infect();
      count.updateInfectedCount();
    }else{
      susceptible = true;
      symptomatic = false;
      infected = false;
    }
  }
  
  public int getRand10(int min, int max){
    // Returns a random number that is divisible by 10
    return round((random(1)*(max-min)+min)/10)*10;
  }
  
  public int getDaysInfected(){
    return daysInfected; 
  }
  
  public void updateDaysInfected(){
    daysInfected = daysInfected + 1; 
  }
  
  public void recovers(){
    infected = false;
    recovered = true;
  }
  
  public boolean isInfected(){
    return infected; 
  }
  
  public void infect(){
    if(!alive || this.hasRecovered()){
      return; 
    }
    infected = true; 
    susceptible = false;
    // Only 20% of individuals infected are not symptomatic.
    int chance = int(random(0, 11));
    if(chance <= 2){
      symptomatic = false;
    }else{
      symptomatic = true;
    }
  }
  
  public boolean isSymptomatic(){
    return symptomatic; 
  }
  
  public boolean isAlive(){
    return alive; 
  }
  
  public boolean hasRecovered(){
    return recovered; 
  }
  
  public void kill(){
    infected = false;
    alive = false;
  }
  
  public void movePerson(int edge){
    if(this.alive){
      position.add(velocity);
      hitEdge(edge);
    }
  }
  
  public void hitEdge(int edge){
    // Check for edge of city.
    // If at edge, bounce back.
    if (position.x > edge - 10) {
      position.x = edge - 10;
      velocity.x *= -1;
    } else if (position.x < 10) {
      position.x = 10;
      velocity.x *= -1;
    } else if (position.y > edge - 75) {
      position.y = edge - 75;
      velocity.y *= -1;
    } else if (position.y < 10) {
      position.y = 10;
      velocity.y *= -1;
    }
  }
  
  public PVector getPosition(){
    return position; 
  }
  
  public void drawPerson(int citySize){
    noStroke();
    if(susceptible){
      fill(140); 
    }
    if(infected){
      fill(255, 0, 0); 
    }
    if(!alive){
      fill(0);
    }else if(recovered){
      fill(0, 255, 0);
    }
    
    
   ellipse(position.x, position.y, citySize * 0.01, citySize * 0.01); 
  }  
}
