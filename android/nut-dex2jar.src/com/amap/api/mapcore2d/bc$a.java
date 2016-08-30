package com.amap.api.mapcore2d;

import java.io.Serializable;
import java.util.Comparator;

class bc$a
  implements Serializable, Comparator<ai>
{
  public int a(ai paramai1, ai paramai2)
  {
    if ((paramai1 != null) && (paramai2 != null))
      try
      {
        if (paramai1.r() > paramai2.r())
          return 1;
        float f1 = paramai1.r();
        float f2 = paramai2.r();
        if (f1 < f2)
          return -1;
      }
      catch (Throwable paramai1)
      {
        cz.a(paramai1, "MapOverlayImageView", "compare");
      }
    return 0;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.amap.api.mapcore2d.bc.a
 * JD-Core Version:    0.6.2
 */