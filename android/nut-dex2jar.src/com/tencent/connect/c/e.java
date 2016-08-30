package com.tencent.connect.c;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import com.tencent.open.utils.f;

public final class e extends Handler
{
  public e(Looper paramLooper, f paramf)
  {
    super(paramLooper);
  }

  public final void handleMessage(Message paramMessage)
  {
    switch (paramMessage.what)
    {
    default:
      super.handleMessage(paramMessage);
      return;
    case 101:
      paramMessage = (String)paramMessage.obj;
      this.a.a(0, paramMessage);
      return;
    case 102:
    }
    int i = paramMessage.arg1;
    this.a.a(i, null);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.tencent.connect.c.e
 * JD-Core Version:    0.6.2
 */