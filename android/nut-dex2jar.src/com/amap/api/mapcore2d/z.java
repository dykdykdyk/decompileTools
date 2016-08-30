package com.amap.api.mapcore2d;

import android.graphics.Canvas;
import android.os.Handler;
import android.os.RemoteException;
import android.util.Log;
import java.util.Arrays;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;

class z
{
  private static int a = 0;
  private CopyOnWriteArrayList<aj> b = new CopyOnWriteArrayList();
  private z.a c = new z.a(this, null);
  private Handler d = new Handler();
  private Runnable e = new aa(this);

  static String a(String paramString)
  {
    a += 1;
    return paramString + a;
  }

  private aj c(String paramString)
    throws RemoteException
  {
    Iterator localIterator = this.b.iterator();
    while (localIterator.hasNext())
    {
      aj localaj = (aj)localIterator.next();
      if ((localaj != null) && (localaj.c().equals(paramString)))
        return localaj;
    }
    return null;
  }

  private void c()
  {
    this.d.removeCallbacks(this.e);
    this.d.postDelayed(this.e, 10L);
  }

  public void a()
  {
    Iterator localIterator = this.b.iterator();
    while (localIterator.hasNext())
      ((aj)localIterator.next()).l();
    try
    {
      localIterator = this.b.iterator();
      while (localIterator.hasNext())
        ((aj)localIterator.next()).l();
    }
    catch (Exception localException)
    {
      cz.a(localException, "GLOverlayLayer", "clear");
      Log.d("amapApi", "GLOverlayLayer clear erro" + localException.getMessage());
      return;
    }
    this.b.clear();
  }

  public void a(Canvas paramCanvas)
  {
    Object localObject = this.b.toArray();
    Arrays.sort((Object[])localObject, this.c);
    this.b.clear();
    int j = localObject.length;
    int i = 0;
    aj localaj;
    while (i < j)
    {
      localaj = localObject[i];
      this.b.add((aj)localaj);
      i += 1;
    }
    i = this.b.size();
    localObject = this.b.iterator();
    while (((Iterator)localObject).hasNext())
    {
      localaj = (aj)((Iterator)localObject).next();
      try
      {
        if (!localaj.e())
          continue;
        if (i <= 20)
          break label152;
        if (!localaj.a())
          continue;
        localaj.a(paramCanvas);
      }
      catch (RemoteException localRemoteException)
      {
        cz.a(localRemoteException, "GLOverlayLayer", "draw");
      }
      continue;
      label152: localRemoteException.a(paramCanvas);
    }
  }

  public void a(aj paramaj)
    throws RemoteException
  {
    b(paramaj.c());
    this.b.add(paramaj);
    c();
  }

  public void b()
  {
    try
    {
      Iterator localIterator = this.b.iterator();
      while (localIterator.hasNext())
        ((aj)localIterator.next()).l();
    }
    catch (Exception localException)
    {
      cz.a(localException, "GLOverlayLayer", "destory");
      Log.d("amapApi", "GLOverlayLayer destory erro" + localException.getMessage());
      return;
    }
    a();
  }

  public boolean b(String paramString)
    throws RemoteException
  {
    paramString = c(paramString);
    if (paramString != null)
      return this.b.remove(paramString);
    return false;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.amap.api.mapcore2d.z
 * JD-Core Version:    0.6.2
 */