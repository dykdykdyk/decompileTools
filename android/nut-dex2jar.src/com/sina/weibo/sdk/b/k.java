package com.sina.weibo.sdk.b;

import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;

final class k
{
  public static void a(SharedPreferences paramSharedPreferences, long paramLong)
  {
    if ((paramSharedPreferences != null) && (paramLong > 0L))
    {
      paramSharedPreferences = paramSharedPreferences.edit();
      paramSharedPreferences.putLong("frequency_get_cmd", paramLong);
      paramSharedPreferences.commit();
    }
  }

  public static void b(SharedPreferences paramSharedPreferences, long paramLong)
  {
    if (paramSharedPreferences != null)
    {
      paramSharedPreferences = paramSharedPreferences.edit();
      paramSharedPreferences.putLong("last_time_get_cmd", paramLong);
      paramSharedPreferences.commit();
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.sina.weibo.sdk.b.k
 * JD-Core Version:    0.6.2
 */