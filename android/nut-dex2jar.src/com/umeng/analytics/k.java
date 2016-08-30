package com.umeng.analytics;

import u.aly.x;

public final class k extends n
{
  private static long a = 90000L;
  private static long b = 86400000L;
  private long c;
  private x d;

  public k(x paramx, long paramLong)
  {
    this.d = paramx;
    a(paramLong);
  }

  public final void a(long paramLong)
  {
    if ((paramLong >= a) && (paramLong <= b))
    {
      this.c = paramLong;
      return;
    }
    this.c = a;
  }

  public final boolean a(boolean paramBoolean)
  {
    return System.currentTimeMillis() - this.d.c >= this.c;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.umeng.analytics.k
 * JD-Core Version:    0.6.2
 */