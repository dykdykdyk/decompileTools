package com.amap.api.mapcore2d;

import android.os.RemoteException;
import com.amap.api.maps2d.model.LatLng;
import java.util.List;

public abstract interface al extends aj
{
  public abstract void a(int paramInt)
    throws RemoteException;

  public abstract void a(List<LatLng> paramList)
    throws RemoteException;

  public abstract boolean a(LatLng paramLatLng)
    throws RemoteException;

  public abstract void b(float paramFloat)
    throws RemoteException;

  public abstract void b(int paramInt)
    throws RemoteException;

  public abstract float g()
    throws RemoteException;

  public abstract int h()
    throws RemoteException;

  public abstract List<LatLng> i()
    throws RemoteException;

  public abstract int j()
    throws RemoteException;
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.amap.api.mapcore2d.al
 * JD-Core Version:    0.6.2
 */