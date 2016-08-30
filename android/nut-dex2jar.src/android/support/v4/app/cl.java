package android.support.v4.app;

import android.os.Build.VERSION;
import android.os.Bundle;

public final class cl extends ct
{
  public static final cu a;
  private static final cn g;
  private final String b;
  private final CharSequence c;
  private final CharSequence[] d;
  private final boolean e;
  private final Bundle f;

  static
  {
    if (Build.VERSION.SDK_INT >= 20)
      g = new co();
    while (true)
    {
      a = new cm();
      return;
      if (Build.VERSION.SDK_INT >= 16)
        g = new cq();
      else
        g = new cp();
    }
  }

  public final String a()
  {
    return this.b;
  }

  public final CharSequence b()
  {
    return this.c;
  }

  public final CharSequence[] c()
  {
    return this.d;
  }

  public final boolean d()
  {
    return this.e;
  }

  public final Bundle e()
  {
    return this.f;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     android.support.v4.app.cl
 * JD-Core Version:    0.6.2
 */