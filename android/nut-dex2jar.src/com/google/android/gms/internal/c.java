package com.google.android.gms.internal;

import android.os.IInterface;
import android.os.RemoteException;

public abstract interface c extends IInterface
{
  public abstract String a()
    throws RemoteException;

  public abstract String a(String paramString)
    throws RemoteException;

  public abstract void a(String paramString, boolean paramBoolean)
    throws RemoteException;

  public abstract boolean a(boolean paramBoolean)
    throws RemoteException;
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.google.android.gms.internal.c
 * JD-Core Version:    0.6.2
 */