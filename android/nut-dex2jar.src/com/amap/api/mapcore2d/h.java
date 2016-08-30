package com.amap.api.mapcore2d;

import android.os.Handler;
import android.os.Looper;

abstract class h
{
  protected int a;
  protected int b;
  private Handler c = null;
  private int d = 0;
  private boolean e = false;
  private Runnable f = new i(this);

  public h(int paramInt1, int paramInt2)
  {
    this.a = paramInt1;
    this.b = paramInt2;
  }

  private void f()
  {
    this.e = false;
  }

  private void g()
  {
    this.d += this.b;
    if ((this.a != -1) && (this.d > this.a))
      f();
  }

  private void h()
  {
    if (this.c != null)
      this.c.post(this.f);
  }

  protected abstract void a();

  public void a(boolean paramBoolean)
  {
    this.e = paramBoolean;
  }

  protected abstract void b();

  public void c()
  {
    if (!e())
    {
      this.c = new Handler(Looper.getMainLooper());
      this.e = true;
      this.d = 0;
    }
    h();
  }

  public void d()
  {
    s.a().b();
    f();
    this.f.run();
  }

  public boolean e()
  {
    return this.e;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.amap.api.mapcore2d.h
 * JD-Core Version:    0.6.2
 */