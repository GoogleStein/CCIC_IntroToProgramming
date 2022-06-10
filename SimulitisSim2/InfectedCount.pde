public static class InfectedCount{
  static int currentCount;
  final int infectedSeed;
  
  public InfectedCount(int seedNum){
    infectedSeed = seedNum;
    currentCount = 0;
  }

  public static void updateInfectedCount(){
    currentCount = currentCount + 1; 
  }
  
  public boolean enoughInfected(){
    return currentCount == infectedSeed;
  }
}
