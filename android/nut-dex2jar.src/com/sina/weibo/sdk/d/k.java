package com.sina.weibo.sdk.d;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;

public final class k
{
  public static String a(Context paramContext)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("Android");
    localStringBuilder.append("__");
    localStringBuilder.append("weibo");
    localStringBuilder.append("__");
    localStringBuilder.append("sdk");
    localStringBuilder.append("__");
    try
    {
      localStringBuilder.append(paramContext.getPackageManager().getPackageInfo(paramContext.getPackageName(), 16).versionName.replaceAll("\\s+", "_"));
      return localStringBuilder.toString();
    }
    catch (Exception paramContext)
    {
      while (true)
        localStringBuilder.append("unknown");
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.sina.weibo.sdk.d.k
 * JD-Core Version:    0.6.2
 */