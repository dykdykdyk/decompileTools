package com.google.android.gms.common;

import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.text.TextUtils;
import com.google.android.gms.common.b.d;
import com.google.android.gms.common.internal.aw;

public class g
{
  private static final g a = new g();
  public static final int b = o.GOOGLE_PLAY_SERVICES_VERSION_CODE;

  private static String a(Context paramContext, String paramString)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("gcore_");
    localStringBuilder.append(b);
    localStringBuilder.append("-");
    if (!TextUtils.isEmpty(paramString))
      localStringBuilder.append(paramString);
    localStringBuilder.append("-");
    if (paramContext != null)
      localStringBuilder.append(paramContext.getPackageName());
    localStringBuilder.append("-");
    if (paramContext != null);
    try
    {
      localStringBuilder.append(paramContext.getPackageManager().getPackageInfo(paramContext.getPackageName(), 0).versionCode);
      label94: return localStringBuilder.toString();
    }
    catch (PackageManager.NameNotFoundException paramContext)
    {
      break label94;
    }
  }

  public static g b()
  {
    return a;
  }

  public int a(Context paramContext)
  {
    int j = o.isGooglePlayServicesAvailable(paramContext);
    int i = j;
    if (o.zzc(paramContext, j))
      i = 18;
    return i;
  }

  public PendingIntent a(Context paramContext, int paramInt1, int paramInt2)
  {
    return a(paramContext, paramInt1, paramInt2, null);
  }

  public PendingIntent a(Context paramContext, int paramInt1, int paramInt2, String paramString)
  {
    int i = paramInt1;
    if (d.a(paramContext))
    {
      i = paramInt1;
      if (paramInt1 == 2)
        i = 42;
    }
    paramString = a(paramContext, i, paramString);
    if (paramString == null)
      return null;
    return PendingIntent.getActivity(paramContext, paramInt2, paramString, 268435456);
  }

  public Intent a(Context paramContext, int paramInt, String paramString)
  {
    switch (paramInt)
    {
    default:
      return null;
    case 1:
    case 2:
      return aw.a("com.google.android.gms", a(paramContext, paramString));
    case 42:
      return aw.a();
    case 3:
    }
    return aw.a("com.google.android.gms");
  }

  public boolean a(int paramInt)
  {
    return o.isUserRecoverableError(paramInt);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.google.android.gms.common.g
 * JD-Core Version:    0.6.2
 */