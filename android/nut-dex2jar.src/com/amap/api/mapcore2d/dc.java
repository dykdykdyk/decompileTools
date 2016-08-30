package com.amap.api.mapcore2d;

import android.content.Context;
import android.util.Log;
import java.io.UnsupportedEncodingException;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

public class dc
{
  public static int a = -1;
  public static String b = "";
  private static di c;
  private static String d = "http://apiinit.amap.com/v3/log/init";
  private static String e = null;

  private static String a()
  {
    return d;
  }

  private static Map<String, String> a(Context paramContext)
  {
    HashMap localHashMap = new HashMap();
    try
    {
      localHashMap.put("resType", "json");
      localHashMap.put("encode", "UTF-8");
      String str = dd.a();
      localHashMap.put("ts", str);
      localHashMap.put("key", db.f(paramContext));
      localHashMap.put("scode", dd.a(paramContext, str, dj.a("resType=json&encode=UTF-8&key=" + db.f(paramContext))));
      return localHashMap;
    }
    catch (Throwable paramContext)
    {
      dq.a(paramContext, "Auth", "gParams");
    }
    return localHashMap;
  }

  public static void a(String paramString)
  {
    db.a(paramString);
  }

  public static boolean a(Context paramContext, di paramdi)
  {
    try
    {
      boolean bool = a(paramContext, paramdi, false);
      return bool;
    }
    finally
    {
      paramContext = finally;
    }
    throw paramContext;
  }

  private static boolean a(Context paramContext, di paramdi, boolean paramBoolean)
  {
    c = paramdi;
    try
    {
      paramdi = a();
      HashMap localHashMap = new HashMap();
      localHashMap.put("Content-Type", "application/x-www-form-urlencoded");
      localHashMap.put("Accept-Encoding", "gzip");
      localHashMap.put("Connection", "Keep-Alive");
      localHashMap.put("User-Agent", c.b);
      localHashMap.put("X-INFO", dd.a(paramContext, c, null, paramBoolean));
      localHashMap.put("logversion", "2.1");
      localHashMap.put("platinfo", String.format("platform=Android&sdkversion=%s&product=%s", new Object[] { c.a, c.c }));
      ex localex = ex.a();
      dk localdk = new dk();
      localdk.a(dh.a(paramContext));
      localdk.a(localHashMap);
      localdk.b(a(paramContext));
      localdk.a(paramdi);
      paramBoolean = a(localex.a(localdk));
      return paramBoolean;
    }
    catch (Throwable paramContext)
    {
      dq.a(paramContext, "Auth", "getAuth");
    }
    return true;
  }

  private static boolean a(byte[] paramArrayOfByte)
  {
    if (paramArrayOfByte == null);
    while (true)
    {
      return true;
      try
      {
        String str = new String(paramArrayOfByte, "UTF-8");
        paramArrayOfByte = str;
        paramArrayOfByte = new JSONObject(paramArrayOfByte);
        if (paramArrayOfByte.has("status"))
        {
          i = paramArrayOfByte.getInt("status");
          if (i == 1)
            a = 1;
        }
        else
        {
          if (paramArrayOfByte.has("info"))
            b = paramArrayOfByte.getString("info");
          if (a == 0)
            Log.i("AuthFailure", b);
          if (a == 1)
            continue;
          return false;
        }
      }
      catch (UnsupportedEncodingException localUnsupportedEncodingException)
      {
        while (true)
          paramArrayOfByte = new String(paramArrayOfByte);
      }
      catch (JSONException paramArrayOfByte)
      {
        while (true)
        {
          int i;
          dq.a(paramArrayOfByte, "Auth", "lData");
          return false;
          if (i == 0)
            a = 0;
        }
      }
      catch (Throwable paramArrayOfByte)
      {
        while (true)
          dq.a(paramArrayOfByte, "Auth", "lData");
      }
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.amap.api.mapcore2d.dc
 * JD-Core Version:    0.6.2
 */