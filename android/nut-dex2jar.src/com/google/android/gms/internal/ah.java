package com.google.android.gms.internal;

import android.annotation.TargetApi;
import android.app.AppOpsManager;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import com.google.android.gms.common.b.f;

public final class ah
{
  protected final Context a;

  public ah(Context paramContext)
  {
    this.a = paramContext;
  }

  public final ApplicationInfo a(String paramString, int paramInt)
    throws PackageManager.NameNotFoundException
  {
    return this.a.getPackageManager().getApplicationInfo(paramString, paramInt);
  }

  public final PackageInfo a(String paramString)
    throws PackageManager.NameNotFoundException
  {
    return this.a.getPackageManager().getPackageInfo(paramString, 64);
  }

  @TargetApi(19)
  public final boolean a(int paramInt, String paramString)
  {
    boolean bool2 = false;
    if (f.a(19));
    try
    {
      ((AppOpsManager)this.a.getSystemService("appops")).checkPackage(paramInt, paramString);
      boolean bool1 = true;
      String[] arrayOfString;
      do
      {
        return bool1;
        arrayOfString = this.a.getPackageManager().getPackagesForUid(paramInt);
        bool1 = bool2;
      }
      while (arrayOfString == null);
      paramInt = 0;
      while (true)
      {
        bool1 = bool2;
        if (paramInt >= arrayOfString.length)
          break;
        if (paramString.equals(arrayOfString[paramInt]))
          return true;
        paramInt += 1;
      }
    }
    catch (SecurityException paramString)
    {
    }
    return false;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.google.android.gms.internal.ah
 * JD-Core Version:    0.6.2
 */