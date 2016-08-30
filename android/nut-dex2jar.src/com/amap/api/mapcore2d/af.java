package com.amap.api.mapcore2d;

import android.os.RemoteException;
import com.amap.api.maps2d.model.BitmapDescriptor;
import com.amap.api.maps2d.model.LatLng;
import com.amap.api.maps2d.model.LatLngBounds;

public abstract interface af extends aj
{
  public abstract void a(float paramFloat1, float paramFloat2)
    throws RemoteException;

  public abstract void a(BitmapDescriptor paramBitmapDescriptor)
    throws RemoteException;

  public abstract void a(LatLng paramLatLng)
    throws RemoteException;

  public abstract void a(LatLngBounds paramLatLngBounds)
    throws RemoteException;

  public abstract void b(float paramFloat)
    throws RemoteException;

  public abstract void c(float paramFloat)
    throws RemoteException;

  public abstract void d(float paramFloat)
    throws RemoteException;

  public abstract LatLng h()
    throws RemoteException;

  public abstract float i()
    throws RemoteException;

  public abstract float j()
    throws RemoteException;

  public abstract LatLngBounds k()
    throws RemoteException;

  public abstract float m()
    throws RemoteException;

  public abstract float n()
    throws RemoteException;
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.amap.api.mapcore2d.af
 * JD-Core Version:    0.6.2
 */