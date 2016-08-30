package com.amap.api.services.core;

import java.io.FilterOutputStream;
import java.io.IOException;
import java.io.OutputStream;

class bz$a$a extends FilterOutputStream
{
  private bz$a$a(bz.a parama, OutputStream paramOutputStream)
  {
    super(paramOutputStream);
  }

  public void close()
  {
    try
    {
      this.out.close();
      return;
    }
    catch (IOException localIOException)
    {
      bz.a.a(this.a, true);
    }
  }

  public void flush()
  {
    try
    {
      this.out.flush();
      return;
    }
    catch (IOException localIOException)
    {
      bz.a.a(this.a, true);
    }
  }

  public void write(int paramInt)
  {
    try
    {
      this.out.write(paramInt);
      return;
    }
    catch (IOException localIOException)
    {
      bz.a.a(this.a, true);
    }
  }

  public void write(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    try
    {
      this.out.write(paramArrayOfByte, paramInt1, paramInt2);
      return;
    }
    catch (IOException paramArrayOfByte)
    {
      bz.a.a(this.a, true);
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.amap.api.services.core.bz.a.a
 * JD-Core Version:    0.6.2
 */