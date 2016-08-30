package no.nordicsemi.android.dfu.internal;

import java.io.BufferedInputStream;
import java.io.ByteArrayInputStream;
import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
import no.nordicsemi.android.dfu.internal.exception.HexFileValidationException;

public class HexInputStream extends FilterInputStream
{
  private final int LINE_LENGTH = 128;
  private final int MBRSize;
  private int available;
  private int bytesRead;
  private int lastAddress = 0;
  private final byte[] localBuf = new byte[''];
  private int localPos = 128;
  private int pos;
  private int size = this.localBuf.length;

  public HexInputStream(InputStream paramInputStream, int paramInt)
    throws HexFileValidationException, IOException
  {
    super(new BufferedInputStream(paramInputStream));
    this.MBRSize = paramInt;
    this.available = calculateBinSize(paramInt);
  }

  public HexInputStream(byte[] paramArrayOfByte, int paramInt)
    throws HexFileValidationException, IOException
  {
    super(new ByteArrayInputStream(paramArrayOfByte));
    this.MBRSize = paramInt;
    this.available = calculateBinSize(paramInt);
  }

  private int asciiToInt(int paramInt)
  {
    if (paramInt >= 65)
      return paramInt - 55;
    if (paramInt >= 48)
      return paramInt - 48;
    return -1;
  }

  private int calculateBinSize(int paramInt)
    throws IOException
  {
    int j = 0;
    InputStream localInputStream = this.in;
    localInputStream.mark(localInputStream.available());
    while (true)
    {
      int i;
      try
      {
        k = localInputStream.read();
        i = 0;
        checkComma(k);
        int m = readByte(localInputStream);
        int n = readAddress(localInputStream);
        k = i;
        switch (readByte(localInputStream))
        {
        case 3:
          localInputStream.skip(m * 2 + 2);
          i = j;
          j = k;
          k = localInputStream.read();
          if ((k == 10) || (k == 13))
            continue;
          m = i;
          i = j;
          j = m;
          break;
        case 1:
          return i;
        case 4:
          k = readAddress(localInputStream);
          if ((i > 0) && (k != (j >> 16) + 1))
            return i;
          localInputStream.skip(2L);
          j = i;
          i = k << 16;
          break;
        case 2:
          k = readAddress(localInputStream);
          k <<= 4;
          if ((i > 0) && (k >> 16 != (j >> 16) + 1))
            return i;
          localInputStream.skip(2L);
          j = i;
          i = k;
          break;
        case 0:
          k = i;
          if (n + j < paramInt)
            continue;
          k = i + m;
          continue;
        }
      }
      finally
      {
        localInputStream.reset();
      }
      int k = i;
    }
  }

  private void checkComma(int paramInt)
    throws HexFileValidationException
  {
    if (paramInt != 58)
      throw new HexFileValidationException("Not a HEX file");
  }

  private int readAddress(InputStream paramInputStream)
    throws IOException
  {
    return readByte(paramInputStream) << 8 | readByte(paramInputStream);
  }

  private int readByte(InputStream paramInputStream)
    throws IOException
  {
    return asciiToInt(paramInputStream.read()) << 4 | asciiToInt(paramInputStream.read());
  }

  private int readLine()
    throws IOException
  {
    if (this.pos == -1)
      return 0;
    InputStream localInputStream = this.in;
    label16: 
    do
    {
      i = localInputStream.read();
      this.pos += 1;
    }
    while ((i == 10) || (i == 13));
    checkComma(i);
    int k = readByte(localInputStream);
    this.pos += 2;
    int m = readAddress(localInputStream);
    this.pos += 4;
    int j = readByte(localInputStream);
    this.pos += 2;
    int i = j;
    switch (j)
    {
    default:
      i = j;
    case 3:
      label142: this.pos = ((int)(this.pos + localInputStream.skip(k * 2 + 2)));
    case 0:
    case 1:
    case 2:
    case 4:
    }
    while (true)
    {
      if (i != 0)
        break label16;
      i = 0;
      while ((i < this.localBuf.length) && (i < k))
      {
        j = readByte(localInputStream);
        this.pos += 2;
        this.localBuf[i] = ((byte)j);
        i += 1;
      }
      i = j;
      if (m + this.lastAddress < this.MBRSize)
      {
        i = -1;
        break label142;
        this.pos = -1;
        return 0;
        i = readAddress(localInputStream) << 4;
        this.pos += 4;
        if ((this.bytesRead > 0) && (i >> 16 != (this.lastAddress >> 16) + 1))
          break;
        this.lastAddress = i;
        this.pos = ((int)(this.pos + localInputStream.skip(2L)));
        i = j;
        continue;
        i = readAddress(localInputStream);
        this.pos += 4;
        if ((this.bytesRead > 0) && (i != (this.lastAddress >> 16) + 1))
          break;
        this.lastAddress = (i << 16);
        this.pos = ((int)(this.pos + localInputStream.skip(2L)));
        i = j;
      }
    }
    this.pos = ((int)(this.pos + localInputStream.skip(2L)));
    this.localPos = 0;
    return k;
  }

  public int available()
  {
    return this.available - this.bytesRead;
  }

  public int read()
    throws IOException
  {
    throw new UnsupportedOperationException("Please, use readPacket() method instead");
  }

  public int read(byte[] paramArrayOfByte)
    throws IOException
  {
    return readPacket(paramArrayOfByte);
  }

  public int read(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
    throws IOException
  {
    throw new UnsupportedOperationException("Please, use readPacket() method instead");
  }

  public int readPacket(byte[] paramArrayOfByte)
    throws HexFileValidationException, IOException
  {
    int i = 0;
    do
    {
      while (true)
      {
        if (i >= paramArrayOfByte.length)
          break label83;
        if (this.localPos >= this.size)
          break;
        byte[] arrayOfByte = this.localBuf;
        j = this.localPos;
        this.localPos = (j + 1);
        paramArrayOfByte[i] = arrayOfByte[j];
        i += 1;
      }
      int j = this.bytesRead;
      int k = readLine();
      this.size = k;
      this.bytesRead = (j + k);
    }
    while (this.size != 0);
    label83: return i;
  }

  public void reset()
    throws IOException
  {
    try
    {
      super.reset();
      this.pos = 0;
      this.bytesRead = 0;
      this.localPos = 0;
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public int sizeInBytes()
  {
    return this.available;
  }

  public int sizeInPackets(int paramInt)
    throws IOException
  {
    int j = sizeInBytes();
    int i = j / paramInt;
    if (j % paramInt > 0);
    for (paramInt = 1; ; paramInt = 0)
      return paramInt + i;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     no.nordicsemi.android.dfu.internal.HexInputStream
 * JD-Core Version:    0.6.2
 */