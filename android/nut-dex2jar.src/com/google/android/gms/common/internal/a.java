package com.google.android.gms.common.internal;

import android.accounts.Account;
import android.os.Binder;
import android.os.RemoteException;
import android.util.Log;
import com.google.android.gms.common.o;

public final class a extends ay
{
  int a;

  public static Account a(ax paramax)
  {
    Account localAccount = null;
    long l;
    if (paramax != null)
      l = Binder.clearCallingIdentity();
    try
    {
      localAccount = paramax.a();
      return localAccount;
    }
    catch (RemoteException paramax)
    {
      Log.w("AccountAccessor", "Remote account accessor probably died");
      return null;
    }
    finally
    {
      Binder.restoreCallingIdentity(l);
    }
    throw paramax;
  }

  public final Account a()
  {
    int i = Binder.getCallingUid();
    if (i == this.a)
      return null;
    if (o.zze(null, i))
    {
      this.a = i;
      return null;
    }
    throw new SecurityException("Caller is not GooglePlayServices");
  }

  public final boolean equals(Object paramObject)
  {
    if (this == paramObject)
      return true;
    if (!(paramObject instanceof a))
      return false;
    throw new NullPointerException();
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.google.android.gms.common.internal.a
 * JD-Core Version:    0.6.2
 */