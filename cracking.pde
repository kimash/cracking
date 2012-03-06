//Kim Ash
//builds a system of cracks

Crack cStart;
ArrayList<Crack> cracks;
//float crackSize = 1000;


void setup() 
{
  size(400, 400);

  cracks = new ArrayList<Crack>();
  cStart = new Crack(width/2, height);  //need starting crack, and then build off from there --> may not need this
  cracks.add(cStart);
 
}


void draw() 
{
  background(0);
  smooth();
  
  for(Crack c : cracks) 
  {
    c.display();
  }
  //PVector middle = crack.get(crack.size()/2);
  //PVector end = crack.get(crack.size()-1);
}

//use crack.size() to determine when to branch - set up init var for crackSize
//crack splitting function

//void split()
//{
//   if (c.size() > crackSize)  
//    {
//      cracks.add();
//      crackSize /= 3;
//    }
//  }
