package com.amap.api.mapcore2d;

import java.util.Comparator;

class z$a
  implements Comparator<Object>
{
  private z$a(z paramz)
  {
  }

  public int compare(Object paramObject1, Object paramObject2)
  {
    paramObject1 = (aj)paramObject1;
    paramObject2 = (aj)paramObject2;
    if ((paramObject1 != null) && (paramObject2 != null))
      try
      {
        if (paramObject1.d() > paramObject2.d())
          return 1;
        float f1 = paramObject1.d();
        float f2 = paramObject2.d();
        if (f1 < f2)
          return -1;
      }
      catch (Exception paramObject1)
      {
        cz.a(paramObject1, "GLOverlayLayer", "compare");
      }
    return 0;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.amap.api.mapcore2d.z.a
 * JD-Core Version:    0.6.2
 */