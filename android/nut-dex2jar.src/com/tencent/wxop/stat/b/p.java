package com.tencent.wxop.stat.b;

import java.io.File;

final class p
{
  private static int a = -1;

  public static boolean a()
  {
    if (a == 1)
      return true;
    if (a == 0)
      return false;
    int i = 0;
    while (true)
    {
      if (i < 6)
      {
        try
        {
          if (!new File(new java.lang.String[] { "/bin", "/system/bin/", "/system/xbin/", "/system/sbin/", "/sbin/", "/vendor/bin/" }[i] + "su").exists())
            break label106;
          a = 1;
          return true;
        }
        catch (Exception localException)
        {
        }
      }
      else
      {
        a = 0;
        return false;
      }
      label106: i += 1;
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.tencent.wxop.stat.b.p
 * JD-Core Version:    0.6.2
 */