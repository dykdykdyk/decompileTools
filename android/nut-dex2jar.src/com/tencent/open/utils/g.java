package com.tencent.open.utils;

import android.content.Context;

public final class g
{
  public static Context a;

  public static final Context a()
  {
    if (a == null)
      return null;
    return a;
  }

  public static final String b()
  {
    if (a() == null)
      return "";
    return a().getPackageName();
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.tencent.open.utils.g
 * JD-Core Version:    0.6.2
 */