package com.google.android.gms.common.internal;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager.NameNotFoundException;
import android.os.Bundle;
import android.util.Log;
import com.google.android.gms.internal.ah;
import com.google.android.gms.internal.ai;

public final class bm
{
  private static Object a = new Object();
  private static boolean b;
  private static String c;
  private static int d;

  public static int a(Context paramContext)
  {
    while (true)
    {
      String str;
      synchronized (a)
      {
        if (b)
          return d;
        b = true;
        str = paramContext.getPackageName();
        paramContext = ai.a(paramContext);
      }
      try
      {
        paramContext = paramContext.a(str, 128).metaData;
        if (paramContext == null)
        {
          continue;
          paramContext = finally;
          throw paramContext;
        }
        c = paramContext.getString("com.google.app.id");
        d = paramContext.getInt("com.google.android.gms.version");
      }
      catch (PackageManager.NameNotFoundException paramContext)
      {
        while (true)
          Log.wtf("MetadataValueReader", "This should never happen.", paramContext);
      }
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.google.android.gms.common.internal.bm
 * JD-Core Version:    0.6.2
 */