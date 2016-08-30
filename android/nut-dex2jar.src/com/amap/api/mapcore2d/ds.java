package com.amap.api.mapcore2d;

import java.util.Date;
import java.util.List;

class ds extends dy
{
  private ds.a a;

  protected int a()
  {
    return 0;
  }

  protected eu a(ei paramei)
  {
    try
    {
      if (this.a == null)
        this.a = new ds.a(this, paramei);
      return this.a;
    }
    catch (Throwable paramei)
    {
      while (true)
        paramei.printStackTrace();
    }
  }

  protected String a(String paramString)
  {
    String str = dz.a(new Date().getTime());
    return dg.b(paramString + str);
  }

  protected String a(List<di> paramList)
  {
    return null;
  }

  protected String b()
  {
    return dv.c;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.amap.api.mapcore2d.ds
 * JD-Core Version:    0.6.2
 */