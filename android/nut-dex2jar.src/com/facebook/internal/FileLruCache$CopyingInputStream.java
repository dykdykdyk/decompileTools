package com.facebook.internal;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

final class FileLruCache$CopyingInputStream extends InputStream
{
  final InputStream input;
  final OutputStream output;

  FileLruCache$CopyingInputStream(InputStream paramInputStream, OutputStream paramOutputStream)
  {
    this.input = paramInputStream;
    this.output = paramOutputStream;
  }

  public final int available()
    throws IOException
  {
    return this.input.available();
  }

  public final void close()
    throws IOException
  {
    try
    {
      this.input.close();
      return;
    }
    finally
    {
      this.output.close();
    }
  }

  public final void mark(int paramInt)
  {
    throw new UnsupportedOperationException();
  }

  public final boolean markSupported()
  {
    return false;
  }

  public final int read()
    throws IOException
  {
    int i = this.input.read();
    if (i >= 0)
      this.output.write(i);
    return i;
  }

  public final int read(byte[] paramArrayOfByte)
    throws IOException
  {
    int i = this.input.read(paramArrayOfByte);
    if (i > 0)
      this.output.write(paramArrayOfByte, 0, i);
    return i;
  }

  public final int read(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
    throws IOException
  {
    paramInt2 = this.input.read(paramArrayOfByte, paramInt1, paramInt2);
    if (paramInt2 > 0)
      this.output.write(paramArrayOfByte, paramInt1, paramInt2);
    return paramInt2;
  }

  public final void reset()
  {
    try
    {
      throw new UnsupportedOperationException();
    }
    finally
    {
    }
  }

  public final long skip(long paramLong)
    throws IOException
  {
    byte[] arrayOfByte = new byte[1024];
    int i;
    for (long l = 0L; ; l += i)
      if (l < paramLong)
      {
        i = read(arrayOfByte, 0, (int)Math.min(paramLong - l, 1024L));
        if (i >= 0);
      }
      else
      {
        return l;
      }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.facebook.internal.FileLruCache.CopyingInputStream
 * JD-Core Version:    0.6.2
 */