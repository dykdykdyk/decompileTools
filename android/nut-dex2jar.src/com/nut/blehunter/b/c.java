package com.nut.blehunter.b;

import android.content.Context;
import com.amap.api.services.geocoder.GeocodeResult;
import com.amap.api.services.geocoder.GeocodeSearch.OnGeocodeSearchListener;
import com.amap.api.services.geocoder.RegeocodeResult;

final class c
  implements GeocodeSearch.OnGeocodeSearchListener
{
  c(b paramb, e parame, Context paramContext, double paramDouble1, double paramDouble2)
  {
  }

  public final void onGeocodeSearched(GeocodeResult paramGeocodeResult, int paramInt)
  {
  }

  public final void onRegeocodeSearched(RegeocodeResult paramRegeocodeResult, int paramInt)
  {
    if (this.a == null)
      return;
    if (paramInt != 1000)
    {
      b.a.a.d("MixReGeocodeAddress rCode:" + paramInt, new Object[0]);
      this.a.a(null, -1);
      return;
    }
    try
    {
      paramRegeocodeResult = new a(this.c, this.d, paramRegeocodeResult.getRegeocodeAddress());
      this.a.a(paramRegeocodeResult, 0);
      b.a.a.a("reGeocodeAddress result:" + paramRegeocodeResult, new Object[0]);
      return;
    }
    catch (Exception paramRegeocodeResult)
    {
      paramRegeocodeResult.printStackTrace();
      this.a.a(null, -1);
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.nut.blehunter.b.c
 * JD-Core Version:    0.6.2
 */