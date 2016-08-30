package a;

import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;

final class v
  implements j
{
  public final f a;
  public final aa b;
  boolean c;

  public v(aa paramaa)
  {
    this(paramaa, new f());
  }

  private v(aa paramaa, f paramf)
  {
    if (paramaa == null)
      throw new IllegalArgumentException("source == null");
    this.a = paramf;
    this.b = paramaa;
  }

  private boolean b(long paramLong)
    throws IOException
  {
    if (paramLong < 0L)
      throw new IllegalArgumentException("byteCount < 0: " + paramLong);
    if (this.c)
      throw new IllegalStateException("closed");
    while (this.a.b < paramLong)
      if (this.b.read(this.a, 2048L) == -1L)
        return false;
    return true;
  }

  public final long a(byte paramByte)
    throws IOException
  {
    long l2 = 0L;
    if (this.c)
      throw new IllegalStateException("closed");
    do
    {
      l1 = l2;
      if (0L < this.a.b)
        break;
    }
    while (this.b.read(this.a, 2048L) != -1L);
    long l1 = -1L;
    return l1;
    do
    {
      l2 = this.a.a(paramByte, l1);
      l1 = l2;
      if (l2 != -1L)
        break;
      l1 = this.a.b;
    }
    while (this.b.read(this.a, 2048L) != -1L);
    return -1L;
  }

  public final long a(z paramz)
    throws IOException
  {
    long l1 = 0L;
    while (this.b.read(this.a, 2048L) != -1L)
    {
      l2 = this.a.e();
      if (l2 > 0L)
      {
        l1 += l2;
        paramz.a(this.a, l2);
      }
    }
    long l2 = l1;
    if (this.a.b > 0L)
    {
      l2 = l1 + this.a.b;
      paramz.a(this.a, this.a.b);
    }
    return l2;
  }

  public final f a()
  {
    return this.a;
  }

  public final void a(long paramLong)
    throws IOException
  {
    if (!b(paramLong))
      throw new EOFException();
  }

  public final k c(long paramLong)
    throws IOException
  {
    a(paramLong);
    return this.a.c(paramLong);
  }

  public final boolean c()
    throws IOException
  {
    if (this.c)
      throw new IllegalStateException("closed");
    return (this.a.c()) && (this.b.read(this.a, 2048L) == -1L);
  }

  public final void close()
    throws IOException
  {
    if (this.c)
      return;
    this.c = true;
    this.b.close();
    this.a.p();
  }

  public final InputStream d()
  {
    return new w(this);
  }

  public final byte[] e(long paramLong)
    throws IOException
  {
    a(paramLong);
    return this.a.e(paramLong);
  }

  public final byte f()
    throws IOException
  {
    a(1L);
    return this.a.f();
  }

  public final void f(long paramLong)
    throws IOException
  {
    if (this.c)
      throw new IllegalStateException("closed");
    do
    {
      long l = Math.min(paramLong, this.a.b);
      this.a.f(l);
      paramLong -= l;
      if (paramLong <= 0L)
        break;
    }
    while ((this.a.b != 0L) || (this.b.read(this.a, 2048L) != -1L));
    throw new EOFException();
  }

  public final short g()
    throws IOException
  {
    a(2L);
    return this.a.g();
  }

  public final int h()
    throws IOException
  {
    a(4L);
    return this.a.h();
  }

  public final short i()
    throws IOException
  {
    a(2L);
    return ad.a(this.a.g());
  }

  public final int j()
    throws IOException
  {
    a(4L);
    return ad.a(this.a.h());
  }

  public final long k()
    throws IOException
  {
    a(1L);
    int i = 0;
    while (b(i + 1))
    {
      byte b1 = this.a.b(i);
      if (((b1 < 48) || (b1 > 57)) && ((b1 < 97) || (b1 > 102)) && ((b1 < 65) || (b1 > 70)))
      {
        if (i != 0)
          break;
        throw new NumberFormatException(String.format("Expected leading [0-9a-fA-F] character but was %#x", new Object[] { Byte.valueOf(b1) }));
      }
      i += 1;
    }
    return this.a.k();
  }

  public final String n()
    throws IOException
  {
    long l = a((byte)10);
    if (l == -1L)
    {
      f localf = new f();
      this.a.a(localf, 0L, Math.min(32L, this.a.b));
      throw new EOFException("\\n not found: size=" + this.a.b + " content=" + localf.l().b() + "...");
    }
    return this.a.d(l);
  }

  public final byte[] o()
    throws IOException
  {
    this.a.a(this.b);
    return this.a.o();
  }

  public final long read(f paramf, long paramLong)
    throws IOException
  {
    if (paramf == null)
      throw new IllegalArgumentException("sink == null");
    if (paramLong < 0L)
      throw new IllegalArgumentException("byteCount < 0: " + paramLong);
    if (this.c)
      throw new IllegalStateException("closed");
    if ((this.a.b == 0L) && (this.b.read(this.a, 2048L) == -1L))
      return -1L;
    paramLong = Math.min(paramLong, this.a.b);
    return this.a.read(paramf, paramLong);
  }

  public final ab timeout()
  {
    return this.b.timeout();
  }

  public final String toString()
  {
    return "buffer(" + this.b + ")";
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     a.v
 * JD-Core Version:    0.6.2
 */