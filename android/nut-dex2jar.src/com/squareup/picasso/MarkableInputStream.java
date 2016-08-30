package com.squareup.picasso;

import java.io.BufferedInputStream;
import java.io.IOException;
import java.io.InputStream;

final class MarkableInputStream extends InputStream
{
  private static final int DEFAULT_BUFFER_SIZE = 4096;
  private long defaultMark = -1L;
  private final InputStream in;
  private long limit;
  private long offset;
  private long reset;

  public MarkableInputStream(InputStream paramInputStream)
  {
    this(paramInputStream, 4096);
  }

  public MarkableInputStream(InputStream paramInputStream, int paramInt)
  {
    Object localObject = paramInputStream;
    if (!paramInputStream.markSupported())
      localObject = new BufferedInputStream(paramInputStream, paramInt);
    this.in = ((InputStream)localObject);
  }

  private void setLimit(long paramLong)
  {
    try
    {
      if ((this.reset < this.offset) && (this.offset <= this.limit))
      {
        this.in.reset();
        this.in.mark((int)(paramLong - this.reset));
        skip(this.reset, this.offset);
      }
      while (true)
      {
        this.limit = paramLong;
        return;
        this.reset = this.offset;
        this.in.mark((int)(paramLong - this.offset));
      }
    }
    catch (IOException localIOException)
    {
      throw new IllegalStateException("Unable to mark: " + localIOException);
    }
  }

  private void skip(long paramLong1, long paramLong2)
    throws IOException
  {
    while (paramLong1 < paramLong2)
    {
      long l2 = this.in.skip(paramLong2 - paramLong1);
      long l1 = l2;
      if (l2 == 0L)
      {
        if (read() == -1)
          break;
        l1 = 1L;
      }
      paramLong1 += l1;
    }
  }

  public final int available()
    throws IOException
  {
    return this.in.available();
  }

  public final void close()
    throws IOException
  {
    this.in.close();
  }

  public final void mark(int paramInt)
  {
    this.defaultMark = savePosition(paramInt);
  }

  public final boolean markSupported()
  {
    return this.in.markSupported();
  }

  public final int read()
    throws IOException
  {
    int i = this.in.read();
    if (i != -1)
      this.offset += 1L;
    return i;
  }

  public final int read(byte[] paramArrayOfByte)
    throws IOException
  {
    int i = this.in.read(paramArrayOfByte);
    if (i != -1)
      this.offset += i;
    return i;
  }

  public final int read(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
    throws IOException
  {
    paramInt1 = this.in.read(paramArrayOfByte, paramInt1, paramInt2);
    if (paramInt1 != -1)
      this.offset += paramInt1;
    return paramInt1;
  }

  public final void reset()
    throws IOException
  {
    reset(this.defaultMark);
  }

  public final void reset(long paramLong)
    throws IOException
  {
    if ((this.offset > this.limit) || (paramLong < this.reset))
      throw new IOException("Cannot reset");
    this.in.reset();
    skip(this.reset, paramLong);
    this.offset = paramLong;
  }

  public final long savePosition(int paramInt)
  {
    long l = this.offset + paramInt;
    if (this.limit < l)
      setLimit(l);
    return this.offset;
  }

  public final long skip(long paramLong)
    throws IOException
  {
    paramLong = this.in.skip(paramLong);
    this.offset += paramLong;
    return paramLong;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.squareup.picasso.MarkableInputStream
 * JD-Core Version:    0.6.2
 */