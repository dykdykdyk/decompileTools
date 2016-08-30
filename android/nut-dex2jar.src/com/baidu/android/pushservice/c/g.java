package com.baidu.android.pushservice.c;

import android.content.Context;

public class g extends e
{
  private static volatile g d;

  private g(Context paramContext)
  {
    super(paramContext, c.d);
  }

  public static g a(Context paramContext)
  {
    try
    {
      if (d == null)
        d = new g(paramContext);
      while (true)
      {
        paramContext = d;
        return paramContext;
        d.b = paramContext.getApplicationContext();
      }
    }
    finally
    {
    }
    throw paramContext;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.baidu.android.pushservice.c.g
 * JD-Core Version:    0.6.2
 */