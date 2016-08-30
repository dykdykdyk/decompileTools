package com.baidu.android.pushservice.util;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.util.Log;

public class n
{
  public static String a(Context paramContext, String paramString1, String paramString2)
  {
    return paramContext.getSharedPreferences(paramString1, 5).getString(paramString2, "");
  }

  public static void a(Context paramContext, String paramString1, String paramString2, int paramInt)
  {
    try
    {
      paramContext = paramContext.getSharedPreferences(paramString1, 5).edit();
      paramContext.putInt(paramString2, paramInt);
      paramContext.commit();
      return;
    }
    catch (Exception paramContext)
    {
      Log.e("WorldReadableParams", paramContext.getMessage());
    }
  }

  public static void a(Context paramContext, String paramString1, String paramString2, String paramString3)
  {
    paramContext = paramContext.getSharedPreferences(paramString1, 5).edit();
    paramContext.putString(paramString2, paramString3);
    paramContext.commit();
  }

  public static int b(Context paramContext, String paramString1, String paramString2, int paramInt)
  {
    return paramContext.getSharedPreferences(paramString1, 5).getInt(paramString2, paramInt);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.baidu.android.pushservice.util.n
 * JD-Core Version:    0.6.2
 */