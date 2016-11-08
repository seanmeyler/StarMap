class Star
{
  int Habitability;
  String DisplayName;
  float Distance;
  int Xg, Yg, Zg;
  float StarSize;
  
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