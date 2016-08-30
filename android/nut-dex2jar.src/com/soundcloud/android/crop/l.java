package com.soundcloud.android.crop;

import android.app.ProgressDialog;
import android.os.Handler;

final class l extends w
  implements Runnable
{
  final v a;
  final ProgressDialog b;
  private final Runnable c;
  private final Handler d;
  private final Runnable e = new m(this);

  public l(v paramv, Runnable paramRunnable, ProgressDialog paramProgressDialog, Handler paramHandler)
  {
    this.a = paramv;
    this.b = paramProgressDialog;
    this.c = paramRunnable;
    this.a.b(this);
    this.d = paramHandler;
  }

  public final void a()
  {
    this.e.run();
    this.d.removeCallbacks(this.e);
  }

  public final void b()
  {
    this.b.hide();
  }

  public final void c()
  {
    this.b.show();
  }

  public final void run()
  {
    try
    {
      this.c.run();
      return;
    }
    finally
    {
      this.d.post(this.e);
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.soundcloud.android.crop.l
 * JD-Core Version:    0.6.2
 */