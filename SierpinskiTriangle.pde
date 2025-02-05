public void setup()
{
  background(0);
  size(600, 600);
}
public void draw()
{
}
public void mouseMoved()//optional
{
  background(0);
  sierpinski(mouseX, mouseY, mouseX + mouseY);
}

public void sierpinski(int x, int y, int len)
{
  if (len <= 15) {
    rect(x-len, y, len, len);
  } else {
    fill((int)(Math.random()*255), (int)(Math.random()*255), (int)( Math.random()*255));
    sierpinski(x, y, len/2);
    sierpinski(x+len/2, y, len/2);
    sierpinski(x+len/4, y+len/2, len/2);
  }
}
