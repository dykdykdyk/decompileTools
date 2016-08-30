package com.google.android.gms.common.internal;

import android.content.Context;
import android.content.ServiceConnection;
import android.os.Handler;
import android.os.Handler.Callback;
import android.os.Message;
import com.google.android.gms.common.a.a;
import java.util.HashMap;
import java.util.Set;

final class as extends ar
  implements Handler.Callback
{
  private final HashMap<at, au> a = new HashMap();
  private final Context b;
  private final Handler c;
  private final a d;
  private final long e;

  as(Context paramContext)
  {
    this.b = paramContext.getApplicationContext();
    this.c = new Handler(paramContext.getMainLooper(), this);
    this.d = a.a();
    this.e = 5000L;
  }

  private boolean a(at paramat, ServiceConnection paramServiceConnection)
  {
    b.a(paramServiceConnection, "ServiceConnection must not be null");
    while (true)
    {
      au localau;
      synchronized (this.a)
      {
        localau = (au)this.a.get(paramat);
        if (localau == null)
        {
          localau = new au(this, paramat);
          localau.a(paramServiceConnection);
          localau.a();
          this.a.put(paramat, localau);
          paramat = localau;
          boolean bool = paramat.d;
          return bool;
        }
        this.c.removeMessages(0, localau);
        if (localau.b(paramServiceConnection))
        {
          paramat = String.valueOf(paramat);
          throw new IllegalStateException(String.valueOf(paramat).length() + 81 + "Trying to bind a GmsServiceConnection that was already connected before.  config=" + paramat);
        }
      }
      localau.a(paramServiceConnection);
      switch (localau.c)
      {
      case 1:
        paramServiceConnection.onServiceConnected(localau.g, localau.e);
        paramat = localau;
        break;
      case 2:
        localau.a();
        paramat = localau;
        break;
      default:
        paramat = localau;
      }
    }
  }

  public final void a(String arg1, String paramString2, ServiceConnection paramServiceConnection)
  {
    paramString2 = new at(???, paramString2);
    b.a(paramServiceConnection, "ServiceConnection must not be null");
    au localau;
    synchronized (this.a)
    {
      localau = (au)this.a.get(paramString2);
      if (localau == null)
      {
        paramString2 = String.valueOf(paramString2);
        throw new IllegalStateException(String.valueOf(paramString2).length() + 50 + "Nonexistent connection status for service config: " + paramString2);
      }
    }
    if (!localau.b(paramServiceConnection))
    {
      paramString2 = String.valueOf(paramString2);
      throw new IllegalStateException(String.valueOf(paramString2).length() + 76 + "Trying to unbind a GmsServiceConnection  that was not bound before.  config=" + paramString2);
    }
    a.a(paramServiceConnection);
    localau.b.remove(paramServiceConnection);
    if (localau.b())
    {
      paramString2 = this.c.obtainMessage(0, localau);
      this.c.sendMessageDelayed(paramString2, this.e);
    }
  }

  public final boolean a(String paramString1, String paramString2, ServiceConnection paramServiceConnection, String paramString3)
  {
    return a(new at(paramString1, paramString2), paramServiceConnection);
  }

  public final boolean handleMessage(Message arg1)
  {
    switch (???.what)
    {
    default:
      return false;
    case 0:
    }
    au localau = (au)???.obj;
    synchronized (this.a)
    {
      if (localau.b())
      {
        if (localau.d)
        {
          a.a(localau.h.b, localau.a);
          localau.d = false;
          localau.c = 2;
        }
        this.a.remove(localau.f);
      }
      return true;
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.google.android.gms.common.internal.as
 * JD-Core Version:    0.6.2
 */