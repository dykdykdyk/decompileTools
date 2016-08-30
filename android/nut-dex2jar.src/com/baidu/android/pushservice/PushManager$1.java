package com.baidu.android.pushservice;

import android.content.Context;

final class PushManager$1
  implements Runnable
{
  PushManager$1(int paramInt, Context paramContext, String paramString)
  {
  }

  public final void run()
  {
    if (this.a == 4)
    {
      PushManager.access$000(this.b, 0, this.c);
      return;
    }
    if (this.a == 3)
    {
      PushManager.access$100(this.b, 0, this.c);
      return;
    }
    PushManager.bind(this.b, 0);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.baidu.android.pushservice.PushManager.1
 * JD-Core Version:    0.6.2
 */