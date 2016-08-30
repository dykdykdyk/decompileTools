package com.crashlytics.android.core;

import com.crashlytics.android.core.a.a.g;
import java.io.IOException;

final class bk extends bn
{
  private final long a;
  private final String b;
  private final String c;
  private final long d;
  private final int e;

  public bk(g paramg)
  {
    super(3, new bn[0]);
    this.a = paramg.a;
    this.b = paramg.b;
    this.c = paramg.c;
    this.d = paramg.d;
    this.e = paramg.e;
  }

  public final int a()
  {
    return f.b(1, this.a) + f.b(2, b.a(this.b)) + f.b(3, b.a(this.c)) + f.b(4, this.d) + f.c(5, this.e);
  }

  public final void a(f paramf)
    throws IOException
  {
    paramf.a(1, this.a);
    paramf.a(2, b.a(this.b));
    paramf.a(3, b.a(this.c));
    paramf.a(4, this.d);
    paramf.a(5, this.e);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.crashlytics.android.core.bk
 * JD-Core Version:    0.6.2
 */