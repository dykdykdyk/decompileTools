package com.amap.api.services.core;

import android.content.Context;
import com.amap.api.services.cloud.CloudImage;
import com.amap.api.services.cloud.CloudItem;
import com.amap.api.services.cloud.CloudItemDetail;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public abstract class e<T, V> extends b<T, V>
{
  public e(Context paramContext, T paramT)
  {
    super(paramContext, paramT);
  }

  protected CloudItemDetail a(JSONObject paramJSONObject)
    throws JSONException
  {
    CloudItemDetail localCloudItemDetail = new CloudItemDetail(n.a(paramJSONObject, "_id"), n.b(paramJSONObject, "_location"), n.a(paramJSONObject, "_name"), n.a(paramJSONObject, "_address"));
    localCloudItemDetail.setCreatetime(n.a(paramJSONObject, "_createtime"));
    localCloudItemDetail.setUpdatetime(n.a(paramJSONObject, "_updatetime"));
    if (paramJSONObject.has("_distance"))
    {
      localObject = paramJSONObject.optString("_distance");
      if (!d((String)localObject))
        localCloudItemDetail.setDistance(Integer.parseInt((String)localObject));
    }
    Object localObject = new ArrayList();
    paramJSONObject = paramJSONObject.optJSONArray("_image");
    if ((paramJSONObject == null) || (paramJSONObject.length() == 0))
    {
      localCloudItemDetail.setmCloudImage((List)localObject);
      return localCloudItemDetail;
    }
    int i = 0;
    while (i < paramJSONObject.length())
    {
      JSONObject localJSONObject = paramJSONObject.getJSONObject(i);
      String str1 = n.a(localJSONObject, "_preurl");
      String str2 = n.a(localJSONObject, "_url");
      ((ArrayList)localObject).add(new CloudImage(n.a(localJSONObject, "_id"), str1, str2));
      i += 1;
    }
    localCloudItemDetail.setmCloudImage((List)localObject);
    return localCloudItemDetail;
  }

  protected void a(CloudItem paramCloudItem, JSONObject paramJSONObject)
  {
    Iterator localIterator = paramJSONObject.keys();
    HashMap localHashMap = new HashMap();
    if (localIterator == null)
      return;
    while (localIterator.hasNext())
    {
      Object localObject = localIterator.next();
      if ((localObject != null) && (!localObject.toString().startsWith("_")))
      {
        String str = paramJSONObject.optString(localObject.toString());
        localHashMap.put(localObject.toString(), str);
      }
    }
    paramCloudItem.setCustomfield(localHashMap);
  }

  public Map<String, String> c()
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("Content-Type", "application/x-www-form-urlencoded");
    localHashMap.put("Accept-Encoding", "gzip");
    localHashMap.put("User-Agent", "AMAP SDK Android Search 3.2.1");
    localHashMap.put("X-INFO", al.a(this.d, h.b(false), null, false));
    localHashMap.put("platinfo", String.format("platform=Android&sdkversion=%s&product=%s", new Object[] { "3.2.1", "cloud" }));
    localHashMap.put("logversion", "2.1");
    return localHashMap;
  }

  protected boolean d(String paramString)
  {
    return (paramString == null) || (paramString.equals("")) || (paramString.equals("[]"));
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.amap.api.services.core.e
 * JD-Core Version:    0.6.2
 */