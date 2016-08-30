package io.fabric.sdk.android.services.b;

import java.io.IOException;
import java.io.InputStream;
import java.io.RandomAccessFile;

final class ae extends InputStream
{
  private int b;
  private int c;

  private ae(ab paramab, ad paramad)
  {
    this.b = ab.a(paramab, paramad.b + 4);
    this.c = paramad.c;
  }

  public final int read()
    throws IOException
  {
    if (this.c == 0)
      return -1;
    ab.a(this.a).seek(this.b);
    int i = ab.a(this.a).read();
    this.b = ab.a(this.a, this.b + 1);
    this.c -= 1;
    return i;
  }

  public final int read(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
    throws IOException
  {
    ab.a(paramArrayOfByte, "buffer");
    if (((paramInt1 | paramInt2) < 0) || (paramInt2 > paramArrayOfByte.length - paramInt1))
      throw new ArrayIndexOutOfBoundsException();
    if (this.c > 0)
    {
      int i = paramInt2;
      if (paramInt2 > this.c)
        i = this.c;
      ab.a(this.a, this.b, paramArrayOfByte, paramInt1, i);
      this.b = ab.a(this.a, this.b + i);
      this.c -= i;
      return i;
    }
    return -1;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     io.fabric.sdk.android.services.b.ae
 * JD-Core Version:    0.6.2
 */