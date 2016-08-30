package com.sina.weibo.sdk.d;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import java.lang.ref.WeakReference;

final class g extends Handler
{
  private WeakReference<f> a;

  public g(Looper paramLooper)
  {
    super(paramLooper);
  }

  public final void handleMessage(Message paramMessage)
  {
    Object localObject = (f)this.a.get();
    switch (paramMessage.what)
    {
    default:
    case 1001:
    case 1002:
    }
    do
    {
      do
        return;
      while (localObject == null);
      paramMessage = (e)paramMessage.obj;
      localObject = new e();
      ((e)localObject).a = paramMessage.a;
      ((e)localObject).b = paramMessage.b;
      return;
    }
    while (localObject == null);
    paramMessage = paramMessage.obj;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.sina.weibo.sdk.d.g
 * JD-Core Version:    0.6.2
 */