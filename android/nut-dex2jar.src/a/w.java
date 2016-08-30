package a;

import java.io.IOException;
import java.io.InputStream;

final class w extends InputStream
{
  w(v paramv)
  {
  }

  public final int available()
    throws IOException
  {
    if (this.a.c)
      throw new IOException("closed");
    return (int)Math.min(this.a.a.b, 2147483647L);
  }

  public final void close()
    throws IOException
  {
    this.a.close();
  }

  public final int read()
    throws IOException
  {
    if (this.a.c)
      throw new IOException("closed");
    if ((this.a.a.b == 0L) && (this.a.b.read(this.a.a, 2048L) == -1L))
      return -1;
    return this.a.a.f() & 0xFF;
  }

  public final int read(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
    throws IOException
  {
    if (this.a.c)
      throw new IOException("closed");
    ad.a(paramArrayOfByte.length, paramInt1, paramInt2);
    if ((this.a.a.b == 0L) && (this.a.b.read(this.a.a, 2048L) == -1L))
      return -1;
    return this.a.a.a(paramArrayOfByte, paramInt1, paramInt2);
  }

  public final String toString()
  {
    return this.a + ".inputStream()";
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     a.w
 * JD-Core Version:    0.6.2
 */