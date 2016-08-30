package com.google.android.gms.common.internal;

import android.app.PendingIntent;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import com.google.android.gms.common.ConnectionResult;
import java.util.concurrent.atomic.AtomicInteger;

final class m extends Handler
{
  public m(i parami, Looper paramLooper)
  {
    super(paramLooper);
  }

  private static void a(Message paramMessage)
  {
    ((n)paramMessage.obj).c();
  }

  private static boolean b(Message paramMessage)
  {
    return (paramMessage.what == 2) || (paramMessage.what == 1) || (paramMessage.what == 5);
  }

  public final void handleMessage(Message paramMessage)
  {
    Object localObject = null;
    if (this.a.f.get() != paramMessage.arg1)
    {
      if (b(paramMessage))
        a(paramMessage);
      return;
    }
    if (((paramMessage.what == 1) || (paramMessage.what == 5)) && (!this.a.c()))
    {
      a(paramMessage);
      return;
    }
    if (paramMessage.what == 3)
    {
      if ((paramMessage.obj instanceof PendingIntent))
        localObject = (PendingIntent)paramMessage.obj;
      paramMessage = new ConnectionResult(paramMessage.arg2, (PendingIntent)localObject);
      i.b(this.a).a(paramMessage);
      this.a.a(paramMessage);
      return;
    }
    if (paramMessage.what == 4)
    {
      i.a(this.a, 4);
      if (i.c(this.a) != null)
      {
        localObject = i.c(this.a);
        i = paramMessage.arg2;
        ((k)localObject).b();
      }
      localObject = this.a;
      ((i)localObject).b = paramMessage.arg2;
      ((i)localObject).c = System.currentTimeMillis();
      i.a(this.a, 4, 1, null);
      return;
    }
    if ((paramMessage.what == 2) && (!this.a.b()))
    {
      a(paramMessage);
      return;
    }
    if (b(paramMessage))
    {
      ((n)paramMessage.obj).b();
      return;
    }
    int i = paramMessage.what;
    Log.wtf("GmsClient", 45 + "Don't know how to handle message: " + i, new Exception());
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.google.android.gms.common.internal.m
 * JD-Core Version:    0.6.2
 */