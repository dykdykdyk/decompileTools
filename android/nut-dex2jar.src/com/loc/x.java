package com.loc;

public final class x
{
  public static int a(String paramString1, String paramString2)
  {
    int i = 0;
    do
      try
      {
        paramString1 = paramString1.split("\\.");
        paramString2 = paramString2.split("\\.");
        int m = Math.min(paramString1.length, paramString2.length);
        int j = 0;
        while (j < m)
        {
          int k = paramString1[j].length() - paramString2[j].length();
          i = k;
          if (k == 0)
          {
            k = paramString1[j].compareTo(paramString2[j]);
            i = k;
            if (k == 0)
            {
              j += 1;
              i = k;
              continue;
              i = paramString1.length;
              j = paramString2.length;
              return i - j;
            }
          }
        }
      }
      catch (Exception paramString1)
      {
        paramString1.printStackTrace();
        return -1;
      }
    while (i == 0);
    return i;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.loc.x
 * JD-Core Version:    0.6.2
 */