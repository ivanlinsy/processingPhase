class Circle {
  int colorSign=1;
  int counter = 0;
  float x;
  float y;
  float s;
  float c2Alpha=0;
  Circle() {  
    x=width/2;
    y=height/2;
    s=random(0.3, 1);
  }
  void display() {
    noFill();
    stroke(255);
    ellipse(x, y, 0, 0);
  }
  void HorShoot() {
    x+=s;
  }
  void edge() {
    if (x>width||x<0) {
      s*=-1;
      counter+=1;
    }
  }
  void lineEffect() {
    if (colorSign==1) {
      stroke(255, 120);
    } else if (colorSign==2) {
      stroke(255, c2Alpha);
    } else if (colorSign==3) {
      stroke(255, 0, 42, 100);
    } else if (colorSign==4) {
      stroke(255, 0, 229, 100);
    }
    //stroke(random(255), random(255), random(255));
    //line(0, 0, x, y);
    //line(width, height, x, y);

    line(width/2, 0, x, y);
    line(width/2, height, x, y);
  }
  void changeC(int colorNumber) {
    colorSign=colorNumber;
  }
}

class Vcircle extends Circle {
  Vcircle() {
    //super(vspeed0, vspeed1);    
    x=width/2;
    y=height/2;
    s=random(0.3, 1);
  }
  void VerShoot() {
    y+=s;
  }
  void edge() {
    if (y>height||y<0) {
      s*=-1;
    }
  }
  void lineEffect() {
    if (colorSign==1) {
      stroke(255, 140);
    } else if (colorSign==2) {
      stroke(255, c2Alpha);
    } else if (colorSign==3) {
      stroke(255, 0, 42, 100);
    } else if (colorSign==4) {
      stroke(255, 0, 229, 100);
    }
    //stroke(random(255), random(255), random(255));
    strokeWeight(2.5);
    //line(0, height, x, y);
    //line(width, 0, x, y);
    
    line(0, height/2, x, y);
    line(width, height/2, x, y);
  }
  void changeC(int colorNumber) {
    colorSign=colorNumber;
  }
}
