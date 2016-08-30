package com.nut.blehunter.ble;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;

public final class o
{
  public static int a(Context paramContext, String paramString)
  {
    return paramContext.getSharedPreferences("ble", 0).getInt(paramString, 0);
  }

  public static void a(Context paramContext, String paramString, int paramInt)
  {
    paramContext = paramContext.getSharedPreferences("ble", 0).edit();
    paramContext.putInt(paramString, paramInt);
    paramContext.commit();
  }

  public static void a(Context paramContext, String paramString, boolean paramBoolean)
  {
    paramContext = paramContext.getSharedPreferences("ble", 0).edit();
    paramContext.putBoolean(paramString, paramBoolean);
    paramContext.commit();
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.nut.blehunter.ble.o
 * JD-Core Version:    0.6.2
 */