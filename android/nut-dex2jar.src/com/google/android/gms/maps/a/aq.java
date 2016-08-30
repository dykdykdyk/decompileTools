package com.google.android.gms.maps.a;

import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.dynamic.h;
import com.google.android.gms.maps.GoogleMapOptions;
import com.google.android.gms.maps.StreetViewPanoramaOptions;
import com.google.android.gms.maps.model.a.d;

public abstract interface aq extends IInterface
{
  public abstract a a()
    throws RemoteException;

  public abstract m a(h paramh, GoogleMapOptions paramGoogleMapOptions)
    throws RemoteException;

  public abstract y a(h paramh, StreetViewPanoramaOptions paramStreetViewPanoramaOptions)
    throws RemoteException;

  public abstract void a(h paramh)
    throws RemoteException;

  public abstract void a(h paramh, int paramInt)
    throws RemoteException;

  public abstract j b(h paramh)
    throws RemoteException;

  public abstract d b()
    throws RemoteException;

  public abstract v c(h paramh)
    throws RemoteException;
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.google.android.gms.maps.a.aq
 * JD-Core Version:    0.6.2
 */