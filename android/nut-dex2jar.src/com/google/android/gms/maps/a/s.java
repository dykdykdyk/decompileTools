package com.google.android.gms.maps.a;

import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.dynamic.h;
import com.google.android.gms.maps.model.LatLng;
import com.google.android.gms.maps.model.StreetViewPanoramaCamera;
import com.google.android.gms.maps.model.StreetViewPanoramaLocation;
import com.google.android.gms.maps.model.StreetViewPanoramaOrientation;

public abstract interface s extends IInterface
{
  public abstract h a(StreetViewPanoramaOrientation paramStreetViewPanoramaOrientation)
    throws RemoteException;

  public abstract StreetViewPanoramaOrientation a(h paramh)
    throws RemoteException;

  public abstract void a(cy paramcy)
    throws RemoteException;

  public abstract void a(db paramdb)
    throws RemoteException;

  public abstract void a(de paramde)
    throws RemoteException;

  public abstract void a(dh paramdh)
    throws RemoteException;

  public abstract void a(LatLng paramLatLng)
    throws RemoteException;

  public abstract void a(LatLng paramLatLng, int paramInt)
    throws RemoteException;

  public abstract void a(StreetViewPanoramaCamera paramStreetViewPanoramaCamera, long paramLong)
    throws RemoteException;

  public abstract void a(String paramString)
    throws RemoteException;

  public abstract void a(boolean paramBoolean)
    throws RemoteException;

  public abstract boolean a()
    throws RemoteException;

  public abstract void b(boolean paramBoolean)
    throws RemoteException;

  public abstract boolean b()
    throws RemoteException;

  public abstract void c(boolean paramBoolean)
    throws RemoteException;

  public abstract boolean c()
    throws RemoteException;

  public abstract void d(boolean paramBoolean)
    throws RemoteException;

  public abstract boolean d()
    throws RemoteException;

  public abstract StreetViewPanoramaCamera e()
    throws RemoteException;

  public abstract StreetViewPanoramaLocation f()
    throws RemoteException;
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.google.android.gms.maps.a.s
 * JD-Core Version:    0.6.2
 */