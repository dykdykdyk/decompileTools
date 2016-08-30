package com.loc;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.TrafficStats;
import android.net.wifi.ScanResult;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.os.Build.VERSION;
import android.os.Environment;
import android.provider.Settings.System;
import android.telephony.TelephonyManager;
import android.telephony.cdma.CdmaCellLocation;
import android.telephony.gsm.GsmCellLocation;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.WindowManager;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.List;
import javax.xml.parsers.ParserConfigurationException;
import javax.xml.parsers.SAXParser;
import javax.xml.parsers.SAXParserFactory;
import org.xml.sax.SAXException;

public final class eh
{
  private static String a = "";
  private static boolean b = false;
  private static String c = "";
  private static String d = "";
  private static String e = "";
  private static String f = "";

  public static String a(Context paramContext)
  {
    try
    {
      if ((a != null) && (!"".equals(a)))
        return a;
      if (paramContext.checkCallingOrSelfPermission("android.permission.WRITE_SETTINGS") == 0)
        a = Settings.System.getString(paramContext.getContentResolver(), "mqBRboGZkQPcAkyk");
      if ((a != null) && (!"".equals(a)))
      {
        paramContext = a;
        return paramContext;
      }
    }
    catch (Throwable paramContext)
    {
      paramContext.printStackTrace();
    }
    try
    {
      if ("mounted".equals(Environment.getExternalStorageState()))
      {
        paramContext = Environment.getExternalStorageDirectory().getAbsolutePath();
        paramContext = new File(paramContext + "/.UTSystemConfig/Global/Alvin2.xml");
        if (paramContext.exists())
          SAXParserFactory.newInstance().newSAXParser().parse(paramContext, new ei());
      }
      return a;
    }
    catch (FileNotFoundException paramContext)
    {
      while (true)
        paramContext.printStackTrace();
    }
    catch (ParserConfigurationException paramContext)
    {
      while (true)
        paramContext.printStackTrace();
    }
    catch (SAXException paramContext)
    {
      while (true)
        paramContext.printStackTrace();
    }
    catch (IOException paramContext)
    {
      while (true)
        paramContext.printStackTrace();
    }
    catch (Throwable paramContext)
    {
      while (true)
        paramContext.printStackTrace();
    }
  }

  private static List<ScanResult> a(List<ScanResult> paramList)
  {
    int k = paramList.size();
    int i = 0;
    while (i < k - 1)
    {
      int j = 1;
      while (j < k - i)
      {
        if (((ScanResult)paramList.get(j - 1)).level > ((ScanResult)paramList.get(j)).level)
        {
          ScanResult localScanResult = (ScanResult)paramList.get(j - 1);
          paramList.set(j - 1, paramList.get(j));
          paramList.set(j, localScanResult);
        }
        j += 1;
      }
      i += 1;
    }
    return paramList;
  }

  public static void a()
  {
    try
    {
      if (Build.VERSION.SDK_INT > 14)
        TrafficStats.class.getDeclaredMethod("setThreadStatsTag", new Class[] { Integer.TYPE }).invoke(null, new Object[] { Integer.valueOf(40964) });
      return;
    }
    catch (NoSuchMethodException localNoSuchMethodException)
    {
      localNoSuchMethodException.printStackTrace();
      return;
    }
    catch (IllegalAccessException localIllegalAccessException)
    {
      localIllegalAccessException.printStackTrace();
      return;
    }
    catch (IllegalArgumentException localIllegalArgumentException)
    {
      localIllegalArgumentException.printStackTrace();
      return;
    }
    catch (InvocationTargetException localInvocationTargetException)
    {
      localInvocationTargetException.printStackTrace();
      return;
    }
    catch (Throwable localThrowable)
    {
      localThrowable.printStackTrace();
    }
  }

  static String b(Context paramContext)
  {
    if (paramContext != null)
    {
      try
      {
        if (paramContext.checkCallingOrSelfPermission("android.permission.ACCESS_WIFI_STATE") != 0)
          break label50;
        paramContext = (WifiManager)paramContext.getSystemService("wifi");
        if (paramContext.isWifiEnabled())
        {
          paramContext = paramContext.getConnectionInfo().getBSSID();
          return paramContext;
        }
      }
      catch (Throwable paramContext)
      {
        paramContext.printStackTrace();
      }
      return null;
    }
    label50: return null;
  }

  static String c(Context paramContext)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    if (paramContext != null);
    try
    {
      if (paramContext.checkCallingOrSelfPermission("android.permission.ACCESS_WIFI_STATE") != 0)
        return localStringBuilder.toString();
      paramContext = (WifiManager)paramContext.getSystemService("wifi");
      if (paramContext.isWifiEnabled())
      {
        paramContext = paramContext.getScanResults();
        if ((paramContext == null) || (paramContext.size() == 0))
          return localStringBuilder.toString();
        paramContext = a(paramContext);
        int j = 1;
        int i = 0;
        if ((i < paramContext.size()) && (i < 7))
        {
          ScanResult localScanResult = (ScanResult)paramContext.get(i);
          if (j != 0)
            j = 0;
          while (true)
          {
            localStringBuilder.append(localScanResult.BSSID);
            i += 1;
            break;
            localStringBuilder.append(";");
          }
        }
      }
    }
    catch (Throwable paramContext)
    {
      paramContext.printStackTrace();
    }
    return localStringBuilder.toString();
  }

  static String d(Context paramContext)
  {
    try
    {
      if ((c != null) && (!"".equals(c)))
        return c;
      if (paramContext.checkCallingOrSelfPermission("android.permission.ACCESS_WIFI_STATE") != 0)
        return c;
      c = ((WifiManager)paramContext.getSystemService("wifi")).getConnectionInfo().getMacAddress();
      return c;
    }
    catch (Throwable paramContext)
    {
      while (true)
        paramContext.printStackTrace();
    }
  }

  static String[] e(Context paramContext)
  {
    do
      try
      {
        if ((paramContext.checkCallingOrSelfPermission("android.permission.READ_PHONE_STATE") != 0) || (paramContext.checkCallingOrSelfPermission("android.permission.ACCESS_COARSE_LOCATION") != 0))
          return new String[] { "", "" };
        paramContext = ((TelephonyManager)paramContext.getSystemService("phone")).getCellLocation();
        if ((paramContext instanceof GsmCellLocation))
        {
          paramContext = (GsmCellLocation)paramContext;
          i = paramContext.getCid();
          j = paramContext.getLac();
          paramContext = j + "||" + i;
          return new String[] { paramContext, "gsm" };
        }
      }
      catch (Throwable paramContext)
      {
        paramContext.printStackTrace();
        return new String[] { "", "" };
      }
    while (!(paramContext instanceof CdmaCellLocation));
    paramContext = (CdmaCellLocation)paramContext;
    int i = paramContext.getSystemId();
    int j = paramContext.getNetworkId();
    int k = paramContext.getBaseStationId();
    paramContext = i + "||" + j + "||" + k;
    return new String[] { paramContext, "cdma" };
  }

  static String f(Context paramContext)
  {
    try
    {
      if (paramContext.checkCallingOrSelfPermission("android.permission.READ_PHONE_STATE") != 0)
        return "";
      paramContext = ((TelephonyManager)paramContext.getSystemService("phone")).getNetworkOperator();
      if ((!TextUtils.isEmpty(paramContext)) || (paramContext.length() >= 3))
      {
        paramContext = paramContext.substring(3);
        return paramContext;
      }
    }
    catch (Throwable paramContext)
    {
      while (true)
      {
        paramContext.printStackTrace();
        paramContext.printStackTrace();
        paramContext = "";
      }
    }
    return "";
  }

  public static int g(Context paramContext)
  {
    try
    {
      if (paramContext.checkCallingOrSelfPermission("android.permission.READ_PHONE_STATE") != 0)
        return -1;
      int i = ((TelephonyManager)paramContext.getSystemService("phone")).getNetworkType();
      return i;
    }
    catch (Throwable paramContext)
    {
      paramContext.printStackTrace();
    }
    return -1;
  }

  public static int h(Context paramContext)
  {
    if (paramContext != null)
      try
      {
        if (paramContext.checkCallingOrSelfPermission("android.permission.ACCESS_NETWORK_STATE") == 0)
        {
          paramContext = (ConnectivityManager)paramContext.getSystemService("connectivity");
          if (paramContext == null)
            return -1;
          paramContext = paramContext.getActiveNetworkInfo();
          if (paramContext == null)
            return -1;
          int i = paramContext.getType();
          return i;
        }
      }
      catch (Throwable paramContext)
      {
        paramContext.printStackTrace();
        return -1;
      }
    return -1;
  }

  public static NetworkInfo i(Context paramContext)
  {
    if (paramContext.checkCallingOrSelfPermission("android.permission.ACCESS_NETWORK_STATE") != 0)
      return null;
    paramContext = (ConnectivityManager)paramContext.getSystemService("connectivity");
    if (paramContext == null)
      return null;
    return paramContext.getActiveNetworkInfo();
  }

  static String j(Context paramContext)
  {
    try
    {
      paramContext = i(paramContext);
      if (paramContext == null)
        return null;
      paramContext = paramContext.getExtraInfo();
      return paramContext;
    }
    catch (Throwable paramContext)
    {
      paramContext.printStackTrace();
    }
    return null;
  }

  static String k(Context paramContext)
  {
    try
    {
      if ((d != null) && (!"".equals(d)))
        return d;
      DisplayMetrics localDisplayMetrics = new DisplayMetrics();
      ((WindowManager)paramContext.getSystemService("window")).getDefaultDisplay().getMetrics(localDisplayMetrics);
      int i = localDisplayMetrics.widthPixels;
      int j = localDisplayMetrics.heightPixels;
      if (j > i);
      for (paramContext = i + "*" + j; ; paramContext = j + "*" + i)
      {
        d = paramContext;
        return d;
      }
    }
    catch (Throwable paramContext)
    {
      while (true)
        paramContext.printStackTrace();
    }
  }

  public static String l(Context paramContext)
  {
    try
    {
      if ((e != null) && (!"".equals(e)))
        return e;
      if (paramContext.checkCallingOrSelfPermission("android.permission.READ_PHONE_STATE") != 0)
        return e;
      paramContext = ((TelephonyManager)paramContext.getSystemService("phone")).getDeviceId();
      e = paramContext;
      if (paramContext == null)
        e = "";
      return e;
    }
    catch (Throwable paramContext)
    {
      while (true)
        paramContext.printStackTrace();
    }
  }

  public static String m(Context paramContext)
  {
    try
    {
      if ((f != null) && (!"".equals(f)))
        return f;
      if (paramContext.checkCallingOrSelfPermission("android.permission.READ_PHONE_STATE") != 0)
        return f;
      paramContext = ((TelephonyManager)paramContext.getSystemService("phone")).getSubscriberId();
      f = paramContext;
      if (paramContext == null)
        f = "";
      paramContext = f;
      return paramContext;
    }
    catch (Throwable paramContext)
    {
      paramContext.printStackTrace();
    }
    return "";
  }

  static String n(Context paramContext)
  {
    String str;
    try
    {
      if (paramContext.checkCallingOrSelfPermission("android.permission.READ_PHONE_STATE") != 0)
        return null;
      paramContext = (TelephonyManager)paramContext.getSystemService("phone");
      str = paramContext.getSimOperatorName();
      if (TextUtils.isEmpty(str))
      {
        paramContext = paramContext.getNetworkOperatorName();
        return paramContext;
      }
    }
    catch (Throwable paramContext)
    {
      paramContext.printStackTrace();
      return "";
    }
    return str;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.loc.eh
 * JD-Core Version:    0.6.2
 */