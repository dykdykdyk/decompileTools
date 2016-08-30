package com.amap.api.mapcore2d;

import android.graphics.Point;
import android.graphics.PointF;
import android.os.RemoteException;
import com.amap.api.maps2d.model.LatLng;
import com.amap.api.maps2d.model.VisibleRegion;

public abstract interface an
{
  public abstract Point a(LatLng paramLatLng)
    throws RemoteException;

  public abstract LatLng a(Point paramPoint)
    throws RemoteException;

  public abstract VisibleRegion a()
    throws RemoteException;

  public abstract PointF b(LatLng paramLatLng)
    throws RemoteException;
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.amap.api.mapcore2d.an
 * JD-Core Version:    0.6.2
 */