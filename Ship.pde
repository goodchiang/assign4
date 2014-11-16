class Ship {
  int speedL = 10;
  int speedR = 10;
  int shipSize = 15;
  int posX;
  int posY;
  int life;
  boolean upGrade = false;

  Ship(int x, int y,  int l) {
    this.posX = x;
    this.posY = y;
    life = l;
  } 

  void display() {

    if (!upGrade) {
      fill(230, 74, 96);
      triangle(int(posX           ), int(posY-shipSize    ), int(posX-shipSize/2), int(posY-shipSize/2), int(posX+shipSize/2), int(posY-shipSize/2));
      triangle(int(posX-shipSize/2), int(posY+shipSize/2-2), int(posX-shipSize  ), int(posY+shipSize-2), int(posX-shipSize/2), int(posY+shipSize-2));
      triangle(int(posX+shipSize/2), int(posY+shipSize/2-2), int(posX+shipSize  ), int(posY+shipSize-2), int(posX+shipSize/2), int(posY+shipSize-2));
      fill(255, 255, 255);
      rect(int(posX), int(posY+shipSize/4), int(shipSize), int(shipSize/4*6.6));
      fill(76, 120, 168);
      ellipse(int(posX), int(posY), int(shipSize/2), int(shipSize/2));
    }else{
      fill(0, 161, 255);
      triangle(int(posX           ), int(posY-shipSize     ), int(posX-shipSize/2), int(posY-shipSize/2), int(posX+shipSize/2), int(posY-shipSize/2));
      triangle(int(posX-shipSize/2), int(posY+shipSize/2-10), int( posX-shipSize ), int(posY+shipSize-2), int(posX-shipSize/2), int(posY+shipSize-2));
      triangle(int(posX+shipSize/2), int(posY+shipSize/2-10), int(posX+shipSize  ), int(posY+shipSize-2), int(posX+shipSize/2), int(posY+shipSize-2));
      fill(255, 255, 255);
      rect(int(posX), int(posY+shipSize/4), int(shipSize), int(shipSize/4*6.6));
      fill(76, 120, 168);
      ellipse(int(posX), int(posY), int(shipSize/2), int(shipSize/2));
    }
  }


  void keyTyped() {

    //Limit Ship Position
    if (posX+shipSize >= 640) {
      speedR = 0;
    } else if (posX-shipSize <= 0) {
      speedL = 0;
    } else if (posX-shipSize > 0 && posX+shipSize<640) {
      speedL = 10;
      speedR = 10;
    }

    //Ship Ctrl
    if (key == CODED) {
      switch(keyCode) {
      case LEFT:
        this.posX -= speedL;
        break;
      case RIGHT:
        this.posX += speedR;
        break;
      }
    }
  }
}

