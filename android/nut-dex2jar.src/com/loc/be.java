package com.loc;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.wifi.ScanResult;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.text.TextUtils;
import java.util.List;
import org.json.JSONObject;

public final class be
{
  WifiManager a;
  JSONObject b;
  Context c;

  public be(Context paramContext, WifiManager paramWifiManager, JSONObject paramJSONObject)
  {
    this.a = paramWifiManager;
    this.b = paramJSONObject;
    this.c = paramContext;
  }

  public final List<ScanResult> a()
  {
    List localList = null;
    try
    {
      if (this.a != null)
        localList = this.a.getScanResults();
      return localList;
    }
    catch (Throwable localThrowable)
    {
    }
    return null;
  }

  public final boolean a(ConnectivityManager paramConnectivityManager)
  {
    boolean bool1 = true;
    WifiManager localWifiManager = this.a;
    if (localWifiManager == null);
    while (!c())
      return false;
    int i;
    try
    {
      if (bq.a(paramConnectivityManager.getActiveNetworkInfo()) == 1)
      {
        paramConnectivityManager = localWifiManager.getConnectionInfo();
        if ((paramConnectivityManager == null) || (TextUtils.isEmpty(paramConnectivityManager.getBSSID())))
          break label134;
        if (paramConnectivityManager.getSSID() == null)
        {
          i = 0;
        }
        else if (paramConnectivityManager.getBSSID().equals("00:00:00:00:00:00"))
        {
          i = 0;
        }
        else if (paramConnectivityManager.getBSSID().contains(" :"))
        {
          i = 0;
        }
        else
        {
          boolean bool2 = TextUtils.isEmpty(paramConnectivityManager.getSSID());
          if (bool2)
            i = 0;
        }
      }
    }
    catch (Exception paramConnectivityManager)
    {
      return false;
    }
    label134: 
    do
    {
      bool1 = false;
      break;
      i = 1;
      continue;
      i = 0;
    }
    while (i == 0);
    return bool1;
  }

  public final boolean b()
  {
    boolean bool1 = false;
    try
    {
      boolean bool2 = String.valueOf(bx.a(this.a, "startScanActive", new Object[0])).equals("true");
      if (bool2)
        bool1 = true;
      return bool1;
    }
    catch (Exception localException)
    {
    }
    return false;
  }

  public final boolean c()
  {
    boolean bool1 = false;
    boolean bool2 = false;
    WifiManager localWifiManager = this.a;
    if (localWifiManager == null);
    while (true)
    {
      return bool2;
      try
      {
        bool2 = localWifiManager.isWifiEnabled();
        bool1 = bool2;
        bool2 = bool1;
        if (!bool1)
        {
          bool2 = bool1;
          if (by.c() <= 17);
        }
      }
      catch (Exception localException2)
      {
        try
        {
          bool2 = String.valueOf(bx.a(localWifiManager, "isScanAlwaysAvailable", new Object[0])).equals("true");
          return bool2;
          localException2 = localException2;
        }
        catch (Exception localException1)
        {
        }
      }
    }
    return bool1;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.loc.be
 * JD-Core Version:    0.6.2
 */