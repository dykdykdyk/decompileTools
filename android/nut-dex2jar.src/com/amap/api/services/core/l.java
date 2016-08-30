package com.amap.api.services.core;

import android.content.Context;
import com.amap.api.services.geocoder.GeocodeAddress;
import com.amap.api.services.geocoder.GeocodeQuery;
import java.util.ArrayList;
import org.json.JSONException;
import org.json.JSONObject;

public class l extends b<GeocodeQuery, ArrayList<GeocodeAddress>>
{
  public l(Context paramContext, GeocodeQuery paramGeocodeQuery)
  {
    super(paramContext, paramGeocodeQuery);
  }

  protected ArrayList<GeocodeAddress> d(String paramString)
    throws AMapException
  {
    ArrayList localArrayList = new ArrayList();
    try
    {
      paramString = new JSONObject(paramString);
      if (!paramString.has("count"))
        return localArrayList;
      if (paramString.getInt("count") > 0)
      {
        paramString = n.l(paramString);
        return paramString;
      }
    }
    catch (JSONException paramString)
    {
      i.a(paramString, "GeocodingHandler", "paseJSONJSONException");
      return localArrayList;
    }
    catch (Exception paramString)
    {
      i.a(paramString, "GeocodingHandler", "paseJSONException");
    }
    return localArrayList;
  }

  protected String e()
  {
    StringBuffer localStringBuffer = new StringBuffer();
    localStringBuffer.append("output=json&address=").append(b(((GeocodeQuery)this.a).getLocationName()));
    String str = ((GeocodeQuery)this.a).getCity();
    if (!n.i(str))
    {
      str = b(str);
      localStringBuffer.append("&city=").append(str);
    }
    localStringBuffer.append("&key=" + aj.f(this.d));
    localStringBuffer.append("&language=").append(h.c());
    return localStringBuffer.toString();
  }

  public String g()
  {
    return h.a() + "/geocode/geo?";
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.amap.api.services.core.l
 * JD-Core Version:    0.6.2
 */