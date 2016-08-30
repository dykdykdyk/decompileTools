package a;

import java.io.IOException;
import java.io.OutputStream;

final class r
  implements z
{
  r(ab paramab, OutputStream paramOutputStream)
  {
  }

  public final void a(f paramf, long paramLong)
    throws IOException
  {
    ad.a(paramf.b, 0L, paramLong);
    while (paramLong > 0L)
    {
      this.a.f();
      x localx = paramf.a;
      int i = (int)Math.min(paramLong, localx.c - localx.b);
      this.b.write(localx.a, localx.b, i);
      localx.b += i;
      long l = paramLong - i;
      paramf.b -= i;
      paramLong = l;
      if (localx.b == localx.c)
      {
        paramf.a = localx.a();
        y.a(localx);
        paramLong = l;
      }
    }
  }

  public final void close()
    throws IOException
  {
    this.b.close();
  }

  public final void flush()
    throws IOException
  {
    this.b.flush();
  }

  public final ab timeout()
  {
    return this.a;
  }

  public final String toString()
  {
    return "sink(" + this.b + ")";
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     a.r
 * JD-Core Version:    0.6.2
 */