package com.twitter.sdk.android.core.internal;

import java.util.Calendar;
import java.util.TimeZone;

public final class e
{
  public boolean a;
  public long b;
  private final Calendar c = Calendar.getInstance(TimeZone.getTimeZone("UTC"));

  public final boolean a(long paramLong)
  {
    boolean bool = true;
    while (true)
    {
      int j;
      try
      {
        int i;
        if (paramLong - this.b > 21600000L)
        {
          i = 1;
          long l = this.b;
          this.c.setTimeInMillis(paramLong);
          j = this.c.get(6);
          int k = this.c.get(1);
          this.c.setTimeInMillis(l);
          int m = this.c.get(6);
          int n = this.c.get(1);
          if ((j == m) && (k == n))
          {
            j = 1;
            break label161;
            if ((this.a) || ((i == 0) && (j == 0)))
              continue;
            this.a = true;
            return bool;
          }
        }
        else
        {
          i = 0;
          continue;
        }
        j = 0;
        break label161;
        j = 0;
        continue;
        bool = false;
        continue;
      }
      finally
      {
      }
      label161: if (j == 0)
        j = 1;
    }
  }

  public final void b(long paramLong)
  {
    try
    {
      this.a = false;
      this.b = paramLong;
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.twitter.sdk.android.core.internal.e
 * JD-Core Version:    0.6.2
 */