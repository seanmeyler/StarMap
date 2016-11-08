int vline_x1 = 50;
int vline_y1 = 50;
int vline_x2 = 50;
int vline_y2 = 750;
int hline_x1 = 50;
int hline_y1 = 750;
int hline_x2 = 750;
int hline_y2 = 750;
int[] gridnum = {-5, -4, -3, -2, -1, 0, 1, 2, 3, 4, 5};
int[] gridnum2 = {5, 4, 3, 2, 1, 0, -1, -2, -3, -4, -5};
int xpos1 = 50;
int ypos1 = 30;
int xpos2 = 10;
int ypos2 = 750;

void setup()
{
   size(800, 800);
   background(0);
   loadData();
   printStars();
}

ArrayList<Star> data = new ArrayList<Star>();

void loadData()
{
    Table t = loadTable("data.csv");
    for(int i = 0 ; i < t.getRowCount(); i ++)
    {
      TableRow row = t.getRow(i);
      Star star = new Star(row);
      data.add(star);
    }
}

void printStars()
{
   println("Star");
}

void drawGraph()
{
    //Vertical Lines
   for(int i = 0; i < 10; i++)
   {
     stroke(255, 0, 255);
     strokeWeight(2);
     line(vline_x1, vline_y1, vline_x2, vline_y2);
     vline_x1 += 70;
     vline_x2 += 70;
   }
   
   //Horizontal Lines
   for(int i = 0; i < 10; i++)
   {
     stroke(255, 0, 255);
     strokeWeight(2);
     line(hline_x1, hline_y1, hline_x2, hline_y2);
     hline_y1 -= 70;
     hline_y2 -= 70;
   }
   
   //Horizontal Numbers
   for(int i = 0; i < 11; i++)
   {
     fill(255, 0 , 255);
     textSize(20);
     text(gridnum[i], xpos1,  ypos1);
     xpos1 += 70;
   }
   
   //Vertical Numbers
     for(int i = 0; i < 11; i++)
   {
     fill(255, 0 , 255);
     textSize(20);
     text(gridnum[i], xpos2,  ypos2);
     ypos2 -= 70;
   }
}

void plot()
{
  //Stars are showing in left corner could not figure out how to plot them correctly
   Table t = loadTable("data.csv");
   for(int i = 0; i < t.getRowCount(); i++)
   {
       fill(255, 0, 0);
       ellipse(data.get(i).Xg, data.get(i).Yg, data.get(i).StarSize, data.get(i).StarSize);
       stroke(255, 243, 8);
       strokeWeight(1);
       line(data.get(i).Xg, data.get(i).Xg - 50, data.get(i).Yg, data.get(i).Yg + 50);
   }
}

void draw()
{
    drawGraph();
    plot();
}