package com.amap.api.location;

public class DPoint
{
  private double a;
  private double b;

  public DPoint()
  {
  }

  public DPoint(double paramDouble1, double paramDouble2)
  {
    if (paramDouble2 > 180.0D)
      paramDouble2 = d4;
    while (true)
    {
      if (paramDouble2 < -180.0D)
        paramDouble2 = d3;
      while (true)
      {
        if (paramDouble1 > 90.0D)
          paramDouble1 = d2;
        while (true)
        {
          if (paramDouble1 < -90.0D)
            paramDouble1 = d1;
          while (true)
          {
            this.a = paramDouble2;
            this.b = paramDouble1;
            return;
          }
        }
      }
    }
  }

  public double getLatitude()
  {
    return this.b;
  }

  public double getLongitude()
  {
    return this.a;
  }

  public void setLatitude(double paramDouble)
  {
    double d2 = 90.0D;
    double d1 = -90.0D;
    if (paramDouble > 90.0D)
      paramDouble = d2;
    while (true)
    {
      if (paramDouble < -90.0D)
        paramDouble = d1;
      while (true)
      {
        this.b = paramDouble;
        return;
      }
    }
  }

  public void setLongitude(double paramDouble)
  {
    double d2 = 180.0D;
    double d1 = -180.0D;
    if (paramDouble > 180.0D)
      paramDouble = d2;
    while (true)
    {
      if (paramDouble < -180.0D)
        paramDouble = d1;
      while (true)
      {
        this.a = paramDouble;
        return;
      }
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.amap.api.location.DPoint
 * JD-Core Version:    0.6.2
 */