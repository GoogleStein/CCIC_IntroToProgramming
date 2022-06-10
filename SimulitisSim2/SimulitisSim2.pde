int populationSize = 350; // Assign to an expression that represents number of people per square mile
int infectedSeed = 1; // Assign to some number from 1 to 10.

// DO NOT CHANGE ANY CODE FOUND BELOW!

int distance = 10; 
int citySize = 500;
City myCity;
UI stats;
public void settings(){
  size(citySize, citySize);
}

public void setup(){
  background(255);
  myCity = new City(populationSize, citySize, infectedSeed);
  stats = new UI(infectedSeed);
  frameRate(10);
}

public void draw(){
  background(255);
  myCity.drawCity(citySize);
  myCity.spreadDisease(citySize, frameCount);
  myCity.movePopulation(citySize);
  stats.update(frameCount, myCity.getInfectedCount(), myCity.getDeadCount(), myCity.getRecoveredCount());
  stats.display(citySize);
}
