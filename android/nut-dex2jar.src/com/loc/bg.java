package com.loc;

import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.RandomAccessFile;

public final class bg
{
  ByteArrayInputStream a;
  boolean b = false;
  RandomAccessFile c = null;
  final byte[] d = new byte[8];
  bh e;
  private long f;
  private boolean g = false;
  private String h = null;

  public bg(File paramFile, bh parambh)
    throws IOException, FileNotFoundException, OutOfMemoryError
  {
    if (parambh.a == true)
    {
      byte[] arrayOfByte = by.a(paramFile);
      this.a = new ByteArrayInputStream(arrayOfByte);
      this.f = arrayOfByte.length;
      this.b = false;
      this.h = paramFile.getAbsolutePath();
    }
    while (true)
    {
      this.e = parambh;
      return;
      this.c = new RandomAccessFile(paramFile, "r");
      this.b = true;
    }
  }

  public final void a()
    throws IOException
  {
    try
    {
      if (!this.b)
        if (this.a != null)
        {
          this.a.close();
          this.a = null;
        }
      while (true)
      {
        this.g = true;
        return;
        if (this.c != null)
        {
          this.c.close();
          this.c = null;
        }
      }
    }
    finally
    {
    }
  }

  public final void a(long paramLong)
    throws IOException
  {
    if (paramLong < 0L)
      throw new IOException("offset < 0: " + paramLong);
    e();
    if (this.b)
    {
      this.c.seek(paramLong);
      return;
    }
    this.a.reset();
    this.a.skip(paramLong);
  }

  public final int b()
    throws IOException
  {
    e();
    if (this.b)
      return this.c.readUnsignedShort();
    this.a.read(this.d, 0, 2);
    return by.c(this.d);
  }

  public final int c()
    throws IOException
  {
    e();
    if (this.b)
      return this.c.readInt();
    this.a.read(this.d, 0, 4);
    return by.d(this.d);
  }

  public final long d()
    throws IOException
  {
    if (this.g)
      throw new IOException("file closed");
    if (this.b)
      return this.c.length();
    return this.f;
  }

  final void e()
    throws IOException
  {
    if (this.g)
      throw new IOException("file closed");
  }

  protected final void finalize()
    throws Throwable
  {
    a();
    super.finalize();
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.loc.bg
 * JD-Core Version:    0.6.2
 */