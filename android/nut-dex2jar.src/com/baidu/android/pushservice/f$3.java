package com.baidu.android.pushservice;

import android.content.Context;
import com.baidu.android.pushservice.i.j;
import com.baidu.android.pushservice.i.t;
import com.baidu.android.pushservice.jni.PushSocket;
import com.baidu.android.pushservice.util.m;

class f$3
  implements Runnable
{
  f$3(f paramf)
  {
  }

  public void run()
  {
    com.baidu.android.pushservice.h.b.c("PushConnection", " -- Send Timeout --", f.c(this.a).getApplicationContext());
    if (f.k(this.a))
    {
      f.d(this.a, false);
      f.e(this.a, false);
    }
    f.e(this.a);
    m.a("PushConnection Send Timeout " + f.c(this.a).getPackageName() + " lastSocketError " + PushSocket.getLastSocketError() + " socketfd " + f.a + System.currentTimeMillis(), f.c(this.a).getApplicationContext());
    if (a.b() > 0)
    {
      j localj = new j();
      localj.f = "039911";
      localj.g = System.currentTimeMillis();
      localj.h = com.baidu.android.pushservice.i.a.b.d(f.c(this.a));
      localj.i = f.a;
      t.b(f.c(this.a), localj);
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.baidu.android.pushservice.f.3
 * JD-Core Version:    0.6.2
 */