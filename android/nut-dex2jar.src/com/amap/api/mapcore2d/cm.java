package com.amap.api.mapcore2d;

import android.os.Handler;
import android.os.Message;

class cm extends Handler
{
  cm(cl paramcl)
  {
  }

  public void handleMessage(Message paramMessage)
  {
    if ((paramMessage == null) || (cl.a(this.a) == null))
      return;
    try
    {
      switch (paramMessage.what)
      {
      case 0:
        cl.a(this.a).d(cl.b(this.a));
        return;
      case 1:
      case 2:
      case 3:
      }
    }
    catch (Throwable paramMessage)
    {
      cz.a(paramMessage, "UiSettingsDelegateImp", "handle_handleMessage");
      return;
    }
    cl.a(this.a).g(cl.c(this.a));
    return;
    cl.a(this.a).f(cl.d(this.a));
    return;
    cl.a(this.a).e(cl.e(this.a));
    return;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.amap.api.mapcore2d.cm
 * JD-Core Version:    0.6.2
 */