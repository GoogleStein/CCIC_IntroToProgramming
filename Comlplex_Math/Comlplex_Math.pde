int coom = (int(random(1,100)));

if(coom % 3 == 0 && coom % 5 == 0){
  println(coom+" This number is a muitiple of 3 AND 5!!");
}

else if(coom % 3 == 0) {
  println(coom+": This number is a muiltiple of 3!");

}

else if(coom % 5 == 0) {
  println(coom+" This Number is a muitple of 5!");
}


else if(coom % 3 != 0 && coom % 5 != 0) {
  println(coom+": This number is not a muitiple of 3 or 5.");
}
println("your mom");
println();
println();
println();
println();
println();
println();
println();
println();
println();

int [] coe = {1, 2, -3};
int a = coe[0];
int b = coe[1];
int c = coe[2];

 if((b*b - 4*a*c) < 0){
  println("There are no real solutions to this quadratic");
 }
 else{

int x1 = (b * -1);
int x2 = (b*b);

int x3 = (int(sqrt(x2 - (4 * ( a * c )))));

int x4 = (2 * a);

int done = (int((x1 + x3) / x4));

if(done == 1) {
println("The Answer to the quatractic is: X = "+done);
}

else if (done != 1) {
println("The answer is undefined :(");
}
 }
