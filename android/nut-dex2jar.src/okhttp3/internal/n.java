package okhttp3.internal;

import java.util.LinkedHashSet;
import java.util.Set;
import okhttp3.bd;

public final class n
{
  private final Set<bd> a = new LinkedHashSet();

  public final void a(bd parambd)
  {
    try
    {
      this.a.add(parambd);
      return;
    }
    finally
    {
      parambd = finally;
    }
    throw parambd;
  }

  public final void b(bd parambd)
  {
    try
    {
      this.a.remove(parambd);
      return;
    }
    finally
    {
      parambd = finally;
    }
    throw parambd;
  }

  public final boolean c(bd parambd)
  {
    try
    {
      boolean bool = this.a.contains(parambd);
      return bool;
    }
    finally
    {
      parambd = finally;
    }
    throw parambd;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     okhttp3.internal.n
 * JD-Core Version:    0.6.2
 */