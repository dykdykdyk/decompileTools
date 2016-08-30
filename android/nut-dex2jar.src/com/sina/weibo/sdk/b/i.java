package com.sina.weibo.sdk.b;

import android.content.Context;
import android.content.SharedPreferences;
import java.util.concurrent.locks.ReentrantLock;

public class i
{
  private static final String a = i.class.getName();
  private static i c;
  private Context b;
  private String d;
  private volatile ReentrantLock e = new ReentrantLock(true);
  private e f;
  private b g;

  private i(Context paramContext, String paramString)
  {
    this.b = paramContext.getApplicationContext();
    this.f = new e(this.b);
    this.g = new b(this.b);
    this.d = paramString;
  }

  public static i a(Context paramContext, String paramString)
  {
    try
    {
      if (c == null)
        c = new i(paramContext, paramString);
      paramContext = c;
      return paramContext;
    }
    finally
    {
    }
    throw paramContext;
  }

  public final void a()
  {
    long l1 = 3600000L;
    long l2 = 0L;
    SharedPreferences localSharedPreferences = this.b.getSharedPreferences("com_sina_weibo_sdk", 0);
    if (localSharedPreferences != null)
      l1 = localSharedPreferences.getLong("frequency_get_cmd", 3600000L);
    if (localSharedPreferences != null)
      l2 = localSharedPreferences.getLong("last_time_get_cmd", 0L);
    l2 = System.currentTimeMillis() - l2;
    if (l2 < l1)
    {
      com.sina.weibo.sdk.d.i.e(a, String.format("it's only %d ms from last time get cmd", new Object[] { Long.valueOf(l2) }));
      return;
    }
    new Thread(new j(this, localSharedPreferences)).start();
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.sina.weibo.sdk.b.i
 * JD-Core Version:    0.6.2
 */