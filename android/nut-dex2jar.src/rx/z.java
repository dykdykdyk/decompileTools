package rx;

import rx.c.d.s;

public abstract class z<T>
  implements aa, p<T>
{
  private static final Long a = Long.valueOf(-9223372036854775808L);
  private final z<?> b;
  public final s c;
  private q d;
  private long e = a.longValue();

  public z()
  {
    this(null, false);
  }

  public z(z<?> paramz)
  {
    this(paramz, true);
  }

  private z(z<?> paramz, boolean paramBoolean)
  {
    this.b = paramz;
    if ((paramBoolean) && (paramz != null));
    for (paramz = paramz.c; ; paramz = new s())
    {
      this.c = paramz;
      return;
    }
  }

  public final void a(long paramLong)
  {
    if (paramLong < 0L)
      throw new IllegalArgumentException("number requested cannot be negative: " + paramLong);
    while (true)
    {
      try
      {
        if (this.d != null)
        {
          q localq = this.d;
          localq.a(paramLong);
          return;
        }
        if (this.e == a.longValue())
        {
          this.e = paramLong;
          return;
        }
      }
      finally
      {
      }
      paramLong = this.e + paramLong;
      if (paramLong < 0L)
        this.e = 9223372036854775807L;
      else
        this.e = paramLong;
    }
  }

  public final void a(aa paramaa)
  {
    this.c.a(paramaa);
  }

  public void a(q paramq)
  {
    int j = 0;
    long l;
    try
    {
      l = this.e;
      this.d = paramq;
      int i = j;
      if (this.b != null)
      {
        i = j;
        if (l == a.longValue())
          i = 1;
      }
      if (i != 0)
      {
        this.b.a(this.d);
        return;
      }
    }
    finally
    {
    }
    if (l == a.longValue())
    {
      this.d.a(9223372036854775807L);
      return;
    }
    this.d.a(l);
  }

  public final boolean b()
  {
    return this.c.b;
  }

  public void c()
  {
  }

  public final void n_()
  {
    this.c.n_();
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     rx.z
 * JD-Core Version:    0.6.2
 */