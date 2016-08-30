package com.amap.api.services.core;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;

class q$a extends Handler
{
  String a = "handleMessage";

  public q$a(q paramq, Looper paramLooper)
  {
    super(paramLooper);
  }

  public void handleMessage(Message paramMessage)
  {
    if (paramMessage == null)
      return;
    switch (paramMessage.what)
    {
    default:
      return;
    case 3:
    }
    try
    {
      s locals = (s)paramMessage.obj;
      paramMessage = locals;
      if (locals == null)
        paramMessage = new s(false, false);
      av.a(q.a(), h.a(paramMessage.a()));
      q.a = h.a(paramMessage.a());
      return;
    }
    catch (Throwable paramMessage)
    {
      i.a(paramMessage, "ManifestConfig", this.a);
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.amap.api.services.core.q.a
 * JD-Core Version:    0.6.2
 */