package com.crashlytics.android.core;

import com.crashlytics.android.core.a.a.e;
import java.io.IOException;

final class bp extends bn
{
  private final String a;
  private final String b;
  private final long c;

  public bp(e parame)
  {
    super(3, new bn[0]);
    this.a = parame.a;
    this.b = parame.b;
    this.c = parame.c;
  }

  public final int a()
  {
    return f.b(1, b.a(this.a)) + f.b(2, b.a(this.b)) + f.b(3, this.c);
  }

  public final void a(f paramf)
    throws IOException
  {
    paramf.a(1, b.a(this.a));
    paramf.a(2, b.a(this.b));
    paramf.a(3, this.c);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.crashlytics.android.core.bp
 * JD-Core Version:    0.6.2
 */