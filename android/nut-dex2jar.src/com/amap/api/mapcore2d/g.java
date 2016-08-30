package com.amap.api.mapcore2d;

import android.location.Location;
import android.os.RemoteException;
import com.amap.api.maps2d.LocationSource.OnLocationChangedListener;

class g
  implements LocationSource.OnLocationChangedListener
{
  Location a;
  private ad b;

  g(ad paramad)
  {
    this.b = paramad;
  }

  public void onLocationChanged(Location paramLocation)
  {
    this.a = paramLocation;
    try
    {
      if (this.b.m())
        this.b.a(paramLocation);
      return;
    }
    catch (RemoteException paramLocation)
    {
      cz.a(paramLocation, "AMapOnLocationChangedListener", "onLocationChanged");
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.amap.api.mapcore2d.g
 * JD-Core Version:    0.6.2
 */