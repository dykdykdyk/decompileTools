package com.amap.api.mapcore2d;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;

class fa$a extends Handler
{
  public fa$a()
  {
  }

  private fa$a(Looper paramLooper)
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
        ((ff)paramMessage.obj).b.a();
        return;
      case 1:
      }
    }
    catch (Throwable paramMessage)
    {
      paramMessage.printStackTrace();
      return;
    }
    paramMessage = (ff)paramMessage.obj;
    paramMessage.b.a(paramMessage.a);
    return;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.amap.api.mapcore2d.fa.a
 * JD-Core Version:    0.6.2
 */