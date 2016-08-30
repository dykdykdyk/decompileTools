package com.tencent.open.utils;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import com.tencent.open.a.h;

final class d extends Handler
{
  d(c paramc, Looper paramLooper)
  {
    super(paramLooper);
  }

  public final void handleMessage(Message paramMessage)
  {
    h.a("AsynLoadImg", "handleMessage:" + paramMessage.arg1);
    if (paramMessage.arg1 == 0)
    {
      this.a.b.a(paramMessage.arg1, (String)paramMessage.obj);
      return;
    }
    this.a.b.a(paramMessage.arg1, null);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.tencent.open.utils.d
 * JD-Core Version:    0.6.2
 */