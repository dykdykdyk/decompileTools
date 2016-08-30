package com.sina.weibo.sdk;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.pm.Signature;
import android.text.TextUtils;
import com.sina.weibo.sdk.d.i;
import com.sina.weibo.sdk.d.j;

public class a
{
  private static final String a = a.class.getName();

  public static boolean a(Context paramContext, String paramString)
  {
    if (TextUtils.isEmpty(paramString));
    while (true)
    {
      return false;
      try
      {
        paramContext = paramContext.getPackageManager().getPackageInfo(paramString, 64);
        paramContext = paramContext.signatures;
        if (paramContext != null)
        {
          int j = paramContext.length;
          int i = 0;
          while (i < j)
          {
            if ("18da2bf10352443a00a5e046d9fca6bd".equals(j.a(paramContext[i].toByteArray())))
            {
              i.a(a, "check pass");
              return true;
            }
            i += 1;
          }
        }
      }
      catch (PackageManager.NameNotFoundException paramContext)
      {
      }
    }
    return false;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.sina.weibo.sdk.a
 * JD-Core Version:    0.6.2
 */