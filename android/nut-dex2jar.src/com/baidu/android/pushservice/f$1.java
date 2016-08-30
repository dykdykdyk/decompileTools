package com.baidu.android.pushservice;

import android.content.Context;
import android.text.TextUtils;
import com.baidu.android.pushservice.i.j;
import com.baidu.android.pushservice.i.t;
import com.baidu.android.pushservice.jni.PushSocket;
import com.baidu.android.pushservice.message.d;
import com.baidu.android.pushservice.util.m;

class f$1
  implements Runnable
{
  f$1(f paramf)
  {
  }

  public void run()
  {
    f.a = PushSocket.createSocket(f.a(this.a), f.b(this.a));
    Object localObject;
    int i;
    if (a.b() > 0)
    {
      localObject = new j();
      ((j)localObject).f = "039907";
      ((j)localObject).g = System.currentTimeMillis();
      ((j)localObject).h = com.baidu.android.pushservice.i.a.b.d(f.c(this.a));
      if (f.a >= 0)
      {
        ((j)localObject).i = 0;
        t.b(f.c(this.a), (j)localObject);
      }
    }
    else
    {
      if ((f.a != -1) && (f.a != -2))
        break label350;
      i = PushSocket.getLastSocketError();
      com.baidu.android.pushservice.h.b.b("PushConnection", "Create socket err, errno: " + i + "socketfd: " + f.a, f.c(this.a).getApplicationContext());
      if (!h.b().equals(f.a(this.a)))
        break label335;
      f.a(this.a, "030301", i);
    }
    while (true)
    {
      if (f.a == -2)
      {
        localObject = h.a(f.c(this.a), f.d(this.a));
        f.a(this.a, false);
        if (!TextUtils.isEmpty((CharSequence)localObject))
          f.a(this.a, (String)localObject);
      }
      if ((f.a == -1) && (i == 110))
        f.a(this.a, 80);
      f.a(Boolean.valueOf(false));
      f.e(this.a);
      m.a("PushConnection Create socket err " + f.c(this.a).getPackageName() + " lastSocketError " + i + " socketfd " + f.a + System.currentTimeMillis(), f.c(this.a).getApplicationContext());
      return;
      ((j)localObject).i = f.a;
      break;
      label335: f.a(this.a, "030303", 10002);
    }
    label350: com.baidu.android.pushservice.h.b.a("PushConnection", "create Socket ok", f.c(this.a).getApplicationContext());
    m.a("create Socket ok socketfd" + f.a, f.c(this.a));
    this.a.c = new com.baidu.android.pushservice.message.f(f.c(this.a).getApplicationContext());
    f.b(this.a, true);
    if (f.f(this.a) != null)
      f.f(this.a).interrupt();
    if (f.g(this.a) != null)
      f.g(this.a).interrupt();
    f.c(this.a, false);
    f.a(this.a, new f.a(this.a));
    f.f(this.a).start();
    f.a(this.a, new f.b(this.a));
    f.g(this.a).start();
    this.a.c.a(f.a);
    if (!h.b().equals(f.a(this.a)))
      f.a(this.a, "030302", 0);
    f.a(Boolean.valueOf(false));
    f.a(this.a, true);
    f.a(this.a, h.b());
    h.b(f.c(this.a));
    g.a(f.c(this.a)).a(f.h(this.a)[f.i(this.a)]);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.baidu.android.pushservice.f.1
 * JD-Core Version:    0.6.2
 */