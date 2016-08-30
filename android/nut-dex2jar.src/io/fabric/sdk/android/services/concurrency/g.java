package io.fabric.sdk.android.services.concurrency;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;

final class g extends Handler
{
  public g()
  {
    super(Looper.getMainLooper());
  }

  public final void handleMessage(Message paramMessage)
  {
    f localf = (f)paramMessage.obj;
    switch (paramMessage.what)
    {
    default:
      return;
    case 1:
      a.b(localf.a);
      return;
    case 2:
    }
    a.g_();
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     io.fabric.sdk.android.services.concurrency.g
 * JD-Core Version:    0.6.2
 */