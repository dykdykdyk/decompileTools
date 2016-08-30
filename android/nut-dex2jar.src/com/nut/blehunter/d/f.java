package com.nut.blehunter.d;

import android.content.Context;
import android.location.LocationManager;

public final class f
{
  public static boolean a(Context paramContext)
  {
    try
    {
      boolean bool = ((LocationManager)paramContext.getSystemService("location")).isProviderEnabled("gps");
      return bool;
    }
    catch (Exception paramContext)
    {
    }
    return false;
  }

  public static double[] a(double paramDouble1, double paramDouble2)
  {
    double[] arrayOfDouble = b(paramDouble1, paramDouble2);
    return new double[] { arrayOfDouble[0] + paramDouble1, arrayOfDouble[1] + paramDouble2 };
  }

  public static boolean b(Context paramContext)
  {
    try
    {
      boolean bool = ((LocationManager)paramContext.getSystemService("location")).isProviderEnabled("network");
      return bool;
    }
    catch (Exception paramContext)
    {
    }
    return false;
  }

  public static double[] b(double paramDouble1, double paramDouble2)
  {
    double d1 = paramDouble2 - 105.0D;
    double d2 = paramDouble1 - 35.0D;
    double d3 = Math.sqrt(Math.abs(d1));
    double d4 = Math.sin(6.0D * d1 * 3.141592653589793D);
    d4 = (Math.sin(d1 * 2.0D * 3.141592653589793D) * 20.0D + 20.0D * d4) * 2.0D / 3.0D;
    double d5 = (20.0D * Math.sin(3.141592653589793D * d2) + 40.0D * Math.sin(d2 / 3.0D * 3.141592653589793D)) * 2.0D / 3.0D;
    double d6 = Math.sin(d2 / 12.0D * 3.141592653589793D);
    d6 = (Math.sin(d2 * 3.141592653589793D / 30.0D) * 320.0D + 160.0D * d6) * 2.0D / 3.0D;
    paramDouble2 -= 105.0D;
    double d7 = paramDouble1 - 35.0D;
    double d8 = Math.sqrt(Math.abs(paramDouble2));
    double d9 = (20.0D * Math.sin(6.0D * paramDouble2 * 3.141592653589793D) + 20.0D * Math.sin(2.0D * paramDouble2 * 3.141592653589793D)) * 2.0D / 3.0D;
    double d10 = (20.0D * Math.sin(3.141592653589793D * paramDouble2) + 40.0D * Math.sin(paramDouble2 / 3.0D * 3.141592653589793D)) * 2.0D / 3.0D;
    double d11 = Math.sin(paramDouble2 / 12.0D * 3.141592653589793D);
    d11 = (Math.sin(paramDouble2 / 30.0D * 3.141592653589793D) * 300.0D + 150.0D * d11) * 2.0D / 3.0D;
    paramDouble1 = paramDouble1 / 180.0D * 3.141592653589793D;
    double d12 = Math.sin(paramDouble1);
    d12 = 1.0D - d12 * (0.006693421622965943D * d12);
    double d13 = Math.sqrt(d12);
    return new double[] { (d4 + (-100.0D + 2.0D * d1 + 3.0D * d2 + 0.2D * d2 * d2 + 0.1D * d1 * d2 + 0.2D * d3) + d5 + d6) * 180.0D / (6335552.7170004258D / (d12 * d13) * 3.141592653589793D), 180.0D * (d11 + (d7 * (0.1D * paramDouble2) + (300.0D + paramDouble2 + 2.0D * d7 + 0.1D * paramDouble2 * paramDouble2) + 0.1D * d8 + d9 + d10)) / (6378245.0D / d13 * Math.cos(paramDouble1) * 3.141592653589793D) };
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.nut.blehunter.d.f
 * JD-Core Version:    0.6.2
 */