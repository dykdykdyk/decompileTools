package com.amap.api.mapcore2d;

import android.content.Context;
import android.graphics.Canvas;
import android.view.View;
import java.util.Arrays;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;

class ce extends View
{
  CopyOnWriteArrayList<Integer> a = new CopyOnWriteArrayList();
  private ad b;
  private CopyOnWriteArrayList<aq> c = new CopyOnWriteArrayList();
  private ce.a d = new ce.a(this, null);

  public ce(Context paramContext, ad paramad)
  {
    super(paramContext);
    this.b = paramad;
  }

  protected void a(Canvas paramCanvas)
  {
    Iterator localIterator = this.c.iterator();
    while (localIterator.hasNext())
    {
      aq localaq = (aq)localIterator.next();
      if (localaq.e())
        localaq.a(paramCanvas);
    }
  }

  public void a(aq paramaq)
  {
    b(paramaq);
    this.c.add(paramaq);
    c();
  }

  public void a(boolean paramBoolean)
  {
    Iterator localIterator = this.c.iterator();
    while (localIterator.hasNext())
    {
      aq localaq = (aq)localIterator.next();
      if ((localaq != null) && (localaq.e()))
        localaq.b(paramBoolean);
    }
  }

  protected boolean a()
  {
    return this.c.size() > 0;
  }

  public void b()
  {
    Iterator localIterator = this.c.iterator();
    while (localIterator.hasNext())
    {
      aq localaq = (aq)localIterator.next();
      if (localaq != null)
        localaq.a();
    }
    this.c.clear();
  }

  public boolean b(aq paramaq)
  {
    return this.c.remove(paramaq);
  }

  void c()
  {
    Object[] arrayOfObject = this.c.toArray();
    Arrays.sort(arrayOfObject, this.d);
    this.c.clear();
    int j = arrayOfObject.length;
    int i = 0;
    while (i < j)
    {
      Object localObject = arrayOfObject[i];
      this.c.add((aq)localObject);
      i += 1;
    }
  }

  public void d()
  {
    Iterator localIterator = this.c.iterator();
    while (localIterator.hasNext())
    {
      aq localaq = (aq)localIterator.next();
      if (localaq != null)
        localaq.g();
    }
  }

  public void e()
  {
    Iterator localIterator = this.c.iterator();
    while (localIterator.hasNext())
    {
      aq localaq = (aq)localIterator.next();
      if (localaq != null)
        localaq.h();
    }
  }

  public void f()
  {
    Iterator localIterator = this.c.iterator();
    while (localIterator.hasNext())
    {
      aq localaq = (aq)localIterator.next();
      if (localaq != null)
        localaq.i();
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.amap.api.mapcore2d.ce
 * JD-Core Version:    0.6.2
 */