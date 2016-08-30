package u.aly;

import android.content.Context;
import com.umeng.analytics.y;

public final class h
  implements n
{
  private static h c;
  n a;
  private Context b;

  private h(Context paramContext)
  {
    this.b = paramContext.getApplicationContext();
    this.a = new e(this.b);
  }

  public static h a(Context paramContext)
  {
    try
    {
      if ((c == null) && (paramContext != null))
        c = new h(paramContext);
      paramContext = c;
      return paramContext;
    }
    finally
    {
    }
    throw paramContext;
  }

  public final void a()
  {
    y.b(new j(this));
  }

  public final void a(o paramo)
  {
    y.b(new i(this, paramo));
  }

  public final void b()
  {
    y.c(new k(this));
  }

  public final void b(o paramo)
  {
    this.a.b(paramo);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     u.aly.h
 * JD-Core Version:    0.6.2
 */