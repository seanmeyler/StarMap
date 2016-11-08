class Star
{
  int Habitability;
  String DisplayName;
  float Distance;
  int Xg, Yg, Zg;
  float StarSize;
  
  Star(String line)
  {
     String[] fields = line.split(",");
     Habitability = Integer.parseInt(fields[2]);
     DisplayName = fields[3];
     Distance = Float.parseFloat(fields[12]);
     Xg = Integer.parseInt(fields[13]);
     Yg = Integer.parseInt(fields[14]);
     Zg = Integer.parseInt(fields[15]);
     StarSize = Float.parseFloat(fields[16]);
  }
  
  Star(TableRow row)
  {
    Habitability = row.getInt(2);
    DisplayName = row.getString(3);
    Distance = row.getFloat(12);
    Xg = row.getInt(13);
    Yg = row.getInt(14);
    Zg = row.getInt(15);
    StarSize = row.getFloat(16);
  }
}