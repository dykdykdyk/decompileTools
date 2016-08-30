package com.baidu.android.pushservice;

import android.content.Context;
import android.os.Handler;
import com.baidu.android.pushservice.h.b;
import com.baidu.android.pushservice.i.t;
import com.baidu.android.pushservice.jni.PushSocket;
import com.baidu.android.pushservice.message.d;
import com.baidu.android.pushservice.message.e;
import com.baidu.android.pushservice.util.m;

class f$a extends Thread
{
  f$a(f paramf)
  {
    setName("PushService-PushConnection-readThread");
  }

  public void run()
  {
    while (!f.l(this.a))
      try
      {
        localObject = PushSocket.a(f.c(this.a), f.a);
        this.a.b.removeCallbacks(f.m(this.a));
        if (f.k(this.a))
        {
          f.d(this.a, false);
          f.e(this.a, true);
        }
        if ((localObject == null) || (localObject.length == 0))
        {
          int i = PushSocket.getLastSocketError();
          b.a("PushConnection", "Receive err,errno:" + i, f.c(this.a).getApplicationContext());
          f.a(this.a, "039913", i);
          f.e(this.a);
          m.a("PushConnection Receive err " + f.c(this.a).getPackageName() + " lastSocketError " + i + " socketfd " + f.a + System.currentTimeMillis(), f.c(this.a).getApplicationContext());
        }
      }
      catch (Exception localException3)
      {
        Object localObject;
        while (true)
        {
          localObject = null;
          if (a.b() > 0)
            t.a(f.c(this.a), "039908", PushSocket.getLastSocketError(), m.a(localException3));
          b.b("PushConnection", "Get message exception", f.c(this.a).getApplicationContext());
        }
        try
        {
          localObject = this.a.c.a((byte[])localObject, localObject.length);
          if (localObject != null);
          try
          {
            com.baidu.android.pushservice.h.a.c("PushConnection", "ReadThread receive msg :" + ((e)localObject).toString());
            this.a.c.b((e)localObject);
            f.b(this.a, 0);
          }
          catch (Exception localException1)
          {
            b.b("PushConnection", "Handle message exception " + m.a(localException1), f.c(this.a).getApplicationContext());
            m.a("PushConnection Handle message exception " + f.c(this.a).getPackageName() + m.a(localException1) + " lastSocketError " + PushSocket.getLastSocketError() + " socketfd " + f.a + System.currentTimeMillis(), f.c(this.a).getApplicationContext());
            if (a.b() > 0)
              t.a(f.c(this.a), "039910", PushSocket.getLastSocketError(), m.a(localException1));
            f.e(this.a);
          }
        }
        catch (Exception localException2)
        {
          b.c("PushConnection", "Read message exception " + m.a(localException2), f.c(this.a).getApplicationContext());
          if (a.b() > 0)
            t.a(f.c(this.a), "039909", PushSocket.getLastSocketError(), m.a(localException2));
          f.e(this.a);
          m.a("PushConnection Read message exception " + f.c(this.a).getPackageName() + m.a(localException2) + " lastSocketError " + PushSocket.getLastSocketError() + " socketfd " + f.a + System.currentTimeMillis(), f.c(this.a).getApplicationContext());
        }
      }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.baidu.android.pushservice.f.a
 * JD-Core Version:    0.6.2
 */