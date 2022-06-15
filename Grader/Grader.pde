int grade = 102;
String letter = "";
int BUFF;
String BUFF2 = "";

if(grade >= 90) {
  print("A");
  letter = "A";
}
else if(grade >= 80) {
  print("B");
  letter = "B";
}
else if(grade >= 70) {
  print("C");
  letter = "C";
}
else if(grade >=  60) {
  print("D");
  letter = "D";

}
else if(grade >= 0) {
  print("F");
  letter = "F";
}

BUFF = int(grade/10)*10;

if(BUFF >= 90) {
  BUFF2 = "A";
} else if(BUFF >= 80) {
BUFF2 = "B";
}
else if(BUFF >= 70) {
  BUFF2 = "C";
}
else if(BUFF >=  60) {
  BUFF2 = "D";
}
else if(BUFF >= 0) {
  BUFF2 = "F";
}



if ((letter != BUFF2)) {
  BUFF -= 10;
}

if (((grade-BUFF >= 5)&& grade > 50) || grade >=95) {
  print("+");
};
