public class City{
  ArrayList<Person> population = new ArrayList<>(); 
  
  public City(int popSize, int citySize, int seedNum){
    InfectedCount ic = new InfectedCount(seedNum);
    for(int i = 0; i < popSize; i++){
      population.add(new Person(citySize, ic)); 
    }
  }
  public int getRecoveredCount(){
    int recovered = 0;
    for(Person p: population){
      if(p.hasRecovered()){
        recovered = recovered + 1; 
      }
    }
    return recovered;
  }
  public int getInfectedCount(){
    int infections = 0;
    for(Person p: population){
      if(p.isInfected()){
        infections = infections + 1; 
      }
    }
    return infections;
  }
  
  public int getDeadCount(){
    int dead = 0;
    for(Person p: population){
      if(!p.isAlive()) {
        dead = dead + 1;
      }
    }
    
    return dead;
  }
  
  public void spreadDisease(int citySize, int frames){
    int idx = 0;
    for(Person person1: population){
      idx = idx + 1;
      if(person1.isInfected()){
        if(frames % 10 == 0){
          person1.updateDaysInfected();
        }
        
        // A person needs to be sick for 7 days before recovery OR death
        if(person1.getDaysInfected() == 7){
          if(person1.isSymptomatic() && person1.isAlive()){
            int chance = int(random(0, 11)); 
            if(chance == 1){
              person1.kill(); 
              println("Person dies! " + idx);
            }else{
              person1.recovers(); 
            }
          }else{
            person1.recovers(); 
          }
        }
      }
   
       int x = int(person1.getPosition().x);
       int y = int(person1.getPosition().y);
       if(person1.isInfected() && person1.isAlive()){
         for(Person person2: population){
           if(dist(x, y, person2.getPosition().x, person2.getPosition().y) <= citySize * 0.01){
             person2.infect(); 
           }
          }
        } 
      }
    }
  
  public void movePopulation(int edge){
    for(Person p: population){
      p.movePerson(edge); 
    }
  }
  
  public void drawCity(int citySize){
    for(Person p: population){
      p.drawPerson(citySize); 
    }
  }
}
