package com.nut.blehunter.d;

public final class l
{
  public static int a(double paramDouble)
  {
    paramDouble = b(paramDouble);
    if (paramDouble <= 0.0D)
      return 0;
    if (paramDouble <= 1.0D)
      return 6;
    if (paramDouble <= 2.0D)
      return 5;
    if (paramDouble <= 5.0D)
      return 4;
    if (paramDouble <= 10.0D)
      return 3;
    if (paramDouble <= 20.0D)
      return 2;
    return 1;
  }

  public static double b(double paramDouble)
  {
    if (paramDouble >= 0.0D)
      return -1.0D;
    paramDouble = paramDouble * 1.0D / -60.0D;
    if (paramDouble < 1.0D)
      return Math.pow(paramDouble, 4.0D);
    return Math.pow(paramDouble, 7.7095D) * 0.89976D + 0.111D;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.nut.blehunter.d.l
 * JD-Core Version:    0.6.2
 */