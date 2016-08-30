package com.nut.blehunter.ui.b;

import com.amap.api.services.core.LatLonPoint;
import com.amap.api.services.geocoder.GeocodeAddress;
import com.amap.api.services.geocoder.GeocodeResult;
import com.amap.api.services.geocoder.GeocodeSearch.OnGeocodeSearchListener;
import com.amap.api.services.geocoder.RegeocodeAddress;
import com.amap.api.services.geocoder.RegeocodeResult;
import com.nut.blehunter.entity.b;
import java.util.List;

final class c
  implements GeocodeSearch.OnGeocodeSearchListener
{
  c(a parama, LatLonPoint paramLatLonPoint)
  {
  }

  public final void onGeocodeSearched(GeocodeResult paramGeocodeResult, int paramInt)
  {
    if (paramInt == 1000)
    {
      if ((paramGeocodeResult != null) && (paramGeocodeResult.getGeocodeAddressList() != null) && (paramGeocodeResult.getGeocodeAddressList().size() > 0))
      {
        paramGeocodeResult = (GeocodeAddress)paramGeocodeResult.getGeocodeAddressList().get(0);
        b.a.a.a("经纬度:%s<%s>", new Object[] { paramGeocodeResult.getLatLonPoint(), paramGeocodeResult.getFormatAddress() });
        return;
      }
      b.a.a.d("result is null.", new Object[0]);
      return;
    }
    a.a(this.b, "onGeocodeSearched", paramInt);
  }

  public final void onRegeocodeSearched(RegeocodeResult paramRegeocodeResult, int paramInt)
  {
    Object localObject = null;
    if (paramInt == 1000);
    try
    {
      for (paramRegeocodeResult = paramRegeocodeResult.getRegeocodeAddress().getFormatAddress(); ; paramRegeocodeResult = localObject)
      {
        if (this.b.k != null)
        {
          new b(this.a.getLatitude(), this.a.getLongitude(), (byte)0);
          this.b.k.b(paramRegeocodeResult);
        }
        return;
        a.a(this.b, "onReGeocodeSearched", paramInt);
      }
    }
    catch (Exception paramRegeocodeResult)
    {
      while (true)
        paramRegeocodeResult = localObject;
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.nut.blehunter.ui.b.c
 * JD-Core Version:    0.6.2
 */