Bacteria [] colony = new Bacteria[300];
 void setup()   
 {  
   size (600,600);
   background (0);
   for(int i = 0; i < colony.length; i++)
  {
    colony[i] = new Bacteria();
  }   
 
 }   
 void draw()   
 {
   colony[i].show();
   colony[i].move();
 }  
 class Bacteria    
 {
   int Zcolor, x, y;
   Bacteria()
   {
     x = (Math.random()*600)+1;
     y = (Math.random()*600)+1;
     Zcolor = (math.random()*256)+1;
     
 }    