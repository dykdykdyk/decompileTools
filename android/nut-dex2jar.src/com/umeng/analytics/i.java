package com.umeng.analytics;

public final class i extends n
{
  private long a;
  private long b = 0L;

  public i(int paramInt)
  {
    this.a = paramInt;
    this.b = System.currentTimeMillis();
  }

  public final boolean a()
  {
    return System.currentTimeMillis() - this.b < this.a;
  }

  public final boolean a(boolean paramBoolean)
  {
    return System.currentTimeMillis() - this.b >= this.a;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.umeng.analytics.i
 * JD-Core Version:    0.6.2
 */