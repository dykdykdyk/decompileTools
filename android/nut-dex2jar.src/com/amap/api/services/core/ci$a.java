package com.amap.api.services.core;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;

class ci$a extends Handler
{
  public ci$a()
  {
  }

  private ci$a(Looper paramLooper)
  {
    super(paramLooper);
  }

  public void handleMessage(Message paramMessage)
  {
    try
    {
      switch (paramMessage.what)
      {
      case 0:
        ((cn)paramMessage.obj).b.a();
        return;
      case 1:
      }
    }
    catch (Throwable paramMessage)
    {
      paramMessage.printStackTrace();
      return;
    }
    paramMessage = (cn)paramMessage.obj;
    paramMessage.b.a(paramMessage.a);
    return;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.amap.api.services.core.ci.a
 * JD-Core Version:    0.6.2
 */