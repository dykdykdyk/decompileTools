package com.loc;

import android.content.Context;
import android.location.LocationListener;
import android.location.LocationManager;
import android.os.Handler;
import com.amap.api.location.AMapLocationClientOption;

public final class dr
{
  Handler a;
  Context b;
  LocationManager c;
  AMapLocationClientOption d;
  long e = 1000L;
  long f = 0L;
  LocationListener g = new ds(this);

  public dr(Context paramContext, e parame)
  {
    this.b = paramContext;
    this.a = parame;
    this.c = ((LocationManager)this.b.getSystemService("location"));
  }

  public final void a()
  {
    if (this.c == null);
    while (this.g == null)
      return;
    this.c.removeUpdates(this.g);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.loc.dr
 * JD-Core Version:    0.6.2
 */