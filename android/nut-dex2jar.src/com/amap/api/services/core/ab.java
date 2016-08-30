package com.amap.api.services.core;

import android.content.Context;
import com.amap.api.services.geocoder.RegeocodeAddress;
import com.amap.api.services.geocoder.RegeocodeQuery;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class ab extends b<RegeocodeQuery, RegeocodeAddress>
{
  public ab(Context paramContext, RegeocodeQuery paramRegeocodeQuery)
  {
    super(paramContext, paramRegeocodeQuery);
  }

  protected RegeocodeAddress d(String paramString)
    throws AMapException
  {
    RegeocodeAddress localRegeocodeAddress = new RegeocodeAddress();
    try
    {
      paramString = new JSONObject(paramString).optJSONObject("regeocode");
      if (paramString == null)
        return localRegeocodeAddress;
      localRegeocodeAddress.setFormatAddress(n.a(paramString, "formatted_address"));
      Object localObject = paramString.optJSONObject("addressComponent");
      if (localObject != null)
        n.a((JSONObject)localObject, localRegeocodeAddress);
      localRegeocodeAddress.setPois(n.c(paramString));
      localObject = paramString.optJSONArray("roads");
      if (localObject != null)
        n.b((JSONArray)localObject, localRegeocodeAddress);
      localObject = paramString.optJSONArray("roadinters");
      if (localObject != null)
        n.a((JSONArray)localObject, localRegeocodeAddress);
      paramString = paramString.optJSONArray("aois");
      if (paramString != null)
      {
        n.c(paramString, localRegeocodeAddress);
        return localRegeocodeAddress;
      }
    }
    catch (JSONException paramString)
    {
      i.a(paramString, "ReverseGeocodingHandler", "paseJSON");
    }
    return localRegeocodeAddress;
  }

  protected String e()
  {
    StringBuffer localStringBuffer = new StringBuffer();
    localStringBuffer.append("output=json&extensions=all&location=").append(((RegeocodeQuery)this.a).getPoint().getLongitude()).append(",").append(((RegeocodeQuery)this.a).getPoint().getLatitude());
    localStringBuffer.append("&radius=").append(((RegeocodeQuery)this.a).getRadius());
    localStringBuffer.append("&coordsys=").append(((RegeocodeQuery)this.a).getLatLonType());
    localStringBuffer.append("&key=" + aj.f(this.d));
    localStringBuffer.append("&language=").append(h.c());
    return localStringBuffer.toString();
  }

  public String g()
  {
    return h.a() + "/geocode/regeo?";
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.amap.api.services.core.ab
 * JD-Core Version:    0.6.2
 */