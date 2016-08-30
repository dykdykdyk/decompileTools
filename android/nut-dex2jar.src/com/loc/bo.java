package com.loc;

import java.io.IOException;

public final class bo extends bp<String, bg>
{
  private static int a(bg parambg)
  {
    if (parambg == null)
      return 0;
    try
    {
      long l = parambg.d();
      return (int)l;
    }
    catch (IOException parambg)
    {
    }
    return 0;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.loc.bo
 * JD-Core Version:    0.6.2
 */