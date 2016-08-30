package com.sina.weibo.sdk.d;

import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.pm.ResolveInfo;
import android.content.pm.Signature;

public final class o
{
  public static boolean a(Context paramContext, Intent paramIntent)
  {
    paramContext = paramContext.getPackageManager();
    if (paramContext == null);
    while (true)
    {
      return false;
      paramIntent = paramContext.resolveActivity(paramIntent, 0);
      if (paramIntent != null)
      {
        paramIntent = paramIntent.activityInfo.packageName;
        try
        {
          paramContext = paramContext.getPackageInfo(paramIntent, 64).signatures;
          if (paramContext != null)
          {
            int j = paramContext.length;
            int i = 0;
            while (i < j)
            {
              boolean bool = "18da2bf10352443a00a5e046d9fca6bd".equals(j.a(paramContext[i].toByteArray()));
              if (bool)
                return true;
              i += 1;
            }
          }
        }
        catch (PackageManager.NameNotFoundException paramContext)
        {
          paramContext.printStackTrace();
          return false;
        }
        catch (Exception paramContext)
        {
          paramContext.printStackTrace();
        }
      }
    }
    return false;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.sina.weibo.sdk.d.o
 * JD-Core Version:    0.6.2
 */