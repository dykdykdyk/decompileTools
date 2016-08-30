package com.facebook.internal;

import java.io.IOException;
import java.io.OutputStream;

class FileLruCache$CloseCallbackOutputStream extends OutputStream
{
  final FileLruCache.StreamCloseCallback callback;
  final OutputStream innerStream;

  FileLruCache$CloseCallbackOutputStream(OutputStream paramOutputStream, FileLruCache.StreamCloseCallback paramStreamCloseCallback)
  {
    this.innerStream = paramOutputStream;
    this.callback = paramStreamCloseCallback;
  }

  public void close()
    throws IOException
  {
    try
    {
      this.innerStream.close();
      return;
    }
    finally
    {
      this.callback.onClose();
    }
  }

  public void flush()
    throws IOException
  {
    this.innerStream.flush();
  }

  public void write(int paramInt)
    throws IOException
  {
    this.innerStream.write(paramInt);
  }

  public void write(byte[] paramArrayOfByte)
    throws IOException
  {
    this.innerStream.write(paramArrayOfByte);
  }

  public void write(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
    throws IOException
  {
    this.innerStream.write(paramArrayOfByte, paramInt1, paramInt2);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.facebook.internal.FileLruCache.CloseCallbackOutputStream
 * JD-Core Version:    0.6.2
 */