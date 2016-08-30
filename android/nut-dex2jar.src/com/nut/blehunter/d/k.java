package com.nut.blehunter.d;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import com.google.gson.JsonSyntaxException;
import com.nut.blehunter.e;
import com.nut.blehunter.entity.Position;

public final class k
{
  public static Position a(Context paramContext)
  {
    try
    {
      paramContext = (Position)e.a(b(paramContext, "save_latest_location", ""), Position.class);
      return paramContext;
    }
    catch (JsonSyntaxException paramContext)
    {
    }
    return null;
  }

  public static void a(Context paramContext, long paramLong)
  {
    long l = System.currentTimeMillis();
    paramContext = d(paramContext).edit();
    paramContext.putLong("temp_not_disturb_time", l + paramLong);
    paramContext.commit();
  }

  public static void a(Context paramContext, String paramString, int paramInt)
  {
    paramContext = paramContext.getSharedPreferences("item_new_found_count", 0).edit();
    paramContext.putInt(paramString, paramInt);
    paramContext.commit();
  }

  public static void a(Context paramContext, String paramString1, String paramString2)
  {
    paramContext = d(paramContext).edit();
    paramContext.putString(paramString1, paramString2);
    paramContext.commit();
  }

  public static void a(Context paramContext, String paramString, boolean paramBoolean)
  {
    paramContext = d(paramContext).edit();
    paramContext.putBoolean(paramString, paramBoolean);
    paramContext.commit();
  }

  public static long b(Context paramContext)
  {
    long l1 = 0L;
    long l2 = d(paramContext).getLong("temp_not_disturb_time", 0L);
    long l3 = System.currentTimeMillis();
    if (l2 > l3)
      l1 = l2 - l3;
    return l1;
  }

  public static String b(Context paramContext, String paramString1, String paramString2)
  {
    return d(paramContext).getString(paramString1, paramString2);
  }

  public static void b(Context paramContext, String paramString, int paramInt)
  {
    paramContext = d(paramContext).edit();
    paramContext.putInt(paramString, paramInt);
    paramContext.commit();
  }

  public static boolean b(Context paramContext, String paramString, boolean paramBoolean)
  {
    return d(paramContext).getBoolean(paramString, paramBoolean);
  }

  public static boolean c(Context paramContext)
  {
    return b(paramContext) > 0L;
  }

  public static SharedPreferences d(Context paramContext)
  {
    return paramContext.getApplicationContext().getSharedPreferences("nut_tracker", 0);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.nut.blehunter.d.k
 * JD-Core Version:    0.6.2
 */