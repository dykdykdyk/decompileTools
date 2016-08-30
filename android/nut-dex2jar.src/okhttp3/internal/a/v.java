package okhttp3.internal.a;

import a.aa;
import a.ab;
import a.f;
import a.j;
import java.io.EOFException;
import java.io.IOException;

final class v
  implements aa
{
  private final f c = new f();
  private final f d = new f();
  private final long e;
  private boolean f;
  private boolean g;

  static
  {
    if (!t.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      a = bool;
      return;
    }
  }

  private v(t paramt, long paramLong)
  {
    this.e = paramLong;
  }

  private void a()
    throws IOException
  {
    t.c(this.b).i_();
    try
    {
      if (this.d.b == 0L)
        if ((!this.g) && (!this.f) && (t.d(this.b) == null))
          t.e(this.b);
    }
    finally
    {
      t.c(this.b).b();
    }
  }

  final void a(j paramj, long paramLong)
    throws IOException
  {
    long l = paramLong;
    if (!a)
    {
      l = paramLong;
      if (Thread.holdsLock(this.b))
        throw new AssertionError();
    }
    while (true)
    {
      l -= paramLong;
      synchronized (this.b)
      {
        if (this.d.b == 0L)
        {
          i = 1;
          this.d.a(this.c);
          if (i != 0)
            this.b.notifyAll();
          if (l > 0L);
          boolean bool;
          synchronized (this.b)
          {
            bool = this.g;
            if (this.d.b + l > this.e)
            {
              i = 1;
              if (i != 0)
              {
                paramj.f(l);
                this.b.b(a.h);
              }
            }
            else
            {
              i = 0;
            }
          }
          if (bool)
          {
            paramj.f(l);
            return;
          }
          paramLong = paramj.read(this.c, l);
          if (paramLong != -1L)
            continue;
          throw new EOFException();
        }
        int i = 0;
      }
    }
  }

  public final void close()
    throws IOException
  {
    synchronized (this.b)
    {
      this.f = true;
      this.d.p();
      this.b.notifyAll();
      t.f(this.b);
      return;
    }
  }

  public final long read(f arg1, long paramLong)
    throws IOException
  {
    if (paramLong < 0L)
      throw new IllegalArgumentException("byteCount < 0: " + paramLong);
    synchronized (this.b)
    {
      a();
      if (this.f)
        throw new IOException("stream closed");
    }
    if (t.d(this.b) != null)
      throw new IOException("stream was reset: " + t.d(this.b));
    if (this.d.b == 0L)
      return -1L;
    paramLong = this.d.read(???, Math.min(paramLong, this.d.b));
    ??? = this.b;
    ???.a += paramLong;
    if (this.b.a >= t.a(this.b).e.b() / 2)
    {
      t.a(this.b).a(t.b(this.b), this.b.a);
      this.b.a = 0L;
    }
    synchronized (t.a(this.b))
    {
      ??? = t.a(this.b);
      ((e)???).c += paramLong;
      if (t.a(this.b).c >= t.a(this.b).e.b() / 2)
      {
        t.a(this.b).a(0, t.a(this.b).c);
        t.a(this.b).c = 0L;
      }
      return paramLong;
    }
  }

  public final ab timeout()
  {
    return t.c(this.b);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     okhttp3.internal.a.v
 * JD-Core Version:    0.6.2
 */