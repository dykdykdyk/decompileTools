package u.aly;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

public final class eb extends ed
{
  protected InputStream a = null;
  protected OutputStream b = null;

  protected eb()
  {
  }

  public eb(OutputStream paramOutputStream)
  {
    this.b = paramOutputStream;
  }

  public final int a(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
    throws dd
  {
    if (this.a == null)
      throw new dd("Cannot read from null inputStream");
    try
    {
      paramInt1 = this.a.read(paramArrayOfByte, paramInt1, paramInt2);
      if (paramInt1 < 0)
        throw new dd((byte)0);
    }
    catch (IOException paramArrayOfByte)
    {
      throw new dd(paramArrayOfByte);
    }
    return paramInt1;
  }

  public final void b(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
    throws dd
  {
    if (this.b == null)
      throw new dd("Cannot write to null outputStream");
    try
    {
      this.b.write(paramArrayOfByte, paramInt1, paramInt2);
      return;
    }
    catch (IOException paramArrayOfByte)
    {
    }
    throw new dd(paramArrayOfByte);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     u.aly.eb
 * JD-Core Version:    0.6.2
 */