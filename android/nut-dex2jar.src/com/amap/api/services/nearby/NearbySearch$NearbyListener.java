package com.amap.api.services.nearby;

public abstract interface NearbySearch$NearbyListener
{
  public abstract void onNearbyInfoSearched(NearbySearchResult paramNearbySearchResult, int paramInt);

  public abstract void onNearbyInfoUploaded(int paramInt);

  public abstract void onUserInfoCleared(int paramInt);
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.amap.api.services.nearby.NearbySearch.NearbyListener
 * JD-Core Version:    0.6.2
 */