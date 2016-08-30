package com.amap.api.mapcore2d;

import java.util.Collections;

class bd
  implements Runnable
{
  bd(bc parambc)
  {
  }

  public void run()
  {
    try
    {
      Collections.sort(bc.a(this.a), this.a.b);
      Collections.sort(bc.b(this.a), this.a.b);
      this.a.invalidate();
      return;
    }
    catch (Throwable localThrowable)
    {
      while (true)
        dn.a(localThrowable, "MapOverlayImageView", "changeOverlayIndex");
    }
    finally
    {
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.amap.api.mapcore2d.bd
 * JD-Core Version:    0.6.2
 */