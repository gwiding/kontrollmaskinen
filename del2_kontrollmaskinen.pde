// DEL 2 !!!!!!!!!!!!!!!!!!!!!!

  int savedTime;
  int totalTime = 1000;

import processing.sound.*;
SoundFile maskineri_2;
Amplitude amp;
AudioIn in;
float volume;
int volumeint;

int rectSize = 40;
boolean error = false;


void setup() {
  size(1280, 720, P2D);
  frameRate(16);

  // Spela beep
  maskineri_2 = new SoundFile(this, "maskineri_del2.wav");
  maskineri_2.play();
  // Create an Input stream which is routed into the Amplitude analyzer
  amp = new Amplitude(this);
  amp.input(maskineri_2);
}

void draw () {

  background(0, 0, random(80, 110));

  float temp = amp.analyze();
  //println(temp);
  float volume = map(temp, 0, 1, 0, 255);
  int volumeint = int (volume);

  //println(volumeint);
  grid();


  //volymmätare
  rect(rectSize*7, rectSize*1, volumeint*8, rectSize);
  rect(rectSize*30, rectSize*8, rectSize, volumeint*-6);
  rect(rectSize*1, rectSize*16, rectSize, volumeint*-6);
  rect(rectSize*21, rectSize*16, rectSize, volumeint*-6);


  strokeWeight(0);
  stroke(0, 0, 100);
  //noStroke();

  //uppe  vänster
  fill(0, 0, 80+volumeint);
  rect(rectSize*4, rectSize*1, rectSize*3, rectSize*3);
  //mitten  vänster
  fill(0, 0, 80+volumeint);
  rect(rectSize*5, rectSize*8, rectSize*4, rectSize*4);
  fill(0, 0, 100);
  //nere  höger
  fill(0, 0, 80+volumeint);
  rect(rectSize*22, rectSize*12, rectSize*4, rectSize*4);
  //uppe höger
  fill(0, 0, 80+volumeint);
  rect(rectSize*27, rectSize*3, rectSize*2, rectSize*2);

  startError();
  showError();

  utf();
  utf2();
  blinkruta1 ();
  blinkruta2 ();
  blinkruta3 ();
  blinkruta_dubbel ();
  logga1();
  logga_trasig ();
  //logga2();
  //logga3();
  //println(frameRate);
  //println(error);
  //saveFrame("output/#####.tif");
        println(isOn);
  
}

void startError() {
  if (keyPressed) {
    if (key == 'e' || key == 'E') {
      error = !error;
    }
  }
}

void showError() {
  float shake = random(-4, 4);
    float shake1 = random(-4, 4);
      float shake2 = random(-4, 4);
        float shake3 = random(-4, 4);
  if (error == true) {
  background(random(80, 110), 0, 0);

    fill(random(235, 255), 0, 0);
    rect(rectSize*4+shake, rectSize*1+shake1, rectSize*3, rectSize*3);

    fill(random(235, 255), 0, 0);
    rect(rectSize*5+shake1, rectSize*8+shake2, rectSize*4, rectSize*4);

    fill(random(235, 255), 0, 0);
    rect(rectSize*22+shake2, rectSize*12+shake3, rectSize*4, rectSize*4);

    rect(rectSize*25+shake, rectSize*1+shake1, rectSize*2, rectSize*7);
    rect(rectSize*20+shake, rectSize*1+shake2, rectSize*7, rectSize*2);
    rect(rectSize*20+shake, rectSize*1+shake3, rectSize*2, rectSize*7);
    
  rect(rectSize*1, rectSize*16, rectSize, rectSize*-random(0,18));
    
  }
}

void utf() {
  //UTFÖR
  if (keyPressed) {
    if (key == 'z' || key == 'Z') {
      fill(255);
      rect(0, 0, width, height);
    }
  } else {
    fill(0);
  }
}

void utf2() {
  //UTFÖR
  if (keyPressed) {
    if (key == 'x' || key == 'X') {
      fill(255, 150, 0);
      rect(0, 0, width, height);
    }
  } else {
    fill(0);
  }
}




void grid () {
  stroke(255, 150, 0);

  for (int x=0; x<width/rectSize; x++) {
    fill(255, 150, 0);
    rect(x*rectSize, 0, rectSize, rectSize);
  }

  for (int x=0; x<width/rectSize-4; x++) {
    fill(255, 150, 0);
    rect(x*rectSize+rectSize*2, rectSize*2, rectSize, rectSize);
  }

  for (int x=0; x<width/rectSize; x++) {
    fill(255, 150, 0);
    rect(x*rectSize, rectSize*4, rectSize, rectSize);
  }

  for (int x=0; x<width/rectSize; x++) {
    fill(255, 150, 0);
    rect(x*rectSize, rectSize*6, rectSize, rectSize);
  }

  for (int x=0; x<width/rectSize; x++) {
    fill(255, 150, 0);
    rect(x*rectSize, rectSize*8, rectSize, rectSize);
  }

  for (int x=0; x<width/rectSize; x++) {
    fill(255, 150, 0);
    rect(x*rectSize, rectSize*10, rectSize, rectSize);
  }

  for (int x=0; x<width/rectSize; x++) {
    fill(255, 150, 0);
    rect(x*rectSize, rectSize*12, rectSize, rectSize);
  }

  for (int x=0; x<width/rectSize-6; x++) {
    fill(255, 150, 0);
    rect(x*rectSize+rectSize*2, rectSize*14, rectSize, rectSize);
  }

  for (int x=0; x<width/rectSize; x++) {
    fill(255, 150, 0);
    rect(x*rectSize, rectSize*16, rectSize, rectSize);
  }

  for (int x=0; x<width/rectSize; x++) {
    fill(255, 150, 0);
    rect(x*rectSize, rectSize*17, rectSize, rectSize);
  }

  for (int y=0; y<height/rectSize; y++) {
    fill(255, 150, 0);
    rect(0, y*rectSize, rectSize, rectSize);
  }

  for (int y=0; y<height/rectSize; y++) {
    fill(255, 150, 0);
    rect(rectSize*2, y*rectSize, rectSize, rectSize);
  }

  for (int y=0; y<height/rectSize-8; y++) {
    fill(255, 150, 0);
    rect(rectSize*27, y*rectSize+80, rectSize, rectSize);
  }
  for (int y=0; y<height/rectSize; y++) {
    fill(255, 150, 0);
    rect(rectSize*29, y*rectSize, rectSize, rectSize);
  }

  for (int y=0; y<height/rectSize; y++) {
    fill(255, 150, 0);
    rect(rectSize*31, y*rectSize, rectSize, rectSize);
  }
}
