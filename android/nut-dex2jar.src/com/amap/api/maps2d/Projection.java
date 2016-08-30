package com.amap.api.maps2d;

import android.graphics.Point;
import android.graphics.PointF;
import android.os.RemoteException;
import com.amap.api.mapcore2d.an;
import com.amap.api.mapcore2d.cz;
import com.amap.api.maps2d.model.LatLng;
import com.amap.api.maps2d.model.RuntimeRemoteException;
import com.amap.api.maps2d.model.VisibleRegion;

public class Projection
{
  private final an a;

  Projection(an paraman)
  {
    this.a = paraman;
  }

  public LatLng fromScreenLocation(Point paramPoint)
  {
    try
    {
      paramPoint = this.a.a(paramPoint);
      return paramPoint;
    }
    catch (RemoteException paramPoint)
    {
      cz.a(paramPoint, "Projection", "fromScreenLocation");
    }
    throw new RuntimeRemoteException(paramPoint);
  }

  public VisibleRegion getVisibleRegion()
  {
    try
    {
      VisibleRegion localVisibleRegion = this.a.a();
      return localVisibleRegion;
    }
    catch (RemoteException localRemoteException)
    {
      cz.a(localRemoteException, "Projection", "getVisibleRegion");
      throw new RuntimeRemoteException(localRemoteException);
    }
  }

  public PointF toMapLocation(LatLng paramLatLng)
  {
    try
    {
      paramLatLng = this.a.b(paramLatLng);
      return paramLatLng;
    }
    catch (RemoteException paramLatLng)
    {
      cz.a(paramLatLng, "Projection", "toMapLocation");
    }
    throw new RuntimeRemoteException(paramLatLng);
  }

  public Point toScreenLocation(LatLng paramLatLng)
  {
    try
    {
      paramLatLng = this.a.a(paramLatLng);
      return paramLatLng;
    }
    catch (RemoteException paramLatLng)
    {
      cz.a(paramLatLng, "Projection", "toScreenLocation");
    }
    throw new RuntimeRemoteException(paramLatLng);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.amap.api.maps2d.Projection
 * JD-Core Version:    0.6.2
 */