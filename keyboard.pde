void keyPressed() {
  if (key=='w'||key=='W') wkey=true;
  if (key=='a'||key=='A') akey=true;
  if (key=='s'||key=='S') skey=true;
  if (key=='d'||key=='D') dkey=true;
  if (key==' ') spacekey=true;
}

void keyReleased() {
  if (key=='w'||key=='W') wkey=false;
  if (key=='a'||key=='A') akey=false;
  if (key=='s'||key=='S') skey=false;
  if (key=='d'||key=='D') dkey=false;
  if (key==' ') spacekey=false;
}
void mousePressed() {
  if (mode==NUMBER) {
    if (dist(200, 150, mouseX, mouseY)<40) {
      t1=true;
    } else if (dist(400, 450, mouseX, mouseY)<40) {
      t2=true;
    } else if (dist(200, 450, mouseX, mouseY)<40) {
      t3=true;
    } else if (dist(300, 450, mouseX, mouseY)<40) {
      t4=true;
    }
  }
}
