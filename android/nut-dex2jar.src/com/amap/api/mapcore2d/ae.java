package com.amap.api.mapcore2d;

import android.os.RemoteException;
import com.amap.api.maps2d.model.LatLng;

public abstract interface ae extends aj
{
  public abstract void a(double paramDouble)
    throws RemoteException;

  public abstract void a(int paramInt)
    throws RemoteException;

  public abstract void a(LatLng paramLatLng)
    throws RemoteException;

  public abstract void b(float paramFloat)
    throws RemoteException;

  public abstract void b(int paramInt)
    throws RemoteException;

  public abstract boolean b(LatLng paramLatLng)
    throws RemoteException;

  public abstract LatLng g()
    throws RemoteException;

  public abstract double h()
    throws RemoteException;

  public abstract float i()
    throws RemoteException;

  public abstract int j()
    throws RemoteException;

  public abstract int k()
    throws RemoteException;
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.amap.api.mapcore2d.ae
 * JD-Core Version:    0.6.2
 */