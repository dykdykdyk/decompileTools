package com.tencent.open.b;

import android.content.Context;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.os.Build;
import android.os.Build.VERSION;
import android.os.Environment;
import android.provider.Settings.Secure;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.WindowManager;
import com.tencent.open.a.h;
import com.tencent.open.utils.g;
import java.util.Locale;

public final class c
{
  static String a = null;
  static String b = null;
  static String c = null;
  private static String d;
  private static String e = null;

  public static String a()
  {
    try
    {
      Object localObject = g.a();
      if (localObject == null)
        return "";
      localObject = (WifiManager)((Context)localObject).getSystemService("wifi");
      if (localObject == null)
        return "";
      localObject = ((WifiManager)localObject).getConnectionInfo();
      if (localObject == null)
        return "";
      localObject = ((WifiInfo)localObject).getMacAddress();
      return localObject;
    }
    catch (SecurityException localSecurityException)
    {
      h.b("openSDK_LOG.MobileInfoUtil", "getLocalMacAddress>>>", localSecurityException);
    }
    return "";
  }

  public static String a(Context paramContext)
  {
    if (!TextUtils.isEmpty(d))
      return d;
    if (paramContext == null)
      return "";
    d = "";
    paramContext = (WindowManager)paramContext.getSystemService("window");
    if (paramContext != null)
    {
      int i = paramContext.getDefaultDisplay().getWidth();
      int j = paramContext.getDefaultDisplay().getHeight();
      d = i + "x" + j;
    }
    return d;
  }

  public static String b()
  {
    return Locale.getDefault().getLanguage();
  }

  public static String b(Context paramContext)
  {
    if ((a != null) && (a.length() > 0))
      return a;
    if (paramContext == null)
      return "";
    try
    {
      paramContext = ((TelephonyManager)paramContext.getSystemService("phone")).getDeviceId();
      a = paramContext;
      return paramContext;
    }
    catch (Exception paramContext)
    {
    }
    return "";
  }

  public static String c(Context paramContext)
  {
    if ((b != null) && (b.length() > 0))
      return b;
    if (paramContext == null)
      return "";
    try
    {
      paramContext = ((TelephonyManager)paramContext.getSystemService("phone")).getSimSerialNumber();
      b = paramContext;
      return paramContext;
    }
    catch (Exception paramContext)
    {
    }
    return "";
  }

  public static String d(Context paramContext)
  {
    if ((c != null) && (c.length() > 0))
      return c;
    if (paramContext == null)
      return "";
    try
    {
      paramContext = Settings.Secure.getString(paramContext.getContentResolver(), "android_id");
      c = paramContext;
      return paramContext;
    }
    catch (Exception paramContext)
    {
    }
    return "";
  }

  public static String e(Context paramContext)
  {
    try
    {
      Object localObject;
      DisplayMetrics localDisplayMetrics;
      StringBuilder localStringBuilder;
      if (e == null)
      {
        localObject = (WindowManager)paramContext.getSystemService("window");
        localDisplayMetrics = new DisplayMetrics();
        ((WindowManager)localObject).getDefaultDisplay().getMetrics(localDisplayMetrics);
        localStringBuilder = new StringBuilder();
        localStringBuilder.append("imei=").append(b(paramContext)).append('&');
        localStringBuilder.append("model=").append(Build.MODEL).append('&');
        localStringBuilder.append("os=").append(Build.VERSION.RELEASE).append('&');
        localStringBuilder.append("apilevel=").append(Build.VERSION.SDK_INT).append('&');
        String str = a.b(paramContext);
        localObject = str;
        if (str == null)
          localObject = "";
        localStringBuilder.append("network=").append((String)localObject).append('&');
        localObject = localStringBuilder.append("sdcard=");
        if (!Environment.getExternalStorageState().equals("mounted"))
          break label267;
      }
      label267: for (int i = 1; ; i = 0)
      {
        ((StringBuilder)localObject).append(i).append('&');
        localStringBuilder.append("display=").append(localDisplayMetrics.widthPixels).append('*').append(localDisplayMetrics.heightPixels).append('&');
        localStringBuilder.append("manu=").append(Build.MANUFACTURER).append("&");
        localStringBuilder.append("wifi=").append(a.c(paramContext));
        e = localStringBuilder.toString();
        paramContext = e;
        return paramContext;
      }
    }
    catch (Exception paramContext)
    {
    }
    return null;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.tencent.open.b.c
 * JD-Core Version:    0.6.2
 */