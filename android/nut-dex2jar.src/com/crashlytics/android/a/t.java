package com.crashlytics.android.a;

import io.fabric.sdk.android.services.concurrency.a.a;
import java.util.Random;

final class t
  implements a
{
  final a a;
  final Random b;
  final double c;

  public t(a parama)
  {
    this(parama, new Random());
  }

  private t(a parama, Random paramRandom)
  {
    if (parama == null)
      throw new NullPointerException("backoff must not be null");
    this.a = parama;
    this.c = 0.1D;
    this.b = paramRandom;
  }

  public final long a(int paramInt)
  {
    double d = 1.0D - this.c;
    return ()((d + (this.c + 1.0D - d) * this.b.nextDouble()) * this.a.a(paramInt));
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.crashlytics.android.a.t
 * JD-Core Version:    0.6.2
 */