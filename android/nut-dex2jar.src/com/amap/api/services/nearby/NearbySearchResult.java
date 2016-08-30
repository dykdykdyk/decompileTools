package com.amap.api.services.nearby;

import java.util.ArrayList;
import java.util.List;

public class NearbySearchResult
{
  private List<NearbyInfo> a = new ArrayList();
  private int b = 0;

  public List<NearbyInfo> getNearbyInfoList()
  {
    return this.a;
  }

  public int getTotalNum()
  {
    return this.b;
  }

  public void setNearbyInfoList(List<NearbyInfo> paramList)
  {
    this.a = paramList;
    this.b = paramList.size();
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.amap.api.services.nearby.NearbySearchResult
 * JD-Core Version:    0.6.2
 */