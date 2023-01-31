void num() {


  textAlign(CENTER, CENTER);
  background(#F29A16);
  size(600, 600);

  for (int i=0; i<3; i++) {
    fill(#799DCB);
    tactile1(100+(100*(i+1)), 150);
    circle(100+(100*(i+1)), 150, 80);
    fill(0);
    textSize(35);
    text(i+1, 100+(100*(i+1)), 150);
  }
  for (int t=0; t<3; t++) {
    fill(#799DCB);
    tactile1(100+(100*(t+1)), 300);
    circle(100+(100*(t+1)), 300, 80);
    fill(0);
    textSize(35);
    text(t+4, 100+(100*(t+1)), 300);
  }

  for (int r=0; r<3; r++) {
    fill(#799DCB);
    tactile1(100+(100*(r+1)), 450);
    circle(100+(100*(r+1)), 450, 80);
    fill(0);
    textSize(35);
    text(r+7, 100+(100*(r+1)), 450);
  }



  if(t1==true&&t2==true&&t3==true&&t4==true){
    mode=GAMEOVER;
  }
  
}


void tactile1(int x, int y) {
    if (dist(x, y, mouseX, mouseY)<40) {
      strokeWeight(5);
    } else {
      strokeWeight(2);
    }
  }

//  tactile2(300, 400);
//  strokeWeight(5);
//  fill(orange);
//  rect(300, 400, 200, 100);
//}


//void tactile2(int x, int y) {
//  if (mouseX>300&&mouseX<500&&mouseY>400&&mouseY<500) {
//    stroke(s);
//  } else {
//    stroke(0);
//  }
//}


//void mousePressed() {
//  if (dist(200, 200, mouseX, mouseY)<100) {
//    background(blue);
//  }

//  if (dist(600, 200, mouseX, mouseY)<100) {
//    background(red);
//  }

//  if (mouseX>300&&mouseX<500&&mouseY>400&&mouseY<500) {
//    background(orange);
//  }
//}
