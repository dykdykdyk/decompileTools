package com.amap.api.mapcore2d;

import android.content.Context;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

class aw extends fb
{
  private Context a;
  private String e;

  public aw(Context paramContext)
  {
    this.a = paramContext;
    this.e = db.f(paramContext);
  }

  private ax a(byte[] paramArrayOfByte)
  {
    if (paramArrayOfByte == null);
    while (true)
    {
      return null;
      try
      {
        paramArrayOfByte = new JSONObject(new String(paramArrayOfByte));
        String str = paramArrayOfByte.optString("status");
        if ((!"0".equals(str)) && ("1".equals(str)))
        {
          paramArrayOfByte = a(paramArrayOfByte, "result");
          boolean bool = a(b(a(a(paramArrayOfByte, "exception"), "exceptinfo"), "ex_isupload"));
          paramArrayOfByte = new ax(a(b(a(a(paramArrayOfByte, "common"), "commoninfo"), "com_isupload")), bool);
          return paramArrayOfByte;
        }
      }
      catch (JSONException paramArrayOfByte)
      {
        cz.a(paramArrayOfByte, "ManifestManager", "loadData");
        return null;
      }
      catch (Exception paramArrayOfByte)
      {
        cz.a(paramArrayOfByte, "ManifestManager", "loadData");
      }
    }
    return null;
  }

  private JSONObject a(JSONObject paramJSONObject, String paramString)
  {
    if (paramJSONObject == null)
      return null;
    return paramJSONObject.optJSONObject(paramString);
  }

  private boolean a(String paramString)
  {
    if (paramString == null);
    while (!paramString.equals("1"))
      return false;
    return true;
  }

  private String b(JSONObject paramJSONObject, String paramString)
  {
    if (paramJSONObject == null)
      return null;
    return paramJSONObject.optString(paramString);
  }

  public ax a()
  {
    try
    {
      Object localObject = fa.a(false);
      a(dh.a(this.a));
      localObject = a(((fa)localObject).a(this));
      return localObject;
    }
    catch (Exception localException)
    {
      cz.a(localException, "ManifestManager", "feachManifest");
    }
    return null;
  }

  public Map<String, String> b()
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("User-Agent", "AMAP_SDK_Android_2DMap_2.8.0");
    localHashMap.put("platinfo", String.format("platform=Android&sdkversion=%s&product=%s", new Object[] { "2.8.0", "2dmap" }));
    localHashMap.put("logversion", "2.0");
    return localHashMap;
  }

  public Map<String, String> c()
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("key", this.e);
    localHashMap.put("opertype", "common;exception");
    localHashMap.put("plattype", "android");
    localHashMap.put("product", "2dmap");
    localHashMap.put("version", "2.8.0");
    localHashMap.put("ext", "standard");
    localHashMap.put("output", "json");
    Object localObject = new StringBuffer();
    ((StringBuffer)localObject).append("key=").append(this.e);
    ((StringBuffer)localObject).append("&opertype=common;exception");
    ((StringBuffer)localObject).append("&plattype=android");
    ((StringBuffer)localObject).append("&product=2dmap");
    ((StringBuffer)localObject).append("&version=2.8.0");
    ((StringBuffer)localObject).append("&ext=standard");
    ((StringBuffer)localObject).append("&output=json");
    localObject = dj.a(((StringBuffer)localObject).toString());
    String str = dd.a();
    localHashMap.put("ts", str);
    localHashMap.put("scode", dd.a(this.a, str, (String)localObject));
    return localHashMap;
  }

  public String d()
  {
    return "http://restapi.amap.com/v3/config/resource";
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.amap.api.mapcore2d.aw
 * JD-Core Version:    0.6.2
 */