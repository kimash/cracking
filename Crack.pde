//can also use Perlin noise to give a randomly generated angle - cos x, sin y or vice versa
float crackSize = 1000;

class Crack
{
  ArrayList <PVector> segment;
  PVector pos; 
  float xoff = 0;
  float yoff = 1000;
 
  Crack(float x, float y)
  {
    pos = new PVector(x,y); 
    segment = new ArrayList<PVector>();
  }

   void display()
   {
     xoff += 0.015;
     yoff += 0.015;
     
     pos.x += map(noise(xoff),0,1,-1,1);
     pos.y += map(noise(yoff),0,1,0,-0.5);
     
     segment.add(pos.get());
     beginShape();
     stroke(255);
     noFill();
     for (PVector v : segment) 
     {
       vertex(v.x,v.y); 
     }
     endShape();
   }
  
    void split()  //split the cracks
    {
      if (segment.size() > crackSize)  
        {
          segment.add();
          crackSize /= 3;
        }
    }
}
