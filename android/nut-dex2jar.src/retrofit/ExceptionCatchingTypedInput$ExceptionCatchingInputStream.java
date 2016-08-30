package retrofit;

import java.io.IOException;
import java.io.InputStream;

class ExceptionCatchingTypedInput$ExceptionCatchingInputStream extends InputStream
{
  private final InputStream delegate;
  private IOException thrownException;

  ExceptionCatchingTypedInput$ExceptionCatchingInputStream(InputStream paramInputStream)
  {
    this.delegate = paramInputStream;
  }

  public int available()
    throws IOException
  {
    try
    {
      int i = this.delegate.available();
      return i;
    }
    catch (IOException localIOException)
    {
      this.thrownException = localIOException;
      throw localIOException;
    }
  }

  public void close()
    throws IOException
  {
    try
    {
      this.delegate.close();
      return;
    }
    catch (IOException localIOException)
    {
      this.thrownException = localIOException;
      throw localIOException;
    }
  }

  public void mark(int paramInt)
  {
    try
    {
      this.delegate.mark(paramInt);
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public boolean markSupported()
  {
    return this.delegate.markSupported();
  }

  public int read()
    throws IOException
  {
    try
    {
      int i = this.delegate.read();
      return i;
    }
    catch (IOException localIOException)
    {
      this.thrownException = localIOException;
      throw localIOException;
    }
  }

  public int read(byte[] paramArrayOfByte)
    throws IOException
  {
    try
    {
      int i = this.delegate.read(paramArrayOfByte);
      return i;
    }
    catch (IOException paramArrayOfByte)
    {
      this.thrownException = paramArrayOfByte;
    }
    throw paramArrayOfByte;
  }

  public int read(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
    throws IOException
  {
    try
    {
      paramInt1 = this.delegate.read(paramArrayOfByte, paramInt1, paramInt2);
      return paramInt1;
    }
    catch (IOException paramArrayOfByte)
    {
      this.thrownException = paramArrayOfByte;
    }
    throw paramArrayOfByte;
  }

  public void reset()
    throws IOException
  {
    try
    {
      this.delegate.reset();
      return;
    }
    catch (IOException localIOException)
    {
      this.thrownException = localIOException;
      throw localIOException;
    }
    finally
    {
    }
  }

  public long skip(long paramLong)
    throws IOException
  {
    try
    {
      paramLong = this.delegate.skip(paramLong);
      return paramLong;
    }
    catch (IOException localIOException)
    {
      this.thrownException = localIOException;
      throw localIOException;
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     retrofit.ExceptionCatchingTypedInput.ExceptionCatchingInputStream
 * JD-Core Version:    0.6.2
 */