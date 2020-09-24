void blinkruta1 () {
  if (keyPressed) {
    if (key == 'b' || key == 'B') {
      fill(random(235, 255));
      rect(rectSize*4, rectSize*1, rectSize*3, rectSize*3);
    }
  } else {
    fill(0);
  }
}

void blinkruta2 () {
  if (keyPressed) {
    if (key == 'n' || key == 'N') {
      fill(random(235, 255));
      rect(rectSize*5, rectSize*8, rectSize*4, rectSize*4);
    }
  } else {
    fill(0);
  }
}

void blinkruta3 () {
  if (keyPressed) {
    if (key == 'm' || key == 'M') {
      fill(random(235, 255));
      rect(rectSize*22, rectSize*12, rectSize*4, rectSize*4);
    }
    //VÄNSTER UPPE
  } else {
    fill(0);
  }
}

void blinkruta_dubbel () {
  if (keyPressed) {
    if (key == 'h' || key == 'H') {
      fill(random(235, 255));
      rect(rectSize*4, rectSize*1, rectSize*3, rectSize*3);
      rect(rectSize*22, rectSize*12, rectSize*4, rectSize*4);
    }
  } else {
    fill(0);
  }
}
