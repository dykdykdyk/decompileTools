package com.loc;

import android.location.Location;
import android.location.LocationListener;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import com.amap.api.location.AMapLocation;
import com.amap.api.location.AMapLocationClientOption;
import com.amap.api.location.DPoint;

final class ds
  implements LocationListener
{
  ds(dr paramdr)
  {
  }

  public final void onLocationChanged(Location paramLocation)
  {
    if (paramLocation == null);
    while (true)
    {
      return;
      try
      {
        Object localObject = paramLocation.getExtras();
        if (localObject != null);
        for (int i = ((Bundle)localObject).getInt("satellites"); (i > 0) || (this.a.d.isMockEnable()); i = 0)
        {
          if (this.a.a != null)
            this.a.a.sendEmptyMessage(5);
          if (by.b() - this.a.f <= this.a.e)
            break;
          if ((dp.a(paramLocation.getLatitude(), paramLocation.getLongitude())) && (this.a.d.isOffset()))
          {
            localObject = new AMapLocation(paramLocation);
            ((AMapLocation)localObject).setLocationType(1);
            paramLocation = du.a(this.a.b, paramLocation.getLongitude(), paramLocation.getLatitude());
            ((AMapLocation)localObject).setLatitude(paramLocation.getLatitude());
            ((AMapLocation)localObject).setLongitude(paramLocation.getLongitude());
          }
          for (paramLocation = (Location)localObject; ; paramLocation = (Location)localObject)
          {
            paramLocation.setSatellites(i);
            localObject = new Message();
            ((Message)localObject).obj = paramLocation;
            ((Message)localObject).what = 2;
            if (this.a.a != null)
              this.a.a.sendMessage((Message)localObject);
            this.a.f = by.b();
            return;
            localObject = new AMapLocation(paramLocation);
            ((AMapLocation)localObject).setLatitude(paramLocation.getLatitude());
            ((AMapLocation)localObject).setLongitude(paramLocation.getLongitude());
            ((AMapLocation)localObject).setLocationType(1);
          }
        }
      }
      catch (Throwable paramLocation)
      {
      }
    }
  }

  public final void onProviderDisabled(String paramString)
  {
    try
    {
      if ("gps".equals(paramString))
        this.a.a.sendEmptyMessage(3);
      return;
    }
    catch (Throwable paramString)
    {
    }
  }

  public final void onProviderEnabled(String paramString)
  {
  }

  public final void onStatusChanged(String paramString, int paramInt, Bundle paramBundle)
  {
    if ((paramInt == 0) || (paramInt == 1));
    try
    {
      this.a.a.sendEmptyMessage(3);
      return;
    }
    catch (Throwable paramString)
    {
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.loc.ds
 * JD-Core Version:    0.6.2
 */