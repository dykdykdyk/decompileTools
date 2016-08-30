package com.google.zxing.b.a;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

public final class n extends u
{
  private static final Pattern a = Pattern.compile("geo:([\\-0-9.]+),([\\-0-9.]+)(?:,([\\-0-9.]+))?(?:\\?(.*))?", 2);

  private static m d(com.google.zxing.m paramm)
  {
    double d1 = 0.0D;
    paramm = b(paramm);
    paramm = a.matcher(paramm);
    if (!paramm.matches())
      return null;
    String str1 = paramm.group(4);
    try
    {
      double d2 = Double.parseDouble(paramm.group(1));
      if ((d2 <= 90.0D) && (d2 >= -90.0D))
      {
        double d3 = Double.parseDouble(paramm.group(2));
        if ((d3 > 180.0D) || (d3 < -180.0D))
          break label141;
        String str2 = paramm.group(3);
        if (str2 == null);
        while (true)
        {
          return new m(d2, d3, d1, str1);
          d1 = Double.parseDouble(paramm.group(3));
          if (d1 < 0.0D)
            return null;
        }
      }
    }
    catch (NumberFormatException paramm)
    {
      return null;
    }
    return null;
    label141: return null;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.google.zxing.b.a.n
 * JD-Core Version:    0.6.2
 */