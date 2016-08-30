package com.loc;

import android.content.Context;
import android.net.NetworkInfo;
import java.net.HttpURLConnection;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

public final class bq
{
  private static bq e = null;
  eo a = null;
  String b = null;
  z c = null;
  aa d = null;
  private long f = 0L;
  private int g = dp.j;
  private int h = dp.j;

  private bq(Context paramContext)
  {
    try
    {
      this.a = new ep("loc", "2.3.0", "AMAP_Location_SDK_Android 2.3.0").a(dp.b()).a();
      new HashMap();
      this.b = ea.a(paramContext, true);
      this.c = z.a();
      return;
    }
    catch (l locall)
    {
      while (true)
        locall.printStackTrace();
    }
  }

  public static int a(NetworkInfo paramNetworkInfo)
  {
    if (paramNetworkInfo == null);
    while ((!paramNetworkInfo.isAvailable()) || (!paramNetworkInfo.isConnected()))
      return -1;
    return paramNetworkInfo.getType();
  }

  public static bq a(Context paramContext)
  {
    try
    {
      if (e == null)
        e = new bq(paramContext);
      paramContext = e;
      return paramContext;
    }
    finally
    {
    }
    throw paramContext;
  }

  public static String a(byte[] paramArrayOfByte, Context paramContext, String paramString)
  {
    if (a(by.c(paramContext)) == -1)
      return null;
    HashMap localHashMap = new HashMap();
    br localbr = new br();
    localHashMap.clear();
    localHashMap.put("Content-Type", "application/x-www-form-urlencoded");
    localHashMap.put("Connection", "Keep-Alive");
    localbr.d = localHashMap;
    localbr.f = paramString;
    localbr.g = paramArrayOfByte;
    localbr.c = el.a(paramContext);
    localbr.a = dp.j;
    localbr.b = dp.j;
    try
    {
      paramArrayOfByte = new String(z.b(localbr), "utf-8");
      return paramArrayOfByte;
    }
    catch (l paramArrayOfByte)
    {
      while (true)
      {
        paramArrayOfByte.printStackTrace();
        paramArrayOfByte = null;
      }
    }
    catch (Throwable paramArrayOfByte)
    {
      while (true)
      {
        paramArrayOfByte.printStackTrace();
        paramArrayOfByte = null;
      }
    }
  }

  public static HttpURLConnection a(Context paramContext, String paramString, HashMap<String, String> paramHashMap, byte[] paramArrayOfByte)
    throws Exception
  {
    try
    {
      if (a(by.c(paramContext)) == -1)
        return null;
      boolean bool = false;
      br localbr = new br();
      localbr.d = paramHashMap;
      localbr.f = paramString;
      localbr.g = paramArrayOfByte;
      localbr.c = el.a(paramContext);
      localbr.a = dp.j;
      localbr.b = dp.j;
      if (paramString.toLowerCase(Locale.US).startsWith("https"))
        bool = true;
      paramContext = z.a(localbr, bool);
      return paramContext;
    }
    catch (Throwable paramContext)
    {
    }
    return null;
  }

  public final byte[] a(Context paramContext, JSONObject paramJSONObject, bu parambu, String paramString)
    throws Exception
  {
    if (by.a(paramJSONObject, "httptimeout"));
    try
    {
      this.g = paramJSONObject.getInt("httptimeout");
      label19: if (a(by.c(paramContext)) == -1)
        return null;
      paramJSONObject = new HashMap();
      br localbr = new br();
      paramJSONObject.clear();
      paramJSONObject.put("Content-Type", "application/octet-stream");
      paramJSONObject.put("Accept-Encoding", "gzip");
      paramJSONObject.put("gzipped", "1");
      paramJSONObject.put("Connection", "Keep-Alive");
      paramJSONObject.put("User-Agent", "AMAP_Location_SDK_Android 2.3.0");
      paramJSONObject.put("X-INFO", this.b);
      paramJSONObject.put("KEY", dy.e(paramContext));
      paramJSONObject.put("enginever", "4.2");
      String str1 = ea.a();
      String str2 = ea.a(paramContext, str1, "key=" + dy.e(paramContext));
      paramJSONObject.put("ts", str1);
      paramJSONObject.put("scode", str2);
      paramJSONObject.put("platinfo", String.format(Locale.US, "platform=Android&sdkversion=%s&product=%s", new Object[] { "2.3.0", "loc" }));
      paramJSONObject.put("logversion", "2.1");
      paramJSONObject.put("encr", "1");
      localbr.d = paramJSONObject;
      localbr.f = paramString;
      localbr.g = by.a(parambu.a());
      localbr.c = el.a(paramContext);
      localbr.a = this.g;
      localbr.b = this.g;
      return z.b(localbr);
    }
    catch (JSONException paramJSONObject)
    {
      break label19;
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.loc.bq
 * JD-Core Version:    0.6.2
 */