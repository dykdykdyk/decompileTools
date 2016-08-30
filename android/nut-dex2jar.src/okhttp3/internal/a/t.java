package okhttp3.internal.a;

import a.z;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.util.List;

public final class t
{
  long a = 0L;
  long b;
  final int c;
  final e d;
  List<x> e;
  public final v f;
  final u g;
  public final w h = new w(this);
  public final w i = new w(this);
  private final List<x> k;
  private a l = null;

  static
  {
    if (!t.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      j = bool;
      return;
    }
  }

  t(int paramInt, e parame, boolean paramBoolean1, boolean paramBoolean2, List<x> paramList)
  {
    if (parame == null)
      throw new NullPointerException("connection == null");
    if (paramList == null)
      throw new NullPointerException("requestHeaders == null");
    this.c = paramInt;
    this.d = parame;
    this.b = parame.f.b();
    this.f = new v(this, parame.e.b(), (byte)0);
    this.g = new u(this);
    v.a(this.f, paramBoolean2);
    u.a(this.g, paramBoolean1);
    this.k = paramList;
  }

  private boolean d(a parama)
  {
    if ((!j) && (Thread.holdsLock(this)))
      throw new AssertionError();
    try
    {
      if (this.l != null)
        return false;
      if ((v.a(this.f)) && (u.a(this.g)))
        return false;
    }
    finally
    {
    }
    this.l = parama;
    notifyAll();
    this.d.b(this.c);
    return true;
  }

  private void f()
    throws InterruptedIOException
  {
    try
    {
      wait();
      return;
    }
    catch (InterruptedException localInterruptedException)
    {
    }
    throw new InterruptedIOException();
  }

  final void a(long paramLong)
  {
    this.b += paramLong;
    if (paramLong > 0L)
      notifyAll();
  }

  public final void a(a parama)
    throws IOException
  {
    if (!d(parama))
      return;
    this.d.b(this.c, parama);
  }

  public final boolean a()
  {
    boolean bool = false;
    try
    {
      Object localObject1 = this.l;
      if (localObject1 != null);
      while (true)
      {
        return bool;
        if (((v.a(this.f)) || (v.b(this.f))) && ((u.a(this.g)) || (u.b(this.g))))
        {
          localObject1 = this.e;
          if (localObject1 != null);
        }
        else
        {
          bool = true;
        }
      }
    }
    finally
    {
    }
  }

  public final void b(a parama)
  {
    if (!d(parama))
      return;
    this.d.a(this.c, parama);
  }

  public final boolean b()
  {
    if ((this.c & 0x1) == 1);
    for (int m = 1; this.d.b == m; m = 0)
      return true;
    return false;
  }

  public final List<x> c()
    throws IOException
  {
    try
    {
      this.h.i_();
    }
    finally
    {
      try
      {
        if ((this.e != null) || (this.l != null))
          break label45;
        f();
      }
      finally
      {
        this.h.b();
      }
    }
    label45: this.h.b();
    if (this.e != null)
    {
      List localList = this.e;
      return localList;
    }
    throw new IOException("stream was reset: " + this.l);
  }

  final void c(a parama)
  {
    try
    {
      if (this.l == null)
      {
        this.l = parama;
        notifyAll();
      }
      return;
    }
    finally
    {
      parama = finally;
    }
    throw parama;
  }

  public final z d()
  {
    try
    {
      if ((this.e == null) && (!b()))
        throw new IllegalStateException("reply before requesting the sink");
    }
    finally
    {
    }
    return this.g;
  }

  final void e()
  {
    if ((!j) && (Thread.holdsLock(this)))
      throw new AssertionError();
    try
    {
      v.a(this.f, true);
      boolean bool = a();
      notifyAll();
      if (!bool)
        this.d.b(this.c);
      return;
    }
    finally
    {
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     okhttp3.internal.a.t
 * JD-Core Version:    0.6.2
 */