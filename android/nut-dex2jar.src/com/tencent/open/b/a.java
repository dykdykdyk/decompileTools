package com.tencent.open.b;

import android.content.ContentResolver;
import android.content.Context;
import android.database.Cursor;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.Uri;
import com.tencent.open.a.h;

public final class a
{
  protected static final Uri a = Uri.parse("content://telephony/carriers/preferapn");

  public static String a(Context paramContext)
  {
    int i = e(paramContext);
    if (i == 2)
      paramContext = "wifi";
    String str;
    do
    {
      return paramContext;
      if (i == 1)
        return "cmwap";
      if (i == 4)
        return "cmnet";
      if (i == 16)
        return "uniwap";
      if (i == 8)
        return "uninet";
      if (i == 64)
        return "wap";
      if (i == 32)
        return "net";
      if (i == 512)
        return "ctwap";
      if (i == 256)
        return "ctnet";
      if (i == 2048)
        return "3gnet";
      if (i == 1024)
        return "3gwap";
      str = b(paramContext);
      if (str == null)
        break;
      paramContext = str;
    }
    while (str.length() != 0);
    return "none";
  }

  public static String b(Context paramContext)
  {
    String str;
    try
    {
      paramContext = paramContext.getContentResolver().query(a, null, null, null, null);
      if (paramContext == null)
        return null;
      paramContext.moveToFirst();
      if (paramContext.isAfterLast())
      {
        if (paramContext == null)
          break label135;
        paramContext.close();
        break label135;
      }
      str = paramContext.getString(paramContext.getColumnIndex("apn"));
      if (paramContext != null)
      {
        paramContext.close();
        return str;
      }
    }
    catch (SecurityException paramContext)
    {
      h.e("openSDK_LOG.APNUtil", "getApn has exception: " + paramContext.getMessage());
      return "";
    }
    catch (Exception paramContext)
    {
      while (true)
        h.e("openSDK_LOG.APNUtil", "getApn has exception: " + paramContext.getMessage());
    }
    return str;
    label135: return null;
  }

  public static String c(Context paramContext)
  {
    paramContext = (ConnectivityManager)paramContext.getSystemService("connectivity");
    if (paramContext == null)
      return "MOBILE";
    paramContext = paramContext.getActiveNetworkInfo();
    if (paramContext != null)
      return paramContext.getTypeName();
    return "MOBILE";
  }

  private static String d(Context paramContext)
  {
    try
    {
      Cursor localCursor = paramContext.getContentResolver().query(a, null, null, null, null);
      if (localCursor == null)
        return null;
      localCursor.moveToFirst();
      if (localCursor.isAfterLast())
      {
        if (localCursor == null)
          break label109;
        localCursor.close();
        break label109;
      }
      String str = localCursor.getString(localCursor.getColumnIndex("proxy"));
      paramContext = str;
      if (localCursor != null)
      {
        localCursor.close();
        return str;
      }
    }
    catch (SecurityException paramContext)
    {
      h.e("openSDK_LOG.APNUtil", "getApnProxy has exception: " + paramContext.getMessage());
      paramContext = "";
    }
    return paramContext;
    label109: return null;
  }

  private static int e(Context paramContext)
  {
    try
    {
      Object localObject = (ConnectivityManager)paramContext.getSystemService("connectivity");
      if (localObject == null)
        return 128;
      localObject = ((ConnectivityManager)localObject).getActiveNetworkInfo();
      if (localObject == null)
        return 128;
      if (((NetworkInfo)localObject).getTypeName().toUpperCase().equals("WIFI"))
        return 2;
      localObject = ((NetworkInfo)localObject).getExtraInfo().toLowerCase();
      if (((String)localObject).startsWith("cmwap"))
        return 1;
      if ((((String)localObject).startsWith("cmnet")) || (((String)localObject).startsWith("epc.tmobile.com")))
        break label252;
      if (((String)localObject).startsWith("uniwap"))
        return 16;
      if (((String)localObject).startsWith("uninet"))
        return 8;
      if (((String)localObject).startsWith("wap"))
        return 64;
      if (((String)localObject).startsWith("net"))
        return 32;
      if (((String)localObject).startsWith("ctwap"))
        return 512;
      if (((String)localObject).startsWith("ctnet"))
        return 256;
      if (((String)localObject).startsWith("3gwap"))
        return 1024;
      if (((String)localObject).startsWith("3gnet"))
        return 2048;
      if (((String)localObject).startsWith("#777"))
      {
        paramContext = d(paramContext);
        if (paramContext != null)
        {
          int i = paramContext.length();
          if (i > 0)
            return 512;
        }
        return 256;
      }
    }
    catch (Exception paramContext)
    {
      h.e("openSDK_LOG.APNUtil", "getMProxyType has exception: " + paramContext.getMessage());
    }
    return 128;
    label252: return 4;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.tencent.open.b.a
 * JD-Core Version:    0.6.2
 */