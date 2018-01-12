//PImage Belgique;
//PImage Belgique1;
//PImage Belgique2;
//PImage Belgique3;
//PImage Belgique4;
PImage[]Belgique = new PImage[5];
PImage Amie;
void setup()
{
  size(800, 800);
  Belgique[0] = loadImage("Belgique.JPG");
  Belgique[1] = loadImage("Belgique1.JPG");
  Belgique[2] = loadImage("Belgique2.JPG");
  Belgique[3] = loadImage("Belgique3.JPG");
  Belgique[4] = loadImage("Belgique4.JPG");
  Amie = loadImage("ChatNoir.JPG");
  Amie.resize(width, height);
}
void draw()
{

  NewWord();
  NewWord();
  NewWord();
}
void NewWord()
{

  int xPick = (int)random(width);
  int yPick = (int)random (height);
  color Col = Amie.get(xPick, yPick);
  tint(Col);
  image(Belgique[(int)random(5)], xPick, yPick, 25, 25);
}