package com.amap.api.services.poisearch;

import android.content.Context;
import com.amap.api.services.core.AMapException;
import com.amap.api.services.core.PoiItem;
import com.amap.api.services.core.ServiceSettings;
import com.amap.api.services.core.aj;
import com.amap.api.services.core.h;
import com.amap.api.services.core.i;
import com.amap.api.services.core.n;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

class c extends b<String, PoiItem>
{
  public c(Context paramContext, String paramString)
  {
    super(paramContext, paramString);
  }

  private PoiItem a(JSONObject paramJSONObject)
    throws JSONException
  {
    if (paramJSONObject == null);
    do
    {
      do
      {
        return null;
        paramJSONObject = paramJSONObject.optJSONArray("pois");
      }
      while ((paramJSONObject == null) || (paramJSONObject.length() <= 0));
      paramJSONObject = paramJSONObject.optJSONObject(0);
    }
    while (paramJSONObject == null);
    return n.d(paramJSONObject);
  }

  private String h()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("id=").append((String)this.a);
    localStringBuilder.append("&output=json");
    localStringBuilder.append("&extensions=all");
    localStringBuilder.append("&children=1");
    localStringBuilder.append("&language=").append(ServiceSettings.getInstance().getLanguage());
    localStringBuilder.append("&key=" + aj.f(this.d));
    return localStringBuilder.toString();
  }

  public PoiItem e(String paramString)
    throws AMapException
  {
    try
    {
      paramString = a(new JSONObject(paramString));
      return paramString;
    }
    catch (JSONException paramString)
    {
      i.a(paramString, "PoiSearchIdHandler", "paseJSONJSONException");
      return null;
    }
    catch (Exception paramString)
    {
      i.a(paramString, "PoiSearchIdHandler", "paseJSONException");
    }
    return null;
  }

  protected String e()
  {
    return h();
  }

  public String g()
  {
    return h.a() + "/place/detail?";
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.amap.api.services.poisearch.c
 * JD-Core Version:    0.6.2
 */