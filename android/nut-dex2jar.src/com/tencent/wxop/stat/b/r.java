package com.tencent.wxop.stat.b;

import android.content.Context;
import android.content.pm.PackageManager;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.wifi.ScanResult;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.os.Build.VERSION;
import android.telephony.TelephonyManager;
import android.util.Log;
import java.util.Collections;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;

public final class r
{
  private static String a = "";

  public static String a(Context paramContext)
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
        Log.e("MtaSDK", "Could not get permission of android.permission.READ_PHONE_STATE");
      }
      return null;
    }
    catch (Throwable paramContext)
    {
      while (true)
        Log.e("MtaSDK", "get device id error", paramContext);
    }
  }

  public static String a(String paramString)
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
      str = new String(g.b(h.a(paramString.getBytes("UTF-8"))), "UTF-8");
      return str;
    }
    catch (Throwable localThrowable)
    {
      Log.e("MtaSDK", "decode error", localThrowable);
    }
    return paramString;
  }

  public static void a(JSONObject paramJSONObject, String paramString1, String paramString2)
  {
    if (paramString2 != null);
    try
    {
      if (paramString2.length() > 0)
        paramJSONObject.put(paramString1, paramString2);
      return;
    }
    catch (Throwable paramJSONObject)
    {
      Log.e("MtaSDK", "jsonPut error", paramJSONObject);
    }
  }

  public static boolean a(Context paramContext, String paramString)
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
      Log.e("MtaSDK", "checkPermission error", paramContext);
    }
    return false;
  }

  public static String b(Context paramContext)
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
        Log.e("MtaSDK", "get wifi address error", paramContext);
        return "";
      }
    Log.e("MtaSDK", "Could not get permission of android.permission.ACCESS_WIFI_STATE");
    return "";
  }

  public static String b(String paramString)
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
      str = new String(h.b(g.a(paramString.getBytes("UTF-8"))), "UTF-8");
      return str;
    }
    catch (Throwable localThrowable)
    {
      Log.e("MtaSDK", "encode error", localThrowable);
    }
    return paramString;
  }

  public static String c(Context paramContext)
  {
    try
    {
      paramContext = g(paramContext);
      if (paramContext != null)
      {
        paramContext = paramContext.getBSSID();
        return paramContext;
      }
    }
    catch (Throwable paramContext)
    {
      Log.e("MtaSDK", "encode error", paramContext);
    }
    return null;
  }

  public static String d(Context paramContext)
  {
    try
    {
      paramContext = g(paramContext);
      if (paramContext != null)
      {
        paramContext = paramContext.getSSID();
        return paramContext;
      }
    }
    catch (Throwable paramContext)
    {
      Log.e("MtaSDK", "encode error", paramContext);
    }
    return null;
  }

  public static boolean e(Context paramContext)
  {
    try
    {
      if ((a(paramContext, "android.permission.INTERNET")) && (a(paramContext, "android.permission.ACCESS_NETWORK_STATE")))
      {
        paramContext = (ConnectivityManager)paramContext.getSystemService("connectivity");
        if (paramContext != null)
        {
          paramContext = paramContext.getActiveNetworkInfo();
          if ((paramContext != null) && (paramContext.isAvailable()))
            return true;
          Log.w("MtaSDK", "Network error");
          return false;
        }
      }
      else
      {
        Log.e("MtaSDK", "can not get the permisson of android.permission.INTERNET");
      }
      return false;
    }
    catch (Throwable paramContext)
    {
      while (true)
        Log.e("MtaSDK", "isNetworkAvailable error", paramContext);
    }
  }

  public static JSONArray f(Context paramContext)
  {
    JSONArray localJSONArray;
    try
    {
      if ((a(paramContext, "android.permission.INTERNET")) && (a(paramContext, "android.permission.ACCESS_NETWORK_STATE")))
      {
        paramContext = (WifiManager)paramContext.getSystemService("wifi");
        if (paramContext != null)
        {
          paramContext = paramContext.getScanResults();
          if ((paramContext != null) && (paramContext.size() > 0))
          {
            Collections.sort(paramContext, new s());
            localJSONArray = new JSONArray();
            int i = 0;
            while ((i < paramContext.size()) && (i < 10))
            {
              ScanResult localScanResult = (ScanResult)paramContext.get(i);
              JSONObject localJSONObject = new JSONObject();
              localJSONObject.put("bs", localScanResult.BSSID);
              localJSONObject.put("ss", localScanResult.SSID);
              localJSONArray.put(localJSONObject);
              i += 1;
            }
          }
        }
      }
      else
      {
        Log.e("MtaSDK", "can not get the permisson of android.permission.INTERNET");
      }
      return null;
    }
    catch (Throwable paramContext)
    {
      while (true)
        Log.e("MtaSDK", "isWifiNet error", paramContext);
    }
    return localJSONArray;
  }

  private static WifiInfo g(Context paramContext)
  {
    if (a(paramContext, "android.permission.ACCESS_WIFI_STATE"))
    {
      paramContext = (WifiManager)paramContext.getApplicationContext().getSystemService("wifi");
      if (paramContext != null)
        return paramContext.getConnectionInfo();
    }
    return null;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.tencent.wxop.stat.b.r
 * JD-Core Version:    0.6.2
 */