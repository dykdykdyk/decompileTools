package u.aly;

import android.content.Context;

public final class aq
  implements t
{
  private static aq c = null;
  public int a = 0;
  private final long b = 60000L;

  public static aq a(Context paramContext)
  {
    try
    {
      if (c == null)
      {
        c = new aq();
        int i = fj.a(paramContext).b.a();
        c.a(i);
      }
      paramContext = c;
      return paramContext;
    }
    finally
    {
    }
    throw paramContext;
  }

  private void a(int paramInt)
  {
    if ((paramInt >= 0) && (paramInt <= 3))
      this.a = paramInt;
  }

  public static an b(Context paramContext)
  {
    an localan = new an();
    localan.b = w.d(paramContext);
    long l = System.currentTimeMillis();
    localan.c = l;
    localan.d = (l + 60000L);
    localan.e = 60000L;
    return localan;
  }

  public final void a(fk paramfk)
  {
    a(paramfk.a());
  }

  public final boolean a()
  {
    return this.a != 0;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     u.aly.aq
 * JD-Core Version:    0.6.2
 */