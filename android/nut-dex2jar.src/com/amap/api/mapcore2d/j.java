package com.amap.api.mapcore2d;

import android.content.Context;
import com.amap.api.maps2d.AMapException;
import java.util.ArrayList;
import java.util.Vector;

abstract class j<T, V> extends bg
{
  protected by<T> a;
  private volatile boolean d = true;
  private Vector<Thread> e = null;
  private Runnable f = new k(this);
  private Runnable g = new l(this);
  private ca h;

  public j(bk parambk, Context paramContext)
  {
    super(parambk, paramContext);
  }

  protected abstract ArrayList<T> a(ArrayList<T> paramArrayList)
    throws AMapException;

  protected void a()
  {
    if (this.e == null)
      this.e = new Vector();
    this.h = new ca(f(), this.g, this.f);
    this.h.a();
  }

  protected abstract ArrayList<T> b(ArrayList<T> paramArrayList)
    throws AMapException;

  public void b()
  {
    if (this.a != null)
      this.a.a();
    e();
    if (this.a != null)
      this.a.c();
    this.a = null;
    this.g = null;
    this.f = null;
    this.b = null;
    this.c = null;
  }

  public void c()
  {
    super.c();
    e();
  }

  public void d()
  {
    if (this.d == true);
    do
    {
      return;
      this.d = true;
      if (this.e == null)
        this.e = new Vector();
    }
    while (this.h != null);
    this.h = new ca(f(), this.g, this.f);
    this.h.a();
  }

  public void e()
  {
    this.d = false;
    if (this.e != null)
    {
      int j = this.e.size();
      int i = 0;
      while (i < j)
      {
        Thread localThread = (Thread)this.e.get(0);
        if (localThread != null)
        {
          localThread.interrupt();
          this.e.remove(0);
        }
        i += 1;
      }
      this.e = null;
    }
    if (this.h != null)
    {
      this.h.b();
      this.h = null;
    }
  }

  protected abstract int f();

  protected abstract int g();
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.amap.api.mapcore2d.j
 * JD-Core Version:    0.6.2
 */