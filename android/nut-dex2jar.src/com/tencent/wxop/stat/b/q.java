package com.tencent.wxop.stat.b;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.preference.PreferenceManager;

public final class q
{
  private static SharedPreferences a = null;

  public static int a(Context paramContext, String paramString, int paramInt)
  {
    paramString = l.a(paramContext, "wxop_" + paramString);
    return a(paramContext).getInt(paramString, paramInt);
  }

  public static long a(Context paramContext, String paramString)
  {
    paramString = l.a(paramContext, "wxop_" + paramString);
    return a(paramContext).getLong(paramString, 0L);
  }

  private static SharedPreferences a(Context paramContext)
  {
    try
    {
      SharedPreferences localSharedPreferences = paramContext.getSharedPreferences(".mta-wxop", 0);
      a = localSharedPreferences;
      if (localSharedPreferences == null)
        a = PreferenceManager.getDefaultSharedPreferences(paramContext);
      paramContext = a;
      return paramContext;
    }
    finally
    {
    }
    throw paramContext;
  }

  public static String a(Context paramContext, String paramString1, String paramString2)
  {
    paramString1 = l.a(paramContext, "wxop_" + paramString1);
    return a(paramContext).getString(paramString1, paramString2);
  }

  public static void a(Context paramContext, String paramString, long paramLong)
  {
    paramString = l.a(paramContext, "wxop_" + paramString);
    paramContext = a(paramContext).edit();
    paramContext.putLong(paramString, paramLong);
    paramContext.commit();
  }

  public static void b(Context paramContext, String paramString, int paramInt)
  {
    paramString = l.a(paramContext, "wxop_" + paramString);
    paramContext = a(paramContext).edit();
    paramContext.putInt(paramString, paramInt);
    paramContext.commit();
  }

  public static void b(Context paramContext, String paramString1, String paramString2)
  {
    paramString1 = l.a(paramContext, "wxop_" + paramString1);
    paramContext = a(paramContext).edit();
    paramContext.putString(paramString1, paramString2);
    paramContext.commit();
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.tencent.wxop.stat.b.q
 * JD-Core Version:    0.6.2
 */