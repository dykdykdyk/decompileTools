package com.amap.api.services.core;

import java.util.List;

class bc extends bg
{
  private bc.a a;

  protected int a()
  {
    return 1;
  }

  protected cc a(bq parambq)
  {
    try
    {
      if (this.a == null)
        this.a = new bc.a(this, parambq);
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
    return ap.b(paramString);
  }

  protected String a(List<ar> paramList)
  {
    return null;
  }

  protected String b()
  {
    return bd.b;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.amap.api.services.core.bc
 * JD-Core Version:    0.6.2
 */