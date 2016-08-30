package com.nut.blehunter;

import android.location.Location;
import android.location.LocationListener;
import android.os.Bundle;
import android.text.TextUtils;
import b.a.a;
import com.nut.blehunter.d.k;
import com.nut.blehunter.entity.Position;
import java.util.Date;

final class p
  implements LocationListener
{
  p(o paramo)
  {
  }

  public final void onLocationChanged(Location paramLocation)
  {
    paramLocation.getLatitude();
    paramLocation.getLongitude();
    paramLocation.getAccuracy();
    paramLocation.getProvider();
    this.a.d();
    if ((!TextUtils.isEmpty(o.a(this.a))) && (o.a(this.a).equals("network")) && (paramLocation.getAccuracy() > 50.0F))
    {
      Position localPosition = new Position(new Date().getTime() / 1000L, paramLocation.getLatitude(), paramLocation.getLongitude());
      localPosition.f = paramLocation.getAccuracy();
      k.a(o.b(this.a), "save_latest_location", localPosition.a());
      o.c(this.a);
      return;
    }
    o.a(this.a, paramLocation.getLatitude(), paramLocation.getLongitude(), paramLocation.getAccuracy());
  }

  public final void onProviderDisabled(String paramString)
  {
  }

  public final void onProviderEnabled(String paramString)
  {
  }

  public final void onStatusChanged(String paramString, int paramInt, Bundle paramBundle)
  {
    switch (paramInt)
    {
    default:
      return;
    case 2:
      a.a("Network location available again", new Object[0]);
      return;
    case 0:
      a.a("Network location out of service", new Object[0]);
      return;
    case 1:
    }
    a.a("Network location temporarily unavailable", new Object[0]);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.nut.blehunter.p
 * JD-Core Version:    0.6.2
 */