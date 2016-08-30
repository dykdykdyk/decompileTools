package com.google.android.gms.internal;

import android.os.Looper;
import android.util.Pair;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.s;
import com.google.android.gms.common.api.t;
import com.google.android.gms.common.api.u;
import com.google.android.gms.common.api.v;
import com.google.android.gms.common.internal.b;
import com.google.android.gms.common.internal.ba;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.concurrent.CountDownLatch;

public abstract class n<R extends u> extends s<R>
{
  static final ThreadLocal<Boolean> a = new o();
  protected final p<R> b = new p(Looper.getMainLooper());
  protected final WeakReference<com.google.android.gms.common.api.o> c = new WeakReference(null);
  private final Object d = new Object();
  private final CountDownLatch e = new CountDownLatch(1);
  private final ArrayList<Object> f = new ArrayList();
  private v<? super R> g;
  private R h;
  private q i;
  private volatile boolean j;
  private boolean k;
  private boolean l;
  private ba m;
  private boolean n = false;

  private boolean a()
  {
    synchronized (this.d)
    {
      boolean bool = this.k;
      return bool;
    }
  }

  public static void b(u paramu)
  {
    if ((paramu instanceof t));
  }

  private void c(R paramR)
  {
    this.h = paramR;
    this.m = null;
    this.e.countDown();
    this.h.a();
    if (this.k)
      this.g = null;
    while (true)
    {
      paramR = this.f.iterator();
      while (paramR.hasNext())
        paramR.next();
      if (this.g == null)
      {
        if ((this.h instanceof t))
          this.i = new q(this, (byte)0);
      }
      else
      {
        this.b.removeMessages(2);
        paramR = this.b;
        paramR.sendMessage(paramR.obtainMessage(1, new Pair(this.g, e())));
      }
    }
    this.f.clear();
  }

  private R e()
  {
    for (boolean bool = true; ; bool = false)
      synchronized (this.d)
      {
        if (!this.j)
        {
          b.a(bool, "Result has already been consumed.");
          b.a(b(), "Result is not ready.");
          u localu = this.h;
          this.h = null;
          this.g = null;
          this.j = true;
          return localu;
        }
      }
  }

  protected abstract R a(Status paramStatus);

  public final void a(R paramR)
  {
    boolean bool2 = true;
    while (true)
    {
      synchronized (this.d)
      {
        if ((!this.l) && (!this.k))
        {
          if ((!b()) || (!b()))
          {
            bool1 = true;
            b.a(bool1, "Results have already been set");
            if (this.j)
              break label86;
            bool1 = bool2;
            b.a(bool1, "Result has already been consumed");
            c(paramR);
          }
        }
        else
          return;
      }
      boolean bool1 = false;
      continue;
      label86: bool1 = false;
    }
  }

  public final boolean b()
  {
    return this.e.getCount() == 0L;
  }

  public final void c()
  {
    synchronized (this.d)
    {
      if ((this.k) || (this.j))
        return;
      this.k = true;
      c(a(Status.e));
      return;
    }
  }

  public final void c(Status paramStatus)
  {
    synchronized (this.d)
    {
      if (!b())
      {
        a(a(paramStatus));
        this.l = true;
      }
      return;
    }
  }

  public final boolean d()
  {
    synchronized (this.d)
    {
      if (((com.google.android.gms.common.api.o)this.c.get() == null) || (!this.n))
        c();
      boolean bool = a();
      return bool;
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.google.android.gms.internal.n
 * JD-Core Version:    0.6.2
 */