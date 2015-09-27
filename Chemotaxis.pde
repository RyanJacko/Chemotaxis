Bacteria [] colony = new Bacteria[2000];
 void setup()   
 {  
   size (600,600);
   background (255);
   for(int i = 0; i < colony.length; i++)
  {
    colony[i] = new Bacteria();
  }   
 
 }   
 void draw()   
 {
   fill(0);
   rect(0, 0, 600, 600);
   for(int i = 0; i < colony.length; i++)
   {
     colony[i].move();
     colony[i].show();
   }
   
 }  
 class Bacteria    
 {
   int Zcolor, x, y, size;
   Bacteria()
   {
     size = (int)(Math.random()*5)+3;
     x = (int)(Math.random()*600)+1;
     y = (int)(Math.random()*600)+1;
     Zcolor = (int)(Math.random()*256)+1;
   }
   void move()
   {
   if(x < mouseX)
   {
     x = x + (int)(Math.random()*4)-1;
   }
   else if (x > mouseX)
   {
     x = x + (int)(Math.random()*4)-2; 
   }
   else 
   {
     x = x + (int)(Math.random()*4)-2;
   }
   if (y < mouseY)
   {
     y = y + (int)(Math.random()*4)-1;
   }
   else if (y > mouseY)
   {
     y = y + (int)(Math.random()*4)-2;
   }
   else
   {
     y = y + (int)(Math.random()*5)-2;
   }
 }
 void show()
 {
   noStroke();
   fill(Zcolor,0,0);
   ellipse(x,y,size,size);
 }
 void mouseClicked()
 {
   redraw();
 }
 }
 