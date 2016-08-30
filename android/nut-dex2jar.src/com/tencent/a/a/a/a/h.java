package com.tencent.a.a.a.a;

import android.content.Context;
import android.content.pm.PackageManager;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.os.Build.VERSION;
import android.telephony.TelephonyManager;
import android.util.Base64;
import android.util.Log;
import com.tencent.wxop.stat.b.g;
import org.json.JSONObject;

public final class h
{
  static String a(Context paramContext)
  {
    try
    {
      if (a(paramContext, "android.permission.READ_PHONE_STATE"))
      {
        paramContext = ((TelephonyManager)paramContext.getSystemService("phone")).getDeviceId();
        if (paramContext != null)
          return paramContext;
      }
      else
      {
        Log.i("MID", "Could not get permission of android.permission.READ_PHONE_STATE");
      }
      return "";
    }
    catch (Throwable paramContext)
    {
      while (true)
        Log.w("MID", paramContext);
    }
  }

  private static void a(String paramString, Throwable paramThrowable)
  {
    Log.e("MID", paramString, paramThrowable);
  }

  static void a(JSONObject paramJSONObject, String paramString1, String paramString2)
  {
    if (a(paramString2))
      paramJSONObject.put(paramString1, paramString2);
  }

  static boolean a(Context paramContext, String paramString)
  {
    boolean bool = false;
    try
    {
      int i = paramContext.getPackageManager().checkPermission(paramString, paramContext.getPackageName());
      if (i == 0)
        bool = true;
      return bool;
    }
    catch (Throwable paramContext)
    {
      a("checkPermission error", paramContext);
    }
    return false;
  }

  static boolean a(String paramString)
  {
    return (paramString != null) && (paramString.trim().length() != 0);
  }

  static String b(Context paramContext)
  {
    if (a(paramContext, "android.permission.ACCESS_WIFI_STATE"))
      try
      {
        paramContext = (WifiManager)paramContext.getSystemService("wifi");
        if (paramContext == null)
          return "";
        paramContext = paramContext.getConnectionInfo().getMacAddress();
        return paramContext;
      }
      catch (Exception paramContext)
      {
        Log.i("MID", "get wifi address error" + paramContext);
        return "";
      }
    Log.i("MID", "Could not get permission of android.permission.ACCESS_WIFI_STATE");
    return "";
  }

  public static boolean b(String paramString)
  {
    return (paramString != null) && (paramString.trim().length() >= 40);
  }

  static String c(String paramString)
  {
    String str;
    if (paramString == null)
      str = null;
    do
    {
      return str;
      str = paramString;
    }
    while (Build.VERSION.SDK_INT < 8);
    try
    {
      str = new String(g.b(Base64.decode(paramString.getBytes("UTF-8"), 0)), "UTF-8").trim().replace("\t", "").replace("\n", "").replace("\r", "");
      return str;
    }
    catch (Throwable localThrowable)
    {
      a("decode error", localThrowable);
    }
    return paramString;
  }

  static String d(String paramString)
  {
    String str;
    if (paramString == null)
      str = null;
    do
    {
      return str;
      str = paramString;
    }
    while (Build.VERSION.SDK_INT < 8);
    try
    {
      str = new String(Base64.encode(g.a(paramString.getBytes("UTF-8")), 0), "UTF-8").trim().replace("\t", "").replace("\n", "").replace("\r", "");
      return str;
    }
    catch (Throwable localThrowable)
    {
      a("decode error", localThrowable);
    }
    return paramString;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.tencent.a.a.a.a.h
 * JD-Core Version:    0.6.2
 */