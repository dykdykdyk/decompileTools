package com.amap.api.services.core;

import java.util.Date;
import java.util.List;

class ba extends bg
{
  private ba.a a;

  protected int a()
  {
    return 0;
  }

  protected cc a(bq parambq)
  {
    try
    {
      if (this.a == null)
        this.a = new ba.a(this, parambq);
      return this.a;
    }
    catch (Throwable parambq)
    {
      while (true)
        parambq.printStackTrace();
    }
  }

  protected String a(String paramString)
  {
    String str = bh.a(new Date().getTime());
    return ap.b(paramString + str);
  }

  protected String a(List<ar> paramList)
  {
    return null;
  }

  protected String b()
  {
    return bd.c;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.amap.api.services.core.ba
 * JD-Core Version:    0.6.2
 */