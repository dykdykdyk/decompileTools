package com.baidu.android.pushservice.g;

import android.os.RemoteException;
import android.util.Log;

public class b
  implements a
{
  private com.baidu.android.pushservice.b.b a;

  public b()
  {
  }

  public b(com.baidu.android.pushservice.b.b paramb)
  {
    this.a = paramb;
  }

  public void a(int paramInt)
  {
  }

  public void a(int paramInt, String paramString)
  {
    try
    {
      this.a.b(paramInt, paramString);
      return;
    }
    catch (Exception paramString)
    {
    }
  }

  public void a(int paramInt, String paramString, boolean paramBoolean)
  {
  }

  public void b(int paramInt)
  {
  }

  public void b(int paramInt, String paramString)
  {
    if (this.a == null)
      return;
    try
    {
      this.a.c(paramInt, paramString);
      return;
    }
    catch (RemoteException paramString)
    {
      Log.w("LightApiListenerForAidl", "onUnbindLightResult error");
      Log.e("LightApiListenerForAidl", "error " + paramString.getMessage());
    }
  }

  public void c(int paramInt)
  {
  }

  public void c(int paramInt, String paramString)
  {
    if (this.a == null)
      return;
    try
    {
      this.a.b(paramInt, paramString);
      return;
    }
    catch (RemoteException paramString)
    {
      Log.w("LightApiListenerForAidl", "onSubscribeResult error");
      Log.e("LightApiListenerForAidl", "error " + paramString.getMessage());
    }
  }

  public void d(int paramInt)
  {
  }

  public void d(int paramInt, String paramString)
  {
    if (this.a == null)
      return;
    try
    {
      this.a.a(paramInt, paramString);
      return;
    }
    catch (RemoteException paramString)
    {
      Log.w("LightApiListenerForAidl", "onUnsubscribeResult error");
      Log.e("LightApiListenerForAidl", "error " + paramString.getMessage());
    }
  }

  public void e(int paramInt)
  {
  }

  public void e(int paramInt, String paramString)
  {
    try
    {
      this.a.b(paramInt, paramString);
      return;
    }
    catch (RemoteException paramString)
    {
      Log.w("LightApiListenerForAidl", "onSubscribeServiceResult error");
      Log.e("LightApiListenerForAidl", "error " + paramString.getMessage());
    }
  }

  public void f(int paramInt, String paramString)
  {
  }

  public void g(int paramInt, String paramString)
  {
  }

  public void h(int paramInt, String paramString)
  {
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.baidu.android.pushservice.g.b
 * JD-Core Version:    0.6.2
 */