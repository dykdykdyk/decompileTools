package com.bingerz.android.a;

import java.util.ArrayList;

public final class d
{
  public e a;

  private int a(e parame1, e parame2, e parame3, e parame4, double paramDouble, boolean paramBoolean)
  {
    parame2 = a(parame2, parame1);
    parame4 = a(parame4, parame3);
    double d1 = b(parame4, parame2);
    if (d1 == 0.0D)
      return 0;
    double d2 = (b(parame1, parame2) - b(parame3, parame2)) / d1;
    if (paramBoolean)
    {
      parame2 = new e();
      parame3.a += parame4.a * d2;
      parame3.b += parame4.b * d2;
      this.a = parame2;
    }
    if ((d2 < -paramDouble) || (d2 > 1.0D + paramDouble))
      return -1;
    if ((d2 < paramDouble) || (d2 > 1.0D - paramDouble))
      return 0;
    paramDouble = (b(parame1, parame4) - b(parame3, parame4)) / d1;
    if ((paramDouble < 0.0D) || (paramDouble > 1.0D))
      return -1;
    return 1;
  }

  private static e a(e parame1, e parame2)
  {
    e locale = new e();
    parame1.a -= parame2.a;
    parame1.b -= parame2.b;
    return locale;
  }

  private static double b(e parame1, e parame2)
  {
    return parame1.a * parame2.b - parame1.b * parame2.a;
  }

  public final int a(e parame, ArrayList<e> paramArrayList, double paramDouble)
  {
    int i = 0;
    int j;
    e locale1;
    double d2;
    double d3;
    while (i < paramArrayList.size())
    {
      j = paramArrayList.size();
      locale1 = (e)paramArrayList.get(i);
      e locale2 = (e)paramArrayList.get((i + 1) % j);
      e locale3 = a(locale2, locale1);
      e locale4 = new e();
      parame.a += locale3.b;
      parame.b -= locale3.a;
      if (a(parame, locale4, locale1, locale2, paramDouble, true) == -1);
      for (d1 = 1.7976931348623157E+308D; d1 < paramDouble; d1 = Math.sqrt(locale2.b * d3 + d1 * d2))
      {
        return 0;
        this.a = a(this.a, parame);
        locale1 = this.a;
        locale2 = this.a;
        d1 = locale1.a;
        d2 = locale2.a;
        d3 = locale1.b;
      }
      i += 1;
    }
    double d5 = ((e)paramArrayList.get(0)).a;
    double d4 = ((e)paramArrayList.get(1)).b;
    double d6 = d5;
    i = 0;
    double d1 = d4;
    if (i < paramArrayList.size())
    {
      locale1 = (e)paramArrayList.get(i);
      d2 = d6;
      if (locale1.a > d6)
        d2 = locale1.a;
      d3 = d5;
      if (locale1.a < d5)
        d3 = locale1.a;
      d5 = d4;
      if (locale1.b > d4)
        d5 = locale1.b;
      if (locale1.b >= d1)
        break label592;
      d1 = locale1.b;
    }
    label592: 
    while (true)
    {
      i += 1;
      d4 = d5;
      d6 = d2;
      d5 = d3;
      break;
      if ((parame.a < d5) || (parame.a > d6) || (parame.b < d1) || (parame.b > d4))
        return -1;
      d1 = (d6 - d5) * 2.0D + (d4 - d1) * 2.0D;
      locale1 = new e();
      do
      {
        j = 0;
        parame.a += (1.0D + Math.random() / 2.0D) * d1;
        parame.b += (1.0D + Math.random() / 2.0D) * d1;
        i = 0;
        while (i < paramArrayList.size())
        {
          int k = paramArrayList.size();
          int m = a(parame, locale1, (e)paramArrayList.get(i), (e)paramArrayList.get((i + 1) % k), paramDouble, false);
          k = j;
          if (m != 0)
          {
            k = j;
            if (m == 1)
              k = j + 1;
          }
          i += 1;
          j = k;
        }
      }
      while (i != paramArrayList.size());
      if ((j & 0x1) == 1)
        return 1;
      return -1;
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.bingerz.android.a.d
 * JD-Core Version:    0.6.2
 */