package com.google.android.gms.internal;

import android.content.Context;

public final class ai
{
  private static ai b = new ai();
  private ah a = null;

  public static ah a(Context paramContext)
  {
    return b.b(paramContext);
  }

  private ah b(Context paramContext)
  {
    try
    {
      if (this.a == null)
        if (paramContext.getApplicationContext() != null)
          break label37;
      while (true)
      {
        this.a = new ah(paramContext);
        paramContext = this.a;
        return paramContext;
        label37: paramContext = paramContext.getApplicationContext();
      }
    }
    finally
    {
    }
    throw paramContext;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.google.android.gms.internal.ai
 * JD-Core Version:    0.6.2
 */