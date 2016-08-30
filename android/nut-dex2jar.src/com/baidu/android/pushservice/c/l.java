package com.baidu.android.pushservice.c;

import android.content.Context;

public class l extends e
{
  private static volatile l d;

  private l(Context paramContext)
  {
    super(paramContext, c.c);
  }

  public static l a(Context paramContext)
  {
    try
    {
      if (d == null)
        d = new l(paramContext);
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
 * Qualified Name:     com.baidu.android.pushservice.c.l
 * JD-Core Version:    0.6.2
 */