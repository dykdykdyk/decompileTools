package com.tencent.connect.b;

import android.app.Activity;

final class c
  implements Runnable
{
  c(b paramb, Activity paramActivity)
  {
  }

  public final void run()
  {
    j localj = new j(this.a, "action_login", this.b.a, this.b.b, a.f(this.b.c));
    if ((this.a != null) && (!this.a.isFinishing()))
      localj.show();
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.tencent.connect.b.c
 * JD-Core Version:    0.6.2
 */