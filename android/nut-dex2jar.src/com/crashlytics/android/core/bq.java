package com.crashlytics.android.core;

import java.io.IOException;

final class bq extends bn
{
  private final String a;
  private final int b;

  public bq(com.crashlytics.android.core.a.a.f paramf, bo parambo)
  {
    super(1, new bn[] { parambo });
    this.a = paramf.a;
    this.b = paramf.b;
  }

  private boolean c()
  {
    return (this.a != null) && (this.a.length() > 0);
  }

  public final int a()
  {
    if (c());
    for (int i = f.b(1, b.a(this.a)); ; i = 0)
      return i + f.c(2, this.b);
  }

  public final void a(f paramf)
    throws IOException
  {
    if (c())
      paramf.a(1, b.a(this.a));
    paramf.a(2, this.b);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.crashlytics.android.core.bq
 * JD-Core Version:    0.6.2
 */