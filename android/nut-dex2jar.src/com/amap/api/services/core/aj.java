package com.amap.api.services.core;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.pm.Signature;
import android.os.Bundle;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Locale;

public class aj
{
  private static String a = "";
  private static String b = "";
  private static String c = "";
  private static String d = "";
  private static String e = null;

  public static String a(Context paramContext)
  {
    try
    {
      paramContext = g(paramContext);
      return paramContext;
    }
    catch (PackageManager.NameNotFoundException paramContext)
    {
      paramContext.printStackTrace();
      return d;
    }
    catch (Throwable paramContext)
    {
      while (true)
        paramContext.printStackTrace();
    }
  }

  static void a(String paramString)
  {
    d = paramString;
  }

  public static String b(Context paramContext)
  {
    try
    {
      if (!"".equals(a))
        return a;
      PackageManager localPackageManager = paramContext.getPackageManager();
      a = (String)localPackageManager.getApplicationLabel(localPackageManager.getApplicationInfo(paramContext.getPackageName(), 0));
      return a;
    }
    catch (PackageManager.NameNotFoundException paramContext)
    {
      while (true)
        ay.a(paramContext, "AppInfo", "getApplicationName");
    }
    catch (Throwable paramContext)
    {
      while (true)
        ay.a(paramContext, "AppInfo", "getApplicationName");
    }
  }

  public static String c(Context paramContext)
  {
    try
    {
      if ((b != null) && (!"".equals(b)))
        return b;
      b = paramContext.getApplicationContext().getPackageName();
      return b;
    }
    catch (Throwable paramContext)
    {
      while (true)
        ay.a(paramContext, "AppInfo", "getPackageName");
    }
  }

  public static String d(Context paramContext)
  {
    try
    {
      if (!"".equals(c))
        return c;
      c = paramContext.getPackageManager().getPackageInfo(paramContext.getPackageName(), 0).versionName;
      return c;
    }
    catch (PackageManager.NameNotFoundException paramContext)
    {
      while (true)
        ay.a(paramContext, "AppInfo", "getApplicationVersion");
    }
    catch (Throwable paramContext)
    {
      while (true)
        ay.a(paramContext, "AppInfo", "getApplicationVersion");
    }
  }

  public static String e(Context paramContext)
  {
    int i = 0;
    try
    {
      if ((e != null) && (!"".equals(e)))
        return e;
      paramContext = paramContext.getPackageManager().getPackageInfo(paramContext.getPackageName(), 64);
      byte[] arrayOfByte = paramContext.signatures[0].toByteArray();
      arrayOfByte = MessageDigest.getInstance("SHA1").digest(arrayOfByte);
      StringBuffer localStringBuffer = new StringBuffer();
      while (i < arrayOfByte.length)
      {
        String str = Integer.toHexString(arrayOfByte[i] & 0xFF).toUpperCase(Locale.US);
        if (str.length() == 1)
          localStringBuffer.append("0");
        localStringBuffer.append(str);
        localStringBuffer.append(":");
        i += 1;
      }
      localStringBuffer.append(paramContext.packageName);
      paramContext = localStringBuffer.toString();
      e = paramContext;
      return paramContext;
    }
    catch (PackageManager.NameNotFoundException paramContext)
    {
      ay.a(paramContext, "AppInfo", "getSHA1AndPackage");
      return e;
    }
    catch (NoSuchAlgorithmException paramContext)
    {
      while (true)
        ay.a(paramContext, "AppInfo", "getSHA1AndPackage");
    }
    catch (Throwable paramContext)
    {
      while (true)
        ay.a(paramContext, "AppInfo", "getSHA1AndPackage");
    }
  }

  public static String f(Context paramContext)
  {
    try
    {
      paramContext = g(paramContext);
      return paramContext;
    }
    catch (PackageManager.NameNotFoundException paramContext)
    {
      ay.a(paramContext, "AppInfo", "getKey");
      return d;
    }
    catch (Throwable paramContext)
    {
      while (true)
        ay.a(paramContext, "AppInfo", "getKey");
    }
  }

  private static String g(Context paramContext)
    throws PackageManager.NameNotFoundException
  {
    if ((d == null) || (d.equals("")))
    {
      paramContext = paramContext.getPackageManager().getApplicationInfo(paramContext.getPackageName(), 128);
      if (paramContext == null)
        return d;
      d = paramContext.metaData.getString("com.amap.api.v2.apikey");
    }
    return d;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.amap.api.services.core.aj
 * JD-Core Version:    0.6.2
 */