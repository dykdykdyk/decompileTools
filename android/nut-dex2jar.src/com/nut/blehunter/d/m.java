package com.nut.blehunter.d;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Build.VERSION;
import java.util.Locale;

public final class m
{
  public static String a(Context paramContext)
  {
    try
    {
      paramContext = paramContext.getResources().getConfiguration().locale.getCountry();
      return paramContext;
    }
    catch (Exception paramContext)
    {
      paramContext.printStackTrace();
    }
    return Locale.getDefault().getCountry();
  }

  public static String b(Context paramContext)
  {
    try
    {
      paramContext = paramContext.getResources().getConfiguration().locale.getLanguage();
      return paramContext;
    }
    catch (Exception paramContext)
    {
      paramContext.printStackTrace();
      if (Build.VERSION.SDK_INT >= 21)
        return Locale.getDefault().toLanguageTag();
    }
    return Locale.getDefault().getLanguage();
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.nut.blehunter.d.m
 * JD-Core Version:    0.6.2
 */