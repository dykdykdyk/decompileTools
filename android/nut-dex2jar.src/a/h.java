package a;

import java.io.InputStream;

final class h extends InputStream
{
  h(f paramf)
  {
  }

  public final int available()
  {
    return (int)Math.min(this.a.b, 2147483647L);
  }

  public final void close()
  {
  }

  public final int read()
  {
    if (this.a.b > 0L)
      return this.a.f() & 0xFF;
    return -1;
  }

  public final int read(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    return this.a.a(paramArrayOfByte, paramInt1, paramInt2);
  }

  public final String toString()
  {
    return this.a + ".inputStream()";
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     a.h
 * JD-Core Version:    0.6.2
 */