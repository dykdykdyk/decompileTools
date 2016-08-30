package com.amap.api.maps2d;

import android.view.View;
import com.amap.api.maps2d.model.Marker;

public abstract interface AMap$InfoWindowAdapter
{
  public abstract View getInfoContents(Marker paramMarker);

  public abstract View getInfoWindow(Marker paramMarker);
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.amap.api.maps2d.AMap.InfoWindowAdapter
 * JD-Core Version:    0.6.2
 */