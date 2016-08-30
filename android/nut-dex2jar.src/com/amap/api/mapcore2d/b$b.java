package com.amap.api.mapcore2d;

import android.content.Context;
import com.amap.api.maps2d.AMap.OnCacheRemoveListener;
import java.io.File;

class b$b
  implements Runnable
{
  private Context b;
  private AMap.OnCacheRemoveListener c;

  public b$b(b paramb, Context paramContext, AMap.OnCacheRemoveListener paramOnCacheRemoveListener)
  {
    this.b = paramContext;
    this.c = paramOnCacheRemoveListener;
  }

  public void run()
  {
    try
    {
      cz.a(new File(cz.b(this.b)));
      try
      {
        if (this.c != null)
          this.c.onRemoveCacheFinish(true);
        return;
      }
      catch (Throwable localThrowable1)
      {
        localThrowable1.printStackTrace();
        return;
      }
    }
    catch (Throwable localThrowable2)
    {
      while (true)
      {
        localThrowable2 = localThrowable2;
        dn.a(localThrowable2, "AMapDelegateImpGLSurfaceView", "RemoveCacheRunnable");
        try
        {
          if (this.c != null)
          {
            this.c.onRemoveCacheFinish(false);
            return;
          }
        }
        catch (Throwable localThrowable3)
        {
          localThrowable3.printStackTrace();
          return;
        }
      }
    }
    finally
    {
    }
    try
    {
      if (this.c != null)
        this.c.onRemoveCacheFinish(true);
      throw localObject;
    }
    catch (Throwable localThrowable4)
    {
      while (true)
        localThrowable4.printStackTrace();
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.amap.api.mapcore2d.b.b
 * JD-Core Version:    0.6.2
 */