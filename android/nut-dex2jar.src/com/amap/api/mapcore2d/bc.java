package com.amap.api.mapcore2d;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.os.Handler;
import android.os.RemoteException;
import android.util.AttributeSet;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import com.amap.api.maps2d.model.LatLng;
import com.amap.api.maps2d.model.Marker;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;

class bc extends View
{
  b a;
  bc.a b = new bc.a();
  private ArrayList<ap> c = new ArrayList(8);
  private ArrayList<ah> d = new ArrayList(8);
  private volatile int e = 0;
  private Handler f = new Handler();
  private Runnable g = new bd(this);
  private ak h;
  private ah i;
  private ah j = null;
  private float k = 0.0F;
  private CopyOnWriteArrayList<Integer> l = new CopyOnWriteArrayList();

  public bc(Context paramContext, AttributeSet paramAttributeSet, b paramb)
  {
    super(paramContext, paramAttributeSet);
    this.a = paramb;
  }

  private ap a(Iterator<ap> paramIterator, Rect paramRect, ak paramak)
  {
    while (paramIterator.hasNext())
    {
      ap localap = (ap)paramIterator.next();
      LatLng localLatLng = localap.t();
      if (localLatLng != null)
      {
        this.a.b(localLatLng.latitude, localLatLng.longitude, paramak);
        if (a(paramRect, paramak.a, paramak.b))
          return localap;
      }
    }
    return null;
  }

  private ah b(Iterator<ah> paramIterator, Rect paramRect, ak paramak)
  {
    while (paramIterator.hasNext())
    {
      ah localah = (ah)paramIterator.next();
      LatLng localLatLng = localah.c();
      if (localLatLng != null)
      {
        this.a.b(localLatLng.latitude, localLatLng.longitude, paramak);
        if (a(paramRect, paramak.a, paramak.b))
          return localah;
      }
    }
    return null;
  }

  private int h()
  {
    int m = this.e;
    this.e = (m + 1);
    return m;
  }

  private void i()
  {
    Iterator localIterator = this.d.iterator();
    while (true)
    {
      ah localah;
      if (localIterator.hasNext())
      {
        localah = (ah)localIterator.next();
        if ((this.i == null) || (!this.i.d().equals(localah.d())));
      }
      else
      {
        try
        {
          boolean bool = this.i.q();
          if (bool)
            return;
        }
        catch (RemoteException localRemoteException)
        {
          cz.a(localRemoteException, "MapOverlayImageView", "redrawInfoWindow");
          Rect localRect = localah.b();
          int m = localRect.left;
          this.h = new ak(localah.n() / 2 + m, localRect.top);
          this.a.t();
        }
      }
    }
  }

  public ah a(MotionEvent paramMotionEvent)
  {
    try
    {
      int m = this.d.size() - 1;
      ah localah;
      if (m >= 0)
      {
        localah = (ah)this.d.get(m);
        boolean bool = a(localah.b(), (int)paramMotionEvent.getX(), (int)paramMotionEvent.getY());
        if (!bool);
      }
      for (paramMotionEvent = localah; ; paramMotionEvent = null)
      {
        return paramMotionEvent;
        m -= 1;
        break;
      }
    }
    finally
    {
    }
    throw paramMotionEvent;
  }

  public ah a(String paramString)
    throws RemoteException
  {
    try
    {
      Iterator localIterator = this.d.iterator();
      ah localah;
      boolean bool;
      do
      {
        do
        {
          if (!localIterator.hasNext())
            break;
          localah = (ah)localIterator.next();
        }
        while (localah == null);
        bool = localah.d().equals(paramString);
      }
      while (!bool);
      for (paramString = localah; ; paramString = null)
        return paramString;
    }
    finally
    {
    }
    throw paramString;
  }

  public b a()
  {
    return this.a;
  }

  public void a(Canvas paramCanvas)
  {
    while (true)
    {
      ah localah;
      ap localap;
      try
      {
        i();
        Rect localRect = new Rect(0, 0, this.a.b(), this.a.c());
        ak localak = new ak();
        Iterator localIterator1 = this.d.iterator();
        Iterator localIterator2 = this.c.iterator();
        localah = b(localIterator1, localRect, localak);
        localap = a(localIterator2, localRect, localak);
        break label238;
        if (localah == null)
        {
          localap.a(paramCanvas);
          localap = a(localIterator2, localRect, localak);
        }
        else if (localap == null)
        {
          localah.a(paramCanvas, this.a);
          localah = b(localIterator1, localRect, localak);
        }
        else if ((localah.r() < localap.r()) || ((localah.r() == localap.r()) && (localah.v() < localap.v())))
        {
          localah.a(paramCanvas, this.a);
          localah = b(localIterator1, localRect, localak);
        }
        else
        {
          localap.a(paramCanvas);
          localap = a(localIterator2, localRect, localak);
          break label238;
          return;
        }
      }
      finally
      {
      }
      label238: if (localah == null)
        if (localap == null);
    }
  }

  public void a(ah paramah)
  {
    try
    {
      e(paramah);
      paramah.b(h());
      this.d.remove(paramah);
      this.d.add(paramah);
      d();
      return;
    }
    finally
    {
      paramah = finally;
    }
    throw paramah;
  }

  public void a(ap paramap)
    throws RemoteException
  {
    try
    {
      this.c.remove(paramap);
      paramap.b(h());
      this.c.add(paramap);
      d();
      return;
    }
    finally
    {
      paramap = finally;
    }
    throw paramap;
  }

  public boolean a(Rect paramRect, int paramInt1, int paramInt2)
  {
    return paramRect.contains(paramInt1, paramInt2);
  }

  protected int b()
  {
    return this.d.size();
  }

  public void b(ap paramap)
  {
    try
    {
      this.c.remove(paramap);
      postInvalidate();
      return;
    }
    finally
    {
      paramap = finally;
    }
    throw paramap;
  }

  public boolean b(MotionEvent paramMotionEvent)
  {
    while (true)
    {
      try
      {
        int m = this.d.size() - 1;
        if (m >= 0)
        {
          ah localah = (ah)this.d.get(m);
          Rect localRect = localah.b();
          bool = a(localRect, (int)paramMotionEvent.getX(), (int)paramMotionEvent.getY());
          if (bool)
          {
            this.h = new ak(localRect.left + localah.n() / 2, localRect.top);
            this.i = localah;
            return bool;
          }
          m -= 1;
          continue;
        }
      }
      finally
      {
      }
      boolean bool = false;
    }
  }

  public boolean b(ah paramah)
  {
    try
    {
      e(paramah);
      boolean bool = this.d.remove(paramah);
      postInvalidate();
      return bool;
    }
    finally
    {
      paramah = finally;
    }
    throw paramah;
  }

  public void c()
  {
    try
    {
      if (this.d != null)
      {
        Iterator localIterator = this.d.iterator();
        while (localIterator.hasNext())
          ((ah)localIterator.next()).l();
      }
    }
    catch (Throwable localThrowable)
    {
      cz.a(localThrowable, "MapOverlayImageView", "clear");
      while (true)
      {
        return;
        this.d.clear();
        if (this.c != null)
          this.c.clear();
      }
    }
    finally
    {
    }
  }

  public void c(ah paramah)
  {
    try
    {
      ah localah = this.j;
      if (localah == paramah);
      while (true)
      {
        return;
        if ((this.j != null) && (this.j.r() == 2.147484E+009F))
          this.j.b(this.k);
        this.k = paramah.r();
        this.j = paramah;
        paramah.b(2.147484E+009F);
        d();
      }
    }
    finally
    {
    }
    throw paramah;
  }

  void d()
  {
    this.f.removeCallbacks(this.g);
    this.f.postDelayed(this.g, 5L);
  }

  public void d(ah paramah)
  {
    if (this.h == null)
      this.h = new ak();
    Rect localRect = paramah.b();
    this.h = new ak(localRect.left + paramah.n() / 2, localRect.top);
    this.i = paramah;
    try
    {
      this.a.a(e());
      return;
    }
    catch (RemoteException paramah)
    {
      cz.a(paramah, "MapOverlayImageView", "showInfoWindow");
    }
  }

  public ah e()
  {
    return this.i;
  }

  public void e(ah paramah)
  {
    if (f(paramah))
      this.a.s();
  }

  public void f()
  {
    try
    {
      if (this.f != null)
        this.f.removeCallbacksAndMessages(null);
      c();
      return;
    }
    catch (Exception localException)
    {
      cz.a(localException, "MapOverlayImageView", "destory");
      Log.d("amapApi", "MapOverlayImageView clear erro" + localException.getMessage());
    }
  }

  public boolean f(ah paramah)
  {
    return this.a.b(paramah);
  }

  public List<Marker> g()
  {
    try
    {
      ArrayList localArrayList = new ArrayList();
      Rect localRect = new Rect(0, 0, this.a.b(), this.a.c());
      ak localak = new ak();
      Iterator localIterator = this.d.iterator();
      while (localIterator.hasNext())
      {
        ah localah = (ah)localIterator.next();
        LatLng localLatLng = localah.c();
        if (localLatLng == null)
          break;
        this.a.b(localLatLng.latitude, localLatLng.longitude, localak);
        if (a(localRect, localak.a, localak.b))
          localArrayList.add(new Marker(localah));
      }
    }
    finally
    {
    }
    return localList;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.amap.api.mapcore2d.bc
 * JD-Core Version:    0.6.2
 */