package com.amap.api.mapcore2d;

import java.util.Arrays;
import java.util.concurrent.CopyOnWriteArrayList;

class aa
  implements Runnable
{
  aa(z paramz)
  {
  }

  public void run()
  {
    try
    {
      Object[] arrayOfObject = z.a(this.a).toArray();
      Arrays.sort(arrayOfObject, z.b(this.a));
      z.a(this.a).clear();
      int j = arrayOfObject.length;
      int i = 0;
      while (i < j)
      {
        Object localObject2 = arrayOfObject[i];
        z.a(this.a).add((aj)localObject2);
        i += 1;
      }
    }
    catch (Throwable localThrowable)
    {
      dn.a(localThrowable, "MapOverlayImageView", "changeOverlayIndex");
      return;
    }
    finally
    {
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.amap.api.mapcore2d.aa
 * JD-Core Version:    0.6.2
 */