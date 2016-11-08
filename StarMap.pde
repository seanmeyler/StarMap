int vline_x1 = 50;
int vline_y1 = 50;
int vline_x2 = 50;
int vline_y2 = 750;
int hline_x1 = 50;
int hline_y1 = 750;
int hline_x2 = 750;
int hline_y2 = 750;

void setup()
{
   size(800, 800);
   background(0);
   loadData();
}

void draw()
{
    drawGraph();
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
}