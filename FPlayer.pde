class FPlayer extends FGameObject {
  int frame=0;
  int direction;
  final int L=-1;
  final int R=1;
  int counter=0;
  float x=0;
  float y=0;
int counter2=0;
int counter3=0;
  FPlayer() {
    super();
    setPosition(0, 0);
    direction=R;
    setName("player");
    setRotatable(false);
    setFillColor(red);
    if (y<getY()) {
      y=getY();
    }
    if (x<getX()) {
      x=getX();
    }
  }


  void act() {
    handlePlayerInput();
    collision();
    animate();
  }


  void handlePlayerInput() {
    float vx=player.getVelocityX();
    if (isTouching("brick")) {
      if (wkey) {
        player.setVelocity(vx, -395);
      }
    }
    if (skey) {
      player.setVelocity(vx, 125);
    }
    float vy=player.getVelocityY();
    if (vy==0) {
      action=idle;
    }
    if (akey) {
      player.setVelocity(-125*speedChange, vy);
      action=run;
      direction=L;
    }
    if (dkey) {
      player.setVelocity(125*speedChange, vy);
      action=run;
      direction=R;
    }
    if (abs(vy)>0.1) {
      action=jump;
    }
    //if (spacekey) {
    //  allowfeature=true;
    //  once=true;
    //}
    //if (counter<300&&allowfeature) {
    //  player.setPosition(x, y+gridSize);
    //}
    //if (counter>=300) {
    //  player.setPosition(x, y);
    //  allowfeature=false;
    //  counter=0;
    //}
    //if (allowfeature) {
    //  counter++;
    //  counter2++;
    //  counter3++;
    //}
    //if(counter<2&&once){
    
      
    //}
    //if(counter2>=2){
    //  once=false;
    //  player.setPosition(x, y);
    //}
  }
  void collision() {
    if (isTouching("spike")) {
      setPosition(0, 0);
    }
    if (isTouching("hammer")) {
      setPosition(0, 0);
    }
  }

  void animate() {
    if (frame>=action.length)frame=0;
    if (frameCount%5==0) {
      if (direction==R) attachImage(action[frame]);
      if (direction==L) attachImage(reverseImage(action[frame]));

      frame++;
    }
  }
}
