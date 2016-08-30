package com.amap.api.services.geocoder;

import android.content.Context;
import android.os.Handler;
import com.amap.api.services.core.AMapException;
import com.amap.api.services.core.ab;
import com.amap.api.services.core.l;
import com.amap.api.services.core.q;
import com.amap.api.services.core.t;
import java.util.List;

public final class GeocodeSearch
{
  public static final String AMAP = "autonavi";
  public static final String GPS = "gps";
  private Context a;
  private GeocodeSearch.OnGeocodeSearchListener b;
  private Handler c;

  public GeocodeSearch(Context paramContext)
  {
    this.a = paramContext.getApplicationContext();
    this.c = t.a();
  }

  public final RegeocodeAddress getFromLocation(RegeocodeQuery paramRegeocodeQuery)
    throws AMapException
  {
    q.a(this.a);
    return (RegeocodeAddress)new ab(this.a, paramRegeocodeQuery).a();
  }

  public final void getFromLocationAsyn(RegeocodeQuery paramRegeocodeQuery)
  {
    new Thread(new GeocodeSearch.1(this, paramRegeocodeQuery)).start();
  }

  public final List<GeocodeAddress> getFromLocationName(GeocodeQuery paramGeocodeQuery)
    throws AMapException
  {
    q.a(this.a);
    return (List)new l(this.a, paramGeocodeQuery).a();
  }

  public final void getFromLocationNameAsyn(GeocodeQuery paramGeocodeQuery)
  {
    new Thread(new GeocodeSearch.2(this, paramGeocodeQuery)).start();
  }

  public final void setOnGeocodeSearchListener(GeocodeSearch.OnGeocodeSearchListener paramOnGeocodeSearchListener)
  {
    this.b = paramOnGeocodeSearchListener;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.amap.api.services.geocoder.GeocodeSearch
 * JD-Core Version:    0.6.2
 */