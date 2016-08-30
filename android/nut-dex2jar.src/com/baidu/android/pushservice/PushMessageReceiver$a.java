package com.baidu.android.pushservice;

import android.content.Context;
import android.os.Handler;
import java.lang.ref.WeakReference;

class PushMessageReceiver$a extends Handler
{
  protected final WeakReference<Context> b;

  public PushMessageReceiver$a(Context paramContext)
  {
    this.b = new WeakReference(paramContext);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.baidu.android.pushservice.PushMessageReceiver.a
 * JD-Core Version:    0.6.2
 */