package android.support.v4.b;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;

final class k extends Handler
{
  k(j paramj, Looper paramLooper)
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
    case 1:
    }
    j.a(this.a);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     android.support.v4.b.k
 * JD-Core Version:    0.6.2
 */