package com.baidu.android.pushservice;

import com.baidu.android.pushservice.util.m;

class PushService$1
  implements Runnable
{
  PushService$1(PushService paramPushService)
  {
  }

  public void run()
  {
    int j = 1;
    this.a.stopSelf();
    g.b();
    int i;
    if (PushService.a(this.a) > 0)
    {
      i = 1;
      if (this.a.getPackageName().equals(m.v(this.a.getApplicationContext())))
        break label66;
    }
    while (true)
    {
      if ((i & j) != 0)
        this.a.onDestroy();
      return;
      i = 0;
      break;
      label66: j = 0;
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.baidu.android.pushservice.PushService.1
 * JD-Core Version:    0.6.2
 */