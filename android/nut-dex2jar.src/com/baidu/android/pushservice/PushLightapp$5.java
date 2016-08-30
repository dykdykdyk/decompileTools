package com.baidu.android.pushservice;

import android.os.RemoteException;
import com.baidu.android.pushservice.b.b.a;

class PushLightapp$5 extends b.a
{
  PushLightapp$5(PushLightapp paramPushLightapp, IPushLightappListener paramIPushLightappListener)
  {
  }

  public void a(int paramInt, String paramString)
    throws RemoteException
  {
    if (this.a != null)
      this.a.onUnsubscribeResult(paramInt, paramString);
  }

  public void b(int paramInt, String paramString)
    throws RemoteException
  {
  }

  public void c(int paramInt, String paramString)
    throws RemoteException
  {
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.baidu.android.pushservice.PushLightapp.5
 * JD-Core Version:    0.6.2
 */