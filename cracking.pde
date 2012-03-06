//Kim Ash
//vertical version of Noise program

Crack c;
//ArrayList<Crack> cracks;
float crackSize = 1000;


void setup() 
{
  size(400, 400);

//  cracks = new ArrayList<PVector>();
  c = new Crack(width/2, height);
 
}


void draw() 
{
  background(0);
  smooth();
  
  //for(Crack c : cracks) {
  c.display();
  //}
  //PVector middle = crack.get(crack.size()/2);
  //PVector middle = crack.get(crack.size()-1);
}

//use crack.size() to determine when to branch - set up init var for crackSize
//crack splitting function

void split()
{
   if (c.size() > crackSize)
    {
      cracks.add();
      crackSize /= 3;
    }
  }
