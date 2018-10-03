int colorNow;
int alphaStatu=0;
int Hnumber=5; 
int Vnumber=5;
Circle[] circle = new Circle[Hnumber];
Circle[] circle2 = new Circle[Hnumber];
Vcircle[] vcircle = new Vcircle[Vnumber];
Vcircle[] vcircle2 = new Vcircle[Vnumber];

void setup() {
  size(480, 480);
  for (int i=0; i<circle.length; i++) {
    circle[i]=new Circle();
  }
  for (int i=0; i<circle2.length; i++) {
    circle2[i]=new Circle();
  }
  for (int i=0; i<vcircle.length; i++) {
    vcircle[i]=new Vcircle();
  }
  for (int i=0; i<vcircle2.length; i++) {
    vcircle2[i]=new Vcircle();
  }
}
void draw() {
  background(0);
  int second=second();
  println(second);
  println(circle2[1].c2Alpha);

  for (int i=0; i<circle.length; i++) {
    circle[i].display();
    circle[i].HorShoot();
    circle[i].edge();
    circle[i].lineEffect();
  }
  for (int i=0; i<circle2.length; i++) {
    //increase Alpha
    if (circle2[i].c2Alpha<70 && alphaStatu==0) {
      circle2[i].c2Alpha+=0.02;
      vcircle2[i].c2Alpha+=0.02;
    }
    if (circle2[i].c2Alpha>0 && alphaStatu==1) {
      circle2[i].c2Alpha-=0.024;
      vcircle2[i].c2Alpha-=0.024;  
    }
    if (circle2[i].c2Alpha>=70) {
      alphaStatu=1;
    }
    circle2[i].display();
    circle2[i].HorShoot();
    circle2[i].edge();
    circle2[i].lineEffect();
  }
  for (int i=0; i<vcircle.length; i++) {
    vcircle[i].display();
    vcircle[i].VerShoot();
    vcircle[i].edge();
    vcircle[i].lineEffect();
  }
  for (int i=0; i<vcircle2.length; i++) {
    vcircle2[i].display();
    vcircle2[i].VerShoot();
    vcircle2[i].edge();
    vcircle2[i].lineEffect();
  }
}

void keyPressed() {
  //circle's color
  if (key=='w') {
    for (int i=0; i<circle.length; i++) {
      circle[i].changeC(1);
    }
  } else if (key=='b') {
    for (int i=0; i<circle.length; i++) {
      circle[i].changeC(2);
    }
  } else if (key=='r') {
    for (int i=0; i<circle.length; i++) {
      circle[i].changeC(3);
    }
  } else if (key=='p') {
    for (int i=0; i<circle.length; i++) {
      circle[i].changeC(4);
    }
  } else if (key=='h') {
    for (int i=0; i<circle.length; i++) {
      circle2[i].changeC(2);
      vcircle2[i].changeC(2);
    }
  }
  //vcircle's color
  if (key=='w') {
    for (int i=0; i<vcircle.length; i++) {
      vcircle[i].changeC(1);
    }
  } else if (key=='b') {
    for (int i=0; i<vcircle.length; i++) {
      vcircle[i].changeC(2);
    }
  } else if (key=='r') {
    for (int i=0; i<vcircle.length; i++) {
      vcircle[i].changeC(3);
    }
  } else if (key=='p') {
    for (int i=0; i<vcircle.length; i++) {
      vcircle[i].changeC(4);
    }
  }
}
