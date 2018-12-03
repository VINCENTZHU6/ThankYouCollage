PImage rice;
PImage xiexie;
float seeRice = 0;
float speed = 1;
float bowlPos = 470;
float bowlPos2 = 600;
float bowlMove = 3;
float ricePos = 520;
float riceSee = 0;
float chopSee = 255;
float riceKnow = 0;

void setup() {
  size(800, 700);
  frameRate(8);
  textAlign(CENTER);
  rice = loadImage("ricelol.png");
  xiexie = loadImage("xie.png");
}

void draw() {
  background(200);
  bowlPos = bowlPos + bowlMove;
  bowlPos2 = bowlPos2 + bowlMove;
  ricePos = ricePos + bowlMove;

  //ground
  fill(0, 30, 0);
  rect(0, 580, 800, 200);

  //xiexie
  noTint();
  image(xiexie, 420, -30, 500, 400);
  image(xiexie, 420, 140, 500, 400);

  //thank you text
  textSize(30);
  fill(0);
  text("thank you", 665, 500);

  //HOUSE
  fill(32);
  rect(30, 170, 500, 500);
  //roof
  noStroke();
  triangle(280, 20, 530, 170, 30, 170);

  //RICE
  fill(220, 193, 132);
  arc(200, ricePos, 270, 270, radians(-170), radians(10));
  if (ricePos == 523)
  {
    bowlMove = -3;
  }
  if (ricePos == 517)
  {
    bowlMove = 3;
  }

  //BOWL
  fill(160, 190, 255);
  quad(140, bowlPos2, 238, bowlPos2 + 7, 235, bowlPos2 + 30, 138, bowlPos2 + 17);
  if (bowlPos2 == 603)
  {
    bowlMove = -3;
  }
  if (bowlPos2 == 597)
  {
    bowlMove = 3;
  }

  arc(210, bowlPos, 300, 300, radians(10), radians(190));
  if (bowlPos == 473)
  {
    bowlMove = -3;
  }
  if (bowlPos == 467)
  {
    bowlMove = 3;
  }

  //CHOPSTICKS
  fill(102, 51, 0, chopSee);
  quad(mouseX - 70, mouseY - 2, mouseX + 100, mouseY, mouseX +100, mouseY - 10, mouseX - 70, mouseY - 8);
  tint(255, riceSee);
  image(rice, mouseX - 140, mouseY - 25, 150, 100);
  quad(mouseX - 65, mouseY + 22, mouseX + 88, mouseY - 20, mouseX + 90, mouseY - 10, mouseX - 64, mouseY + 28);
  if (mouseX > 500)
  {
    chopSee = 0;
    riceSee = 0;
  } else {
    chopSee = 255;
    if (riceKnow == 255)
    {
      riceSee = 255;
    }
  }
}

void mousePressed() {
  if (130 < mouseX)
  {
    if (mouseX < 420)
    {
      if (360 < mouseY)
      {
        if (mouseY < 500)
        {
          if (riceSee == 0)
          {
            riceSee = 255;
            riceKnow = 255;
          } else {
            riceSee = 0;
            riceKnow = 0;
          }
        }
      }
    }
  }
}
