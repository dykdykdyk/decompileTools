package com.nut.blehunter.b;

import android.content.Context;
import android.location.Address;
import android.location.Geocoder;
import com.amap.api.services.core.LatLonPoint;
import com.amap.api.services.geocoder.GeocodeSearch;
import com.amap.api.services.geocoder.RegeocodeQuery;
import com.nut.blehunter.d.g;
import java.util.List;
import java.util.Locale;

public final class b
{
  public b(Context paramContext, double paramDouble1, double paramDouble2, e parame)
  {
    if (g.b(paramContext))
      if ((paramDouble2 <= 72.004000000000005D) || (paramDouble2 >= 137.8347D) || (paramDouble1 <= 0.8293D) || (paramDouble1 >= 55.827100000000002D) || (!com.bingerz.android.a.a.a(paramContext, paramDouble1, paramDouble2)))
        break label123;
    while (i != 0)
    {
      RegeocodeQuery localRegeocodeQuery = new RegeocodeQuery(new LatLonPoint(paramDouble1, paramDouble2), 200.0F, "gps");
      GeocodeSearch localGeocodeSearch = new GeocodeSearch(paramContext);
      localGeocodeSearch.getFromLocationAsyn(localRegeocodeQuery);
      localGeocodeSearch.setOnGeocodeSearchListener(new c(this, parame, paramContext, paramDouble1, paramDouble2));
      return;
      label123: i = 0;
    }
    try
    {
      paramContext = (Address)new Geocoder(paramContext, Locale.getDefault()).getFromLocation(paramDouble1, paramDouble2, 1).get(0);
      parame.a(new a(paramDouble1, paramDouble2, paramContext), 0);
      b.a.a.a("reGeocodeAddress result:" + paramContext, new Object[0]);
      return;
    }
    catch (Exception paramContext)
    {
      paramContext.printStackTrace();
      parame.a(null, -1);
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.nut.blehunter.b.b
 * JD-Core Version:    0.6.2
 */