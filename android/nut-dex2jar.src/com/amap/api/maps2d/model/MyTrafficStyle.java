package com.amap.api.maps2d.model;

public class MyTrafficStyle
{
  private int a = -16735735;
  private int b = -35576;
  private int c = -1441006;
  private int d = -7208950;

  public int getCongestedColor()
  {
    return this.c;
  }

  public int getSeriousCongestedColor()
  {
    return this.d;
  }

  public int getSlowColor()
  {
    return this.b;
  }

  public int getSmoothColor()
  {
    return this.a;
  }

  public void setCongestedColor(int paramInt)
  {
    this.c = paramInt;
  }

  public void setSeriousCongestedColor(int paramInt)
  {
    this.d = paramInt;
  }

  public void setSlowColor(int paramInt)
  {
    this.b = paramInt;
  }

  public void setSmoothColor(int paramInt)
  {
    this.a = paramInt;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.amap.api.maps2d.model.MyTrafficStyle
 * JD-Core Version:    0.6.2
 */