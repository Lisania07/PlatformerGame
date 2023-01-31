class FDoor extends FGameObject {
  int counter=0;
  FDoor(float x, float y) {
    super();
    setPosition(x, y);
    setName("door");
    setRotatable(false);
  }
  void act() {

    if (isTouching("player")) {
      //world.remove(this);
      //doors.remove(this);
      //player.setPosition(632,368);
      mode=NUMBER;
      
    }
    attachImage(door);
     
}
}
