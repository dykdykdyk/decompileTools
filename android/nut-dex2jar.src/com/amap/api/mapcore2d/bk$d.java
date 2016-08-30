package com.amap.api.mapcore2d;

import java.util.ArrayList;
import java.util.Iterator;

public class bk$d
{
  public boolean a = true;
  private b c;
  private ArrayList<co> d;

  private bk$d(bk parambk, b paramb)
  {
    this.c = paramb;
    this.d = new ArrayList();
  }

  public int a()
  {
    try
    {
      int i = this.b.i.i;
      return i;
    }
    catch (Throwable localThrowable)
    {
      cz.a(localThrowable, "Mediator", "getMaxZoomLevel");
    }
    return 0;
  }

  public void a(float paramFloat)
  {
    int i;
    double d1;
    if (paramFloat != this.b.i.j)
    {
      this.b.i.j = paramFloat;
      i = (int)paramFloat;
      d1 = this.b.i.d / (1 << i);
      if (paramFloat - i >= bk.a)
        break label166;
      this.b.i.a = ((int)(this.b.i.b * (1.0D + (paramFloat - i) * 0.4D)));
    }
    label166: double d2;
    for (d1 /= this.b.i.a / this.b.i.b; ; d1 = d1 / 2.0D / d2)
    {
      this.b.i.k = d1;
      this.b.h.c[1] = paramFloat;
      this.b.h.f.a(paramFloat);
      a(false, false);
      return;
      float f = i;
      this.b.i.a = ((int)(this.b.i.b / (2.0F / (2.0F - (1.0F - (paramFloat - f)) * 0.4F))));
      d2 = this.b.i.a / this.b.i.b;
    }
  }

  public void a(int paramInt)
  {
    if (paramInt <= 0)
      return;
    try
    {
      bf localbf = this.b.i;
      v.c = paramInt;
      localbf.i = paramInt;
      return;
    }
    catch (Throwable localThrowable)
    {
      cz.a(localThrowable, "Mediator", "setMaxZoomLevel");
    }
  }

  public void a(int paramInt1, int paramInt2)
  {
    if ((paramInt1 != v.m) || (paramInt2 != v.n))
    {
      v.m = paramInt1;
      v.n = paramInt2;
      a(true, false);
    }
  }

  public void a(ab paramab)
  {
    if (paramab == null)
      return;
    if (v.p == true)
    {
      paramab = this.b.i.a(paramab);
      this.b.i.l = paramab;
    }
    a(false, false);
  }

  public void a(co paramco)
  {
    this.d.add(paramco);
  }

  public void a(boolean paramBoolean1, boolean paramBoolean2)
  {
    Iterator localIterator = this.d.iterator();
    while (localIterator.hasNext())
      ((co)localIterator.next()).a(paramBoolean1, paramBoolean2);
    if ((this.b.h != null) && (this.b.h.i != null))
    {
      this.b.h.i.a(true);
      this.b.h.postInvalidate();
    }
  }

  public int b()
  {
    try
    {
      int i = this.b.i.h;
      return i;
    }
    catch (Throwable localThrowable)
    {
      cz.a(localThrowable, "Mediator", "getMinZoomLevel");
    }
    return 0;
  }

  public void b(int paramInt)
  {
    if (paramInt <= 0)
      return;
    try
    {
      bf localbf = this.b.i;
      v.d = paramInt;
      localbf.h = paramInt;
      return;
    }
    catch (Throwable localThrowable)
    {
      cz.a(localThrowable, "Mediator", "setMinZoomLevel");
    }
  }

  public void b(ab paramab)
  {
    ab localab = this.b.c.f();
    if ((paramab != null) && (!paramab.equals(localab)))
    {
      if (v.p == true)
      {
        paramab = this.b.i.a(paramab);
        this.b.i.l = paramab;
      }
      a(false, true);
    }
  }

  public void b(co paramco)
  {
    this.d.remove(paramco);
  }

  public int c()
  {
    return v.m;
  }

  public int d()
  {
    return v.n;
  }

  public float e()
  {
    try
    {
      float f = this.b.i.j;
      return f;
    }
    catch (Throwable localThrowable)
    {
      cz.a(localThrowable, "Mediator", "getZoomLevel");
    }
    return 0.0F;
  }

  public ab f()
  {
    ab localab2 = this.b.i.b(this.b.i.l);
    ab localab1 = localab2;
    if (this.b.d != null)
    {
      localab1 = localab2;
      if (this.b.d.a)
        localab1 = this.b.i.m;
    }
    return localab1;
  }

  public b g()
  {
    return this.c;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.amap.api.mapcore2d.bk.d
 * JD-Core Version:    0.6.2
 */