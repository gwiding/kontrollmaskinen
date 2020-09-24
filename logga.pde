Boolean isOn = false;

void logga1 () {

  if (keyPressed) {
    if (key == 'l') {

      int passedTime = millis() - savedTime;
      fill(random(235, 255));
      rect(rectSize*25, rectSize*1, rectSize*2, rectSize*7);

      if (passedTime > totalTime || isOn) {
        rect(rectSize*20, rectSize*1, rectSize*7, rectSize*2);
        savedTime = millis();
        if (passedTime > totalTime*2 || isOn) {
          isOn = true;
          rect(rectSize*20, rectSize*1, rectSize*2, rectSize*7);
        }
      }
    }
  } else {
    fill(0);
  }
}








void logga_trasig () {
  if (keyPressed) {
    if (key == 'k') {
      fill(random(0, 100));
      rect(rectSize*25, rectSize*1, rectSize*2, rectSize*7);
    }
  } else {
    fill(0);
  }
}


//void logga2 () {
//  if (keyPressed) {
//    if (key == 'i') {
//  fill(random(235,255));
//  rect(rectSize*20, rectSize*1, rectSize*7, rectSize*2);
//    }
//  } else {
//    fill(0);
//  }
//}

//void logga3 () {
//  if (keyPressed) {
//    if (key == 'j') {
//      fill(255);
//      rect(rectSize*20, rectSize*1, rectSize*2, rectSize*7);
//    }
//  } else {
//    fill(0);
//  }
//}
