package com.google.android.gms.common.internal;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;

public abstract interface bd extends IInterface
{
  public abstract void a(int paramInt, Bundle paramBundle)
    throws RemoteException;

  public abstract void a(int paramInt, IBinder paramIBinder, Bundle paramBundle)
    throws RemoteException;
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.google.android.gms.common.internal.bd
 * JD-Core Version:    0.6.2
 */