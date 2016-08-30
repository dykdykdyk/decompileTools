package okhttp3.internal.a;

import a.ab;
import a.f;
import a.z;
import java.io.IOException;

final class u
  implements z
{
  private final f c = new f();
  private boolean d;
  private boolean e;

  static
  {
    if (!t.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      a = bool;
      return;
    }
  }

  u(t paramt)
  {
  }

  private void a(boolean paramBoolean)
    throws IOException
  {
    synchronized (this.b)
    {
      t.g(this.b).i_();
    }
    t.g(this.b).b();
    t.h(this.b);
    long l = Math.min(this.b.b, this.c.b);
    t localt = this.b;
    localt.b -= l;
    t.g(this.b).i_();
    try
    {
      ??? = t.a(this.b);
      int i = t.b(this.b);
      if ((paramBoolean) && (l == this.c.b));
      for (paramBoolean = true; ; paramBoolean = false)
      {
        ((e)???).a(i, paramBoolean, this.c, l);
        return;
      }
    }
    finally
    {
      t.g(this.b).b();
    }
  }

  public final void a(f paramf, long paramLong)
    throws IOException
  {
    if ((!a) && (Thread.holdsLock(this.b)))
      throw new AssertionError();
    this.c.a(paramf, paramLong);
    while (this.c.b >= 16384L)
      a(false);
  }

  public final void close()
    throws IOException
  {
    if ((!a) && (Thread.holdsLock(this.b)))
      throw new AssertionError();
    synchronized (this.b)
    {
      if (this.d)
        return;
      if (this.b.g.e)
        break label113;
      if (this.c.b > 0L)
      {
        if (this.c.b <= 0L)
          break label113;
        a(true);
      }
    }
    t.a(this.b).a(t.b(this.b), true, null, 0L);
    label113: synchronized (this.b)
    {
      this.d = true;
      t.a(this.b).b();
      t.f(this.b);
      return;
    }
  }

  public final void flush()
    throws IOException
  {
    if ((!a) && (Thread.holdsLock(this.b)))
      throw new AssertionError();
    synchronized (this.b)
    {
      t.h(this.b);
      if (this.c.b > 0L)
      {
        a(false);
        t.a(this.b).b();
      }
    }
  }

  public final ab timeout()
  {
    return t.g(this.b);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     okhttp3.internal.a.u
 * JD-Core Version:    0.6.2
 */