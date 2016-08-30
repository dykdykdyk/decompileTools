package com.loc;

import android.content.Context;
import android.util.Log;
import java.io.UnsupportedEncodingException;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

public final class dz
{
  public static int a = -1;
  public static String b = "";
  private static eo c;
  private static String d = "http://apiinit.amap.com/v3/log/init";
  private static String e = null;

  private static Map<String, String> a(Context paramContext)
  {
    HashMap localHashMap = new HashMap();
    try
    {
      localHashMap.put("resType", "json");
      localHashMap.put("encode", "UTF-8");
      String str = ea.a();
      localHashMap.put("ts", str);
      localHashMap.put("key", dy.e(paramContext));
      localHashMap.put("scode", ea.a(paramContext, str, eq.a("resType=json&encode=UTF-8&key=" + dy.e(paramContext))));
      return localHashMap;
    }
    catch (Throwable paramContext)
    {
      paramContext.printStackTrace();
    }
    return localHashMap;
  }

  public static void a(String paramString)
  {
    dy.a(paramString);
  }

  public static boolean a(Context paramContext, eo parameo)
  {
    try
    {
      boolean bool = a(paramContext, parameo, true);
      return bool;
    }
    finally
    {
      paramContext = finally;
    }
    throw paramContext;
  }

  private static boolean a(Context paramContext, eo parameo, boolean paramBoolean)
  {
    c = parameo;
    try
    {
      parameo = d;
      HashMap localHashMap = new HashMap();
      localHashMap.put("Content-Type", "application/x-www-form-urlencoded");
      localHashMap.put("Accept-Encoding", "gzip");
      localHashMap.put("Connection", "Keep-Alive");
      localHashMap.put("User-Agent", c.b);
      localHashMap.put("X-INFO", ea.a(paramContext, paramBoolean));
      localHashMap.put("logversion", "2.1");
      localHashMap.put("platinfo", String.format("platform=Android&sdkversion=%s&product=%s", new Object[] { c.a, c.c }));
      z.a();
      er localer = new er();
      localer.c = el.a(paramContext);
      localer.d.clear();
      localer.d.putAll(localHashMap);
      paramContext = a(paramContext);
      localer.f.clear();
      localer.f.putAll(paramContext);
      localer.e = parameo;
      paramBoolean = a(z.b(localer));
      return paramBoolean;
    }
    catch (Throwable paramContext)
    {
      paramContext.printStackTrace();
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
          paramArrayOfByte.printStackTrace();
          return false;
          if (i == 0)
            a = 0;
        }
      }
      catch (Throwable paramArrayOfByte)
      {
        while (true)
          paramArrayOfByte.printStackTrace();
      }
    }
  }

  public static boolean b(Context paramContext, eo parameo)
  {
    try
    {
      boolean bool = a(paramContext, parameo, false);
      return bool;
    }
    finally
    {
      paramContext = finally;
    }
    throw paramContext;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.loc.dz
 * JD-Core Version:    0.6.2
 */