package com.loc;

import android.location.Location;
import android.location.LocationListener;
import android.os.Bundle;
import java.text.SimpleDateFormat;

final class cu
  implements LocationListener
{
  cu(ce paramce)
  {
  }

  private static boolean a(Location paramLocation)
  {
    return (paramLocation != null) && ("gps".equalsIgnoreCase(paramLocation.getProvider())) && (paramLocation.getLatitude() > -90.0D) && (paramLocation.getLatitude() < 90.0D) && (paramLocation.getLongitude() > -180.0D) && (paramLocation.getLongitude() < 180.0D);
  }

  public final void onLocationChanged(Location paramLocation)
  {
    try
    {
      long l1 = paramLocation.getTime();
      long l2 = System.currentTimeMillis();
      SimpleDateFormat localSimpleDateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
      localSimpleDateFormat.format(Long.valueOf(l1));
      localSimpleDateFormat.format(Long.valueOf(l2));
      if (l1 <= 0L)
        l1 = l2;
      while (paramLocation != null)
      {
        if (!a(paramLocation))
          return;
        if (paramLocation.getSpeed() > ce.h())
        {
          dc.a(ce.i());
          dc.b(ce.i() * 10);
        }
        while (true)
        {
          ce.b(this.a).a();
          a(paramLocation);
          if ((!ce.b(this.a).a()) || (!a(paramLocation)))
            break;
          paramLocation.setTime(System.currentTimeMillis());
          ce.a(this.a, paramLocation, l1);
          return;
          if (paramLocation.getSpeed() > ce.j())
          {
            dc.a(ce.k());
            dc.b(ce.k() * 10);
          }
          else
          {
            dc.a(ce.l());
            dc.b(ce.l() * 10);
          }
        }
      }
      return;
    }
    catch (Exception paramLocation)
    {
    }
  }

  public final void onProviderDisabled(String paramString)
  {
  }

  public final void onProviderEnabled(String paramString)
  {
  }

  public final void onStatusChanged(String paramString, int paramInt, Bundle paramBundle)
  {
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.loc.cu
 * JD-Core Version:    0.6.2
 */