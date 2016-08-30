package com.amap.api.services.core;

import android.content.Context;
import com.amap.api.services.nearby.NearbySearch.NearbyQuery;
import com.amap.api.services.nearby.NearbySearchResult;
import org.json.JSONException;
import org.json.JSONObject;

public class v extends b<NearbySearch.NearbyQuery, NearbySearchResult>
{
  private Context h;
  private NearbySearch.NearbyQuery i;

  public v(Context paramContext, NearbySearch.NearbyQuery paramNearbyQuery)
  {
    super(paramContext, paramNearbyQuery);
    this.h = paramContext;
    this.i = paramNearbyQuery;
  }

  protected NearbySearchResult d(String paramString)
    throws AMapException
  {
    boolean bool = true;
    try
    {
      paramString = new JSONObject(paramString);
      if (this.i.getType() == 1);
      while (true)
      {
        paramString = n.a(paramString, bool);
        NearbySearchResult localNearbySearchResult = new NearbySearchResult();
        localNearbySearchResult.setNearbyInfoList(paramString);
        return localNearbySearchResult;
        bool = false;
      }
    }
    catch (JSONException paramString)
    {
      i.a(paramString, "NearbySearchHandler", "paseJSON");
    }
    return null;
  }

  protected String e()
  {
    StringBuffer localStringBuffer = new StringBuffer();
    localStringBuffer.append("key=").append(aj.f(this.h));
    LatLonPoint localLatLonPoint = this.i.getCenterPoint();
    localStringBuffer.append("&center=").append(localLatLonPoint.getLongitude()).append(",").append(localLatLonPoint.getLatitude());
    localStringBuffer.append("&radius=").append(this.i.getRadius());
    localStringBuffer.append("&searchtype=").append(this.i.getType());
    localStringBuffer.append("&timerange=").append(this.i.getTimeRange());
    return localStringBuffer.toString();
  }

  public String g()
  {
    return h.b() + "/nearby/around";
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.amap.api.services.core.v
 * JD-Core Version:    0.6.2
 */