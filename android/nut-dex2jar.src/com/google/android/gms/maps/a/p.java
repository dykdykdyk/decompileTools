package com.google.android.gms.maps.a;

import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.dynamic.h;
import com.google.android.gms.maps.model.LatLng;
import com.google.android.gms.maps.model.VisibleRegion;

public abstract interface p extends IInterface
{
  public abstract h a(LatLng paramLatLng)
    throws RemoteException;

  public abstract LatLng a(h paramh)
    throws RemoteException;

  public abstract VisibleRegion a()
    throws RemoteException;
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.google.android.gms.maps.a.p
 * JD-Core Version:    0.6.2
 */