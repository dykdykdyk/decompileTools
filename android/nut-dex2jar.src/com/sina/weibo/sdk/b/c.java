package com.sina.weibo.sdk.b;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;

final class c extends Handler
{
  public c(b paramb, Looper paramLooper)
  {
    super(paramLooper);
  }

  public final void handleMessage(Message paramMessage)
  {
    switch (paramMessage.what)
    {
    default:
      return;
    case 1:
      b.a(this.a, (a)paramMessage.obj);
      return;
    case 2:
    }
    b.a(this.a).quit();
    b.b(this.a);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.sina.weibo.sdk.b.c
 * JD-Core Version:    0.6.2
 */