package a;

import java.io.IOException;
import java.io.InputStream;

final class s
  implements aa
{
  s(ab paramab, InputStream paramInputStream)
  {
  }

  public final void close()
    throws IOException
  {
    this.b.close();
  }

  public final long read(f paramf, long paramLong)
    throws IOException
  {
    if (paramLong < 0L)
      throw new IllegalArgumentException("byteCount < 0: " + paramLong);
    if (paramLong == 0L)
      return 0L;
    this.a.f();
    x localx = paramf.e(1);
    int i = (int)Math.min(paramLong, 2048 - localx.c);
    i = this.b.read(localx.a, localx.c, i);
    if (i == -1)
      return -1L;
    localx.c += i;
    paramf.b += i;
    return i;
  }

  public final ab timeout()
  {
    return this.a;
  }

  public final String toString()
  {
    return "source(" + this.b + ")";
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     a.s
 * JD-Core Version:    0.6.2
 */