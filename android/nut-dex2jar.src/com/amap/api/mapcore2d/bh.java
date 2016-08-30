package com.amap.api.mapcore2d;

import java.util.Random;

class bh
{
  private static bh b;
  private String a = "http://tm.amap.com";

  public static bh a()
  {
    try
    {
      if (b == null)
        b = new bh();
      bh localbh = b;
      return localbh;
    }
    finally
    {
    }
  }

  public String b()
  {
    return "http://grid.amap.com/grid/%d/%d/%d?dpiType=%s&lang=%s";
  }

  public String c()
  {
    return this.a;
  }

  public String d()
  {
    int i = new Random(System.currentTimeMillis()).nextInt(100000);
    return String.format("http://mt%d.google.cn/vt/lyrs=m", new Object[] { Integer.valueOf(i % 4 + 1) }) + "@285000000&hl=zh-CN&gl=CN&src=app&expIds=201527&rlbl=1&x=%d&y=%d&z=%d&s=Gali";
  }

  public String e()
  {
    return String.format("http://mst0%d.is.autonavi.com", new Object[] { Integer.valueOf(new Random(System.currentTimeMillis()).nextInt(100000) % 4 + 1) });
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.amap.api.mapcore2d.bh
 * JD-Core Version:    0.6.2
 */