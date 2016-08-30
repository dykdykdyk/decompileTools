package com.loc;

import android.content.Context;
import android.text.TextUtils;
import com.amap.api.location.DPoint;
import java.io.File;
import java.math.BigDecimal;

public final class du
{
  static double a = 3.141592653589793D;
  private static boolean b = false;

  private static double a(double paramDouble)
  {
    return Math.sin(3000.0D * paramDouble * (a / 180.0D)) * 2.E-005D;
  }

  private static double a(double paramDouble1, double paramDouble2)
  {
    return Math.cos(paramDouble2 / 100000.0D) * (paramDouble1 / 18000.0D) + Math.sin(paramDouble1 / 100000.0D) * (paramDouble2 / 9000.0D);
  }

  public static DPoint a(Context paramContext, double paramDouble1, double paramDouble2)
  {
    if (paramContext == null)
      return null;
    return a(paramContext, new DPoint(paramDouble2, paramDouble1));
  }

  public static DPoint a(Context paramContext, DPoint paramDPoint)
  {
    if (paramContext == null)
      return null;
    paramContext = em.a(paramContext, "libwgs2gcj.so");
    if ((!TextUtils.isEmpty(paramContext)) && (new File(paramContext).exists()) && (!b));
    try
    {
      System.load(paramContext);
      b = true;
      label48: return a(paramDPoint, b);
    }
    catch (Throwable paramContext)
    {
      break label48;
    }
  }

  public static DPoint a(DPoint paramDPoint)
  {
    DPoint localDPoint1 = paramDPoint;
    int i;
    double d1;
    double d2;
    if (paramDPoint != null)
    {
      i = 0;
      d1 = 0.0060424805D;
      localDPoint1 = null;
      d2 = 0.006401062D;
    }
    while (true)
    {
      if (i < 2);
      try
      {
        double d3 = paramDPoint.getLongitude();
        double d4 = paramDPoint.getLatitude();
        localDPoint1 = new DPoint();
        d2 = d3 - d2;
        d1 = d4 - d1;
        DPoint localDPoint2 = new DPoint();
        double d5 = Math.cos(b(d2) + Math.atan2(d1, d2));
        double d6 = a(d1);
        double d7 = Math.sqrt(d2 * d2 + d1 * d1);
        double d8 = Math.sin(b(d2) + Math.atan2(d1, d2));
        double d9 = a(d1);
        double d10 = Math.sqrt(d2 * d2 + d1 * d1);
        localDPoint2.setLongitude(c(d5 * (d6 + d7) + 0.0065D));
        localDPoint2.setLatitude(c(d8 * (d9 + d10) + 0.006D));
        localDPoint1.setLongitude(c(d3 + d2 - localDPoint2.getLongitude()));
        localDPoint1.setLatitude(c(d4 + d1 - localDPoint2.getLatitude()));
        d2 = paramDPoint.getLongitude();
        d4 = localDPoint1.getLongitude();
        d1 = paramDPoint.getLatitude();
        d3 = localDPoint1.getLatitude();
        i += 1;
        d2 -= d4;
        d1 -= d3;
        continue;
        return localDPoint1;
      }
      catch (Throwable localThrowable)
      {
        localThrowable.printStackTrace();
      }
    }
    return paramDPoint;
  }

  // ERROR //
  private static DPoint a(DPoint paramDPoint, boolean paramBoolean)
  {
    // Byte code:
    //   0: iconst_2
    //   1: newarray double
    //   3: astore 7
    //   5: iload_1
    //   6: ifeq +67 -> 73
    //   9: aload_0
    //   10: invokevirtual 90	com/amap/api/location/DPoint:getLongitude	()D
    //   13: dstore_2
    //   14: aload_0
    //   15: invokevirtual 93	com/amap/api/location/DPoint:getLatitude	()D
    //   18: dstore 4
    //   20: aload 7
    //   22: astore 6
    //   24: iconst_2
    //   25: newarray double
    //   27: dup
    //   28: iconst_0
    //   29: dload_2
    //   30: dastore
    //   31: dup
    //   32: iconst_1
    //   33: dload 4
    //   35: dastore
    //   36: aload 7
    //   38: invokestatic 128	com/amap/api/location/CoordUtil:convertToGcj	([D[D)I
    //   41: ifeq +16 -> 57
    //   44: aload_0
    //   45: invokevirtual 90	com/amap/api/location/DPoint:getLongitude	()D
    //   48: aload_0
    //   49: invokevirtual 93	com/amap/api/location/DPoint:getLatitude	()D
    //   52: invokestatic 133	com/loc/bz:a	(DD)[D
    //   55: astore 6
    //   57: new 42	com/amap/api/location/DPoint
    //   60: dup
    //   61: aload 6
    //   63: iconst_1
    //   64: daload
    //   65: aload 6
    //   67: iconst_0
    //   68: daload
    //   69: invokespecial 46	com/amap/api/location/DPoint:<init>	(DD)V
    //   72: areturn
    //   73: aload_0
    //   74: invokevirtual 90	com/amap/api/location/DPoint:getLongitude	()D
    //   77: aload_0
    //   78: invokevirtual 93	com/amap/api/location/DPoint:getLatitude	()D
    //   81: invokestatic 133	com/loc/bz:a	(DD)[D
    //   84: astore 6
    //   86: goto -29 -> 57
    //   89: astore 6
    //   91: aload_0
    //   92: areturn
    //   93: astore 6
    //   95: goto -22 -> 73
    //
    // Exception table:
    //   from	to	target	type
    //   0	5	89	java/lang/Throwable
    //   9	20	89	java/lang/Throwable
    //   57	73	89	java/lang/Throwable
    //   73	86	89	java/lang/Throwable
    //   24	57	93	java/lang/Throwable
  }

  private static double b(double paramDouble)
  {
    return Math.cos(3000.0D * paramDouble * (a / 180.0D)) * 3.E-006D;
  }

  private static double b(double paramDouble1, double paramDouble2)
  {
    return Math.sin(paramDouble2 / 100000.0D) * (paramDouble1 / 18000.0D) + Math.cos(paramDouble1 / 100000.0D) * (paramDouble2 / 9000.0D);
  }

  public static DPoint b(Context paramContext, DPoint paramDPoint)
  {
    try
    {
      double d1 = paramDPoint.getLongitude();
      double d2 = paramDPoint.getLatitude();
      d1 = ()(d1 * 100000.0D) % 36000000L;
      d2 = ()(d2 * 100000.0D) % 36000000L;
      int i = (int)(-a(d1, d2) + d1);
      int j = (int)(-b(d1, d2) + d2);
      double d3 = -a(i, j);
      int k;
      if (d1 > 0.0D)
      {
        i = 1;
        k = (int)(i + (d3 + d1));
        d1 = -b(k, j);
        if (d2 <= 0.0D)
          break label162;
      }
      label162: for (i = 1; ; i = -1)
      {
        i = (int)(i + (d1 + d2));
        d1 = k / 100000.0D;
        paramContext = a(paramContext, new DPoint(i / 100000.0D, d1));
        return paramContext;
        i = -1;
        break;
      }
    }
    catch (Throwable paramContext)
    {
      paramContext.printStackTrace();
    }
    return paramDPoint;
  }

  private static double c(double paramDouble)
  {
    return new BigDecimal(paramDouble).setScale(8, 4).doubleValue();
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.loc.du
 * JD-Core Version:    0.6.2
 */