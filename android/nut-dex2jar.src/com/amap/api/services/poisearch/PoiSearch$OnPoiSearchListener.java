package com.amap.api.services.poisearch;

import com.amap.api.services.core.PoiItem;

public abstract interface PoiSearch$OnPoiSearchListener
{
  public abstract void onPoiItemSearched(PoiItem paramPoiItem, int paramInt);

  public abstract void onPoiSearched(PoiResult paramPoiResult, int paramInt);
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.amap.api.services.poisearch.PoiSearch.OnPoiSearchListener
 * JD-Core Version:    0.6.2
 */