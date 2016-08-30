package com.amap.api.services.geocoder;

public abstract interface GeocodeSearch$OnGeocodeSearchListener
{
  public abstract void onGeocodeSearched(GeocodeResult paramGeocodeResult, int paramInt);

  public abstract void onRegeocodeSearched(RegeocodeResult paramRegeocodeResult, int paramInt);
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.amap.api.services.geocoder.GeocodeSearch.OnGeocodeSearchListener
 * JD-Core Version:    0.6.2
 */