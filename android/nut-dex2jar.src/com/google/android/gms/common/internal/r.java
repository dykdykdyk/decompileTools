package com.google.android.gms.common.internal;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import android.util.Log;
import com.google.android.gms.common.ConnectionResult;

public final class r extends j
{
  public final IBinder e;

  public r(i parami, int paramInt, IBinder paramIBinder, Bundle paramBundle)
  {
    super(parami, paramInt, paramBundle);
    this.e = paramIBinder;
  }

  protected final void a(ConnectionResult paramConnectionResult)
  {
    if (i.e(this.f) != null)
      i.e(this.f).a(paramConnectionResult);
    this.f.a(paramConnectionResult);
  }

  protected final boolean a()
  {
    IInterface localIInterface;
    do
    {
      try
      {
        String str1 = this.e.getInterfaceDescriptor();
        if (!this.f.e().equals(str1))
        {
          String str2 = String.valueOf(this.f.e());
          Log.e("GmsClient", String.valueOf(str2).length() + 34 + String.valueOf(str1).length() + "service descriptor mismatch: " + str2 + " vs. " + str1);
          return false;
        }
      }
      catch (RemoteException localRemoteException)
      {
        Log.w("GmsClient", "service probably died");
        return false;
      }
      localIInterface = this.f.a(this.e);
    }
    while ((localIInterface == null) || (!i.a(this.f, 2, 3, localIInterface)));
    i.h();
    if (i.c(this.f) != null)
      i.c(this.f).a();
    return true;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.google.android.gms.common.internal.r
 * JD-Core Version:    0.6.2
 */