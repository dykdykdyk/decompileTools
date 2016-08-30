package android.support.v7.view;

import android.support.v4.view.dd;
import android.support.v4.view.dm;
import android.support.v4.view.dt;
import android.support.v4.view.du;
import android.view.View;
import android.view.animation.Interpolator;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;

public final class l
{
  public final ArrayList<dd> a = new ArrayList();
  dt b;
  boolean c;
  private long d = -1L;
  private Interpolator e;
  private final du f = new m(this);

  public final l a(dd paramdd)
  {
    if (!this.c)
      this.a.add(paramdd);
    return this;
  }

  public final l a(dt paramdt)
  {
    if (!this.c)
      this.b = paramdt;
    return this;
  }

  public final l a(Interpolator paramInterpolator)
  {
    if (!this.c)
      this.e = paramInterpolator;
    return this;
  }

  public final void a()
  {
    if (this.c)
      return;
    Iterator localIterator = this.a.iterator();
    while (localIterator.hasNext())
    {
      dd localdd = (dd)localIterator.next();
      if (this.d >= 0L)
        localdd.a(this.d);
      if (this.e != null)
      {
        Interpolator localInterpolator = this.e;
        View localView = (View)localdd.a.get();
        if (localView != null)
          dd.b.a(localView, localInterpolator);
      }
      if (this.b != null)
        localdd.a(this.f);
      localdd.b();
    }
    this.c = true;
  }

  public final void b()
  {
    if (!this.c)
      return;
    Iterator localIterator = this.a.iterator();
    while (localIterator.hasNext())
      ((dd)localIterator.next()).a();
    this.c = false;
  }

  public final l c()
  {
    if (!this.c)
      this.d = 250L;
    return this;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     android.support.v7.view.l
 * JD-Core Version:    0.6.2
 */