package com.amap.api.mapcore2d;

import android.os.Handler;
import android.os.Message;

class ay$a
  implements ck
{
  private cj b = null;
  private Message c = null;
  private Runnable d = null;

  private ay$a(ay paramay)
  {
  }

  private cj a(ab paramab, int paramInt)
  {
    int i = 500;
    if (paramInt < 500);
    while (true)
    {
      return new cj(i, 10, ay.a(this.a).i.l, paramab, paramInt, this);
      i = paramInt;
    }
  }

  private void c()
  {
    this.b = null;
    this.c = null;
    this.d = null;
  }

  public void a()
  {
    if (this.b != null)
      this.b.d();
  }

  public void a(ab paramab)
  {
    if (paramab == null)
      return;
    if ((paramab.d() == -9223372036854775808L) || (paramab.c() == -9223372036854775808L))
    {
      paramab = ay.a(this.a).i.b(paramab);
      this.a.a(paramab);
      return;
    }
    this.a.a(paramab);
  }

  public void a(ab paramab, Message paramMessage, Runnable paramRunnable, int paramInt)
  {
    ay.a(this.a).d.a = true;
    ay.a(this.a).i.m = paramab.g();
    a();
    this.b = a(paramab, paramInt);
    this.c = paramMessage;
    this.d = paramRunnable;
    this.b.c();
  }

  public void b()
  {
    if (this.c != null)
      this.c.getTarget().sendMessage(this.c);
    if (this.d != null)
      this.d.run();
    c();
    if (ay.a(this.a).d != null)
      ay.a(this.a).d.a = false;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.amap.api.mapcore2d.ay.a
 * JD-Core Version:    0.6.2
 */