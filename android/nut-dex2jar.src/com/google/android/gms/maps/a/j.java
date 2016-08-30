package com.google.android.gms.maps.a;

import android.os.Bundle;
import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.dynamic.h;
import com.google.android.gms.maps.GoogleMapOptions;

public abstract interface j extends IInterface
{
  public abstract h a(h paramh1, h paramh2, Bundle paramBundle)
    throws RemoteException;

  public abstract d a()
    throws RemoteException;

  public abstract void a(Bundle paramBundle)
    throws RemoteException;

  public abstract void a(h paramh, GoogleMapOptions paramGoogleMapOptions, Bundle paramBundle)
    throws RemoteException;

  public abstract void a(ca paramca)
    throws RemoteException;

  public abstract void b()
    throws RemoteException;

  public abstract void b(Bundle paramBundle)
    throws RemoteException;

  public abstract void c()
    throws RemoteException;

  public abstract void c(Bundle paramBundle)
    throws RemoteException;

  public abstract void d()
    throws RemoteException;

  public abstract void e()
    throws RemoteException;

  public abstract void f()
    throws RemoteException;

  public abstract boolean g()
    throws RemoteException;

  public abstract void h()
    throws RemoteException;
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.google.android.gms.maps.a.j
 * JD-Core Version:    0.6.2
 */