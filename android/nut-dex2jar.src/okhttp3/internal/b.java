package okhttp3.internal;

import a.i;
import a.z;
import java.io.Closeable;
import java.io.Flushable;
import java.io.IOException;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.concurrent.Executor;
import java.util.regex.Pattern;
import okhttp3.internal.b.a;

public final class b
  implements Closeable, Flushable
{
  static final Pattern a;
  private static final z o;
  private final a c;
  private long d;
  private final int e;
  private long f;
  private i g;
  private final LinkedHashMap<String, e> h;
  private int i;
  private boolean j;
  private boolean k;
  private boolean l;
  private final Executor m;
  private final Runnable n;

  static
  {
    if (!b.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      b = bool;
      a = Pattern.compile("[a-z0-9_-]{1,120}");
      o = new c();
      return;
    }
  }

  private void a(d paramd)
    throws IOException
  {
    e locale;
    try
    {
      locale = paramd.a;
      if (locale.f != paramd)
        throw new IllegalStateException();
    }
    finally
    {
    }
    int i1 = 0;
    while (i1 < this.e)
    {
      paramd = locale.d[i1];
      this.c.a(paramd);
      i1 += 1;
    }
    this.i += 1;
    locale.f = null;
    if ((locale.e | false))
    {
      locale.e = true;
      this.g.b("CLEAN").h(32);
      this.g.b(locale.a);
      locale.a(this.g);
      this.g.h(10);
    }
    while (true)
    {
      this.g.flush();
      if ((this.f > this.d) || (a()))
        this.m.execute(this.n);
      return;
      this.h.remove(locale.a);
      this.g.b("REMOVE").h(32);
      this.g.b(locale.a);
      this.g.h(10);
    }
  }

  private boolean a()
  {
    return (this.i >= 2000) && (this.i >= this.h.size());
  }

  private boolean b()
  {
    try
    {
      boolean bool = this.k;
      return bool;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  private void c()
  {
    try
    {
      if (b())
        throw new IllegalStateException("cache is closed");
    }
    finally
    {
    }
  }

  private void d()
    throws IOException
  {
    while (this.f > this.d)
    {
      e locale = (e)this.h.values().iterator().next();
      if (locale.f != null)
        locale.f.b = true;
      int i1 = 0;
      while (i1 < this.e)
      {
        this.c.a(locale.c[i1]);
        this.f -= locale.b[i1];
        locale.b[i1] = 0L;
        i1 += 1;
      }
      this.i += 1;
      this.g.b("REMOVE").h(32).b(locale.a).h(10);
      this.h.remove(locale.a);
      if (a())
        this.m.execute(this.n);
    }
    this.l = false;
  }

  public final void close()
    throws IOException
  {
    while (true)
    {
      int i1;
      try
      {
        if ((!this.j) || (this.k))
        {
          this.k = true;
          return;
        }
        e[] arrayOfe = (e[])this.h.values().toArray(new e[this.h.size()]);
        int i2 = arrayOfe.length;
        i1 = 0;
        if (i1 < i2)
        {
          ??? = arrayOfe[i1];
          if (((e)???).f == null)
            break label143;
          d locald = ((e)???).f;
          synchronized (locald.c)
          {
            locald.c.a(locald);
          }
        }
      }
      finally
      {
      }
      d();
      this.g.close();
      this.g = null;
      this.k = true;
      continue;
      label143: i1 += 1;
    }
  }

  public final void flush()
    throws IOException
  {
    try
    {
      boolean bool = this.j;
      if (!bool);
      while (true)
      {
        return;
        c();
        d();
        this.g.flush();
      }
    }
    finally
    {
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     okhttp3.internal.b
 * JD-Core Version:    0.6.2
 */