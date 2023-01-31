void gameover(){
  int f=0;
  image(gif1[f], 0, 0, width, height);
  if (frameCount %5==0)f=f+1;
  if (f==10)f=0;

  textAlign(CENTER,CENTER);
  fill(255);
  textFont(MIS);
  text("YAHOO!",width/2,height/2);
}
