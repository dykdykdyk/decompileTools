package com.sina.weibo.sdk.d;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.pm.Signature;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Build;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.text.TextUtils;
import java.io.UnsupportedEncodingException;
import java.net.MalformedURLException;
import java.net.URI;
import java.net.URL;
import java.net.URLDecoder;
import java.util.Locale;

public final class p
{
  public static Bundle a(String paramString)
  {
    try
    {
      paramString = new URL(paramString);
      Bundle localBundle = c(paramString.getQuery());
      localBundle.putAll(c(paramString.getRef()));
      return localBundle;
    }
    catch (MalformedURLException paramString)
    {
    }
    return new Bundle();
  }

  public static String a()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append(Build.MANUFACTURER).append("-").append(Build.MODEL);
    localStringBuilder.append("__");
    localStringBuilder.append("weibosdk");
    localStringBuilder.append("__");
    try
    {
      localStringBuilder.append("0031405000".replaceAll("\\s+", "_"));
      localStringBuilder.append("__android__android").append(Build.VERSION.RELEASE);
      return localStringBuilder.toString();
    }
    catch (Exception localException)
    {
      while (true)
        localStringBuilder.append("unknown");
    }
  }

  public static String a(Context paramContext, String paramString)
  {
    while (true)
    {
      int i;
      try
      {
        paramContext = paramContext.getPackageManager().getPackageInfo(paramString, 64);
        i = 0;
        if (i >= paramContext.signatures.length)
          return null;
      }
      catch (PackageManager.NameNotFoundException paramContext)
      {
        return null;
      }
      paramString = paramContext.signatures[i].toByteArray();
      if (paramString != null)
        return j.a(paramString);
      i += 1;
    }
  }

  public static boolean a(Context paramContext)
  {
    try
    {
      paramContext = paramContext.getResources().getConfiguration().locale;
      boolean bool;
      if ((!Locale.CHINA.equals(paramContext)) && (!Locale.CHINESE.equals(paramContext)) && (!Locale.SIMPLIFIED_CHINESE.equals(paramContext)))
        bool = Locale.TAIWAN.equals(paramContext);
      return bool;
    }
    catch (Exception paramContext)
    {
    }
    return true;
  }

  public static Bundle b(String paramString)
  {
    try
    {
      paramString = c(new URI(paramString).getQuery());
      return paramString;
    }
    catch (Exception paramString)
    {
    }
    return new Bundle();
  }

  public static String b(Context paramContext, String paramString)
  {
    paramContext = b.a(paramContext);
    if (TextUtils.isEmpty(paramString));
    for (paramContext = null; paramContext != null; paramContext = paramContext.a)
    {
      return paramContext.a;
      i.c("AidTask", "getAidSync ");
      if (paramContext.a == null)
        paramContext.a(paramString);
    }
    return "";
  }

  private static Bundle c(String paramString)
  {
    Bundle localBundle = new Bundle();
    int j;
    int i;
    if (paramString != null)
    {
      paramString = paramString.split("&");
      j = paramString.length;
      i = 0;
    }
    while (true)
    {
      if (i >= j)
        return localBundle;
      String[] arrayOfString = paramString[i].split("=");
      try
      {
        localBundle.putString(URLDecoder.decode(arrayOfString[0], "UTF-8"), URLDecoder.decode(arrayOfString[1], "UTF-8"));
        i += 1;
      }
      catch (UnsupportedEncodingException localUnsupportedEncodingException)
      {
        while (true)
          localUnsupportedEncodingException.printStackTrace();
      }
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.sina.weibo.sdk.d.p
 * JD-Core Version:    0.6.2
 */