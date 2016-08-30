package com.amap.api.services.core;

import android.content.Context;
import com.amap.api.services.cloud.CloudItemDetail;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class f extends e<z, CloudItemDetail>
{
  public f(Context paramContext, z paramz)
  {
    super(paramContext, paramz);
  }

  private CloudItemDetail b(JSONObject paramJSONObject)
    throws JSONException
  {
    if (paramJSONObject == null);
    do
    {
      do
        return null;
      while (!paramJSONObject.has("datas"));
      paramJSONObject = paramJSONObject.optJSONArray("datas");
    }
    while (paramJSONObject.length() <= 0);
    paramJSONObject = paramJSONObject.getJSONObject(0);
    CloudItemDetail localCloudItemDetail = a(paramJSONObject);
    a(localCloudItemDetail, paramJSONObject);
    return localCloudItemDetail;
  }

  public CloudItemDetail e(String paramString)
    throws AMapException
  {
    if ((paramString == null) || (paramString.equals("")))
      return null;
    try
    {
      paramString = b(new JSONObject(paramString));
      return paramString;
    }
    catch (JSONException paramString)
    {
      paramString.printStackTrace();
      return null;
    }
    catch (Exception paramString)
    {
      paramString.printStackTrace();
    }
    return null;
  }

  protected String e()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("key=" + aj.f(this.d));
    localStringBuilder.append("&tableid=" + ((z)this.a).a);
    localStringBuilder.append("&output=json");
    localStringBuilder.append("&_id=" + ((z)this.a).b);
    return localStringBuilder.toString();
  }

  public String g()
  {
    return h.b() + "/datasearch/id?";
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.amap.api.services.core.f
 * JD-Core Version:    0.6.2
 */