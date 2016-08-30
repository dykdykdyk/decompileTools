package a;

import java.io.IOException;

final class u
  implements i
{
  public final f a;
  public final z b;
  private boolean c;

  public u(z paramz)
  {
    this(paramz, new f());
  }

  private u(z paramz, f paramf)
  {
    if (paramz == null)
      throw new IllegalArgumentException("sink == null");
    this.a = paramf;
    this.b = paramz;
  }

  public final long a(aa paramaa)
    throws IOException
  {
    if (paramaa == null)
      throw new IllegalArgumentException("source == null");
    long l1 = 0L;
    while (true)
    {
      long l2 = paramaa.read(this.a, 2048L);
      if (l2 == -1L)
        break;
      l1 += l2;
      q();
    }
    return l1;
  }

  public final f a()
  {
    return this.a;
  }

  public final void a(f paramf, long paramLong)
    throws IOException
  {
    if (this.c)
      throw new IllegalStateException("closed");
    this.a.a(paramf, paramLong);
    q();
  }

  public final i b()
    throws IOException
  {
    if (this.c)
      throw new IllegalStateException("closed");
    long l = this.a.b;
    if (l > 0L)
      this.b.a(this.a, l);
    return this;
  }

  public final i b(k paramk)
    throws IOException
  {
    if (this.c)
      throw new IllegalStateException("closed");
    this.a.a(paramk);
    return q();
  }

  public final i b(String paramString)
    throws IOException
  {
    if (this.c)
      throw new IllegalStateException("closed");
    this.a.a(paramString);
    return q();
  }

  public final i b(byte[] paramArrayOfByte)
    throws IOException
  {
    if (this.c)
      throw new IllegalStateException("closed");
    this.a.a(paramArrayOfByte);
    return q();
  }

  public final i c(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
    throws IOException
  {
    if (this.c)
      throw new IllegalStateException("closed");
    this.a.b(paramArrayOfByte, paramInt1, paramInt2);
    return q();
  }

  public final void close()
    throws IOException
  {
    if (this.c);
    while (true)
    {
      return;
      Object localObject2 = null;
      Object localObject1 = localObject2;
      try
      {
        if (this.a.b > 0L)
        {
          this.b.a(this.a, this.a.b);
          localObject1 = localObject2;
        }
        try
        {
          label46: this.b.close();
          localObject2 = localObject1;
          this.c = true;
          if (localObject2 == null)
            continue;
          ad.a(localObject2);
          return;
        }
        catch (Throwable localThrowable2)
        {
          while (true)
          {
            localObject2 = localObject1;
            if (localObject1 == null)
              localObject2 = localThrowable2;
          }
        }
      }
      catch (Throwable localThrowable1)
      {
        break label46;
      }
    }
  }

  public final i f(int paramInt)
    throws IOException
  {
    if (this.c)
      throw new IllegalStateException("closed");
    this.a.d(paramInt);
    return q();
  }

  public final void flush()
    throws IOException
  {
    if (this.c)
      throw new IllegalStateException("closed");
    if (this.a.b > 0L)
      this.b.a(this.a, this.a.b);
    this.b.flush();
  }

  public final i g(int paramInt)
    throws IOException
  {
    if (this.c)
      throw new IllegalStateException("closed");
    this.a.c(paramInt);
    return q();
  }

  public final i h(int paramInt)
    throws IOException
  {
    if (this.c)
      throw new IllegalStateException("closed");
    this.a.b(paramInt);
    return q();
  }

  public final i i(long paramLong)
    throws IOException
  {
    if (this.c)
      throw new IllegalStateException("closed");
    this.a.h(paramLong);
    return q();
  }

  public final i j(long paramLong)
    throws IOException
  {
    if (this.c)
      throw new IllegalStateException("closed");
    this.a.g(paramLong);
    return q();
  }

  public final i q()
    throws IOException
  {
    if (this.c)
      throw new IllegalStateException("closed");
    long l = this.a.e();
    if (l > 0L)
      this.b.a(this.a, l);
    return this;
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
 * Qualified Name:     a.u
 * JD-Core Version:    0.6.2
 */