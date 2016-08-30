package com.google.android.gms.common.b;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.pm.PackageManager;

public final class d
{
  public static Boolean a;
  public static Boolean b;
  private static Boolean c;

  @TargetApi(20)
  public static boolean a(Context paramContext)
  {
    if (c == null)
      if ((!f.a(20)) || (!paramContext.getPackageManager().hasSystemFeature("android.hardware.type.watch")))
        break label42;
    label42: for (boolean bool = true; ; bool = false)
    {
      c = Boolean.valueOf(bool);
      return c.booleanValue();
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.google.android.gms.common.b.d
 * JD-Core Version:    0.6.2
 */