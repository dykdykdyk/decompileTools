package com.bingerz.android.a;

import android.content.Context;
import android.content.res.Resources;
import java.util.ArrayList;

public final class a
{
  public static boolean a(Context paramContext, double paramDouble1, double paramDouble2)
  {
    d locald = new d();
    ArrayList localArrayList = new ArrayList();
    double[] arrayOfDouble = a(paramContext.getResources().getStringArray(c.china_latitude));
    paramContext = a(paramContext.getResources().getStringArray(c.china_longitude));
    if ((arrayOfDouble == null) || (arrayOfDouble.length <= 0) || (paramContext == null) || (paramContext.length <= 0) || (arrayOfDouble.length != paramContext.length));
    while (locald.a(new e(paramDouble1, paramDouble2), localArrayList, Double.valueOf(1.0E-010D).doubleValue()) > 0)
    {
      return true;
      int i = 0;
      while (i < arrayOfDouble.length)
      {
        localArrayList.add(new e(arrayOfDouble[i], paramContext[i]));
        i += 1;
      }
    }
    return false;
  }

  private static double[] a(String[] paramArrayOfString)
  {
    if ((paramArrayOfString == null) || (paramArrayOfString.length <= 0))
      return null;
    double[] arrayOfDouble = new double[paramArrayOfString.length];
    int i = 0;
    while (i < paramArrayOfString.length)
    {
      arrayOfDouble[i] = Double.parseDouble(paramArrayOfString[i]);
      i += 1;
    }
    return arrayOfDouble;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.bingerz.android.a.a
 * JD-Core Version:    0.6.2
 */