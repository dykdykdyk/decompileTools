package u.aly;

import android.content.Context;
import com.umeng.analytics.a;
import com.umeng.analytics.aa;

public final class ar
  implements t
{
  private static ar l = null;
  aa a;
  x b;
  long c = 1296000000L;
  int d = 10000;
  long e = 0L;
  long f = 0L;
  Context g;
  private final long h = 1296000000L;
  private final long i = 129600000L;
  private final int j = 1800000;
  private final int k = 10000;

  private ar(Context paramContext, x paramx)
  {
    this.g = paramContext;
    this.a = aa.a(paramContext);
    this.b = paramx;
  }

  public static ar a(Context paramContext, x paramx)
  {
    try
    {
      if (l == null)
      {
        paramx = new ar(paramContext, paramx);
        l = paramx;
        paramx.a(fj.a(paramContext).b);
      }
      paramContext = l;
      return paramContext;
    }
    finally
    {
    }
    throw paramContext;
  }

  public final void a(fk paramfk)
  {
    long l1 = 1296000000L;
    int m;
    if (paramfk.f == -1)
    {
      this.c = l1;
      if (paramfk.a != -1)
        break label75;
      m = 0;
    }
    while (true)
      if (m == 0)
      {
        if ((a.k <= 0) || (a.k > 1800000))
        {
          this.d = 10000;
          return;
          if (paramfk.f < 48)
            break;
          l1 = 3600000L * paramfk.f;
          break;
          label75: if ((paramfk.a < 0) || (paramfk.a > 1800))
          {
            m = 0;
            continue;
          }
          m = paramfk.a * 1000;
          continue;
        }
        this.d = a.k;
        return;
      }
    this.d = m;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     u.aly.ar
 * JD-Core Version:    0.6.2
 */