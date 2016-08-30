package a;

import java.io.OutputStream;

public final class g extends OutputStream
{
  public g(f paramf)
  {
  }

  public final void close()
  {
  }

  public final void flush()
  {
  }

  public final String toString()
  {
    return this + ".outputStream()";
  }

  public final void write(int paramInt)
  {
    this.a.b((byte)paramInt);
  }

  public final void write(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    this.a.b(paramArrayOfByte, paramInt1, paramInt2);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     a.g
 * JD-Core Version:    0.6.2
 */