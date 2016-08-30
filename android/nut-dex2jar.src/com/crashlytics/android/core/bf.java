package com.crashlytics.android.core;

import com.crashlytics.android.core.a.a.a;
import java.io.IOException;

final class bf extends bn
{
  private final long a;
  private final long b;
  private final String c;
  private final String d;

  public bf(a parama)
  {
    super(4, new bn[0]);
    this.a = parama.a;
    this.b = parama.b;
    this.c = parama.c;
    this.d = parama.d;
  }

  public final int a()
  {
    int i = f.b(1, this.a);
    int j = f.b(2, this.b);
    return i + f.b(3, b.a(this.c)) + j + f.b(4, b.a(this.d));
  }

  public final void a(f paramf)
    throws IOException
  {
    paramf.a(1, this.a);
    paramf.a(2, this.b);
    paramf.a(3, b.a(this.c));
    paramf.a(4, b.a(this.d));
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.crashlytics.android.core.bf
 * JD-Core Version:    0.6.2
 */