package com.google.android.gms.internal;

import java.util.concurrent.atomic.AtomicReference;

public final class b
{
  private static final AtomicReference<b> a = new AtomicReference();

  public static b a()
  {
    a.compareAndSet(null, new b());
    return (b)a.get();
  }

  public static void b()
  {
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.google.android.gms.internal.b
 * JD-Core Version:    0.6.2
 */