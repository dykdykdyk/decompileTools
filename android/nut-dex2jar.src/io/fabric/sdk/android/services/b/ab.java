package io.fabric.sdk.android.services.b;

import java.io.Closeable;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.nio.channels.FileChannel;
import java.util.NoSuchElementException;
import java.util.logging.Level;
import java.util.logging.Logger;

public class ab
  implements Closeable
{
  private static final Logger b = Logger.getLogger(ab.class.getName());
  int a;
  private final RandomAccessFile c;
  private int d;
  private ad e;
  private ad f;
  private final byte[] g = new byte[16];

  public ab(File paramFile)
    throws IOException
  {
    if (!paramFile.exists())
    {
      File localFile = new File(paramFile.getPath() + ".tmp");
      RandomAccessFile localRandomAccessFile = a(localFile);
      try
      {
        localRandomAccessFile.setLength(4096L);
        localRandomAccessFile.seek(0L);
        byte[] arrayOfByte = new byte[16];
        a(arrayOfByte, new int[] { 4096, 0, 0, 0 });
        localRandomAccessFile.write(arrayOfByte);
        localRandomAccessFile.close();
        if (!localFile.renameTo(paramFile))
          throw new IOException("Rename failed!");
      }
      finally
      {
        localRandomAccessFile.close();
      }
    }
    this.c = a(paramFile);
    this.c.seek(0L);
    this.c.readFully(this.g);
    this.a = b(this.g, 0);
    if (this.a > this.c.length())
      throw new IOException("File is truncated. Expected length: " + this.a + ", Actual length: " + this.c.length());
    this.d = b(this.g, 4);
    int i = b(this.g, 8);
    int j = b(this.g, 12);
    this.e = a(i);
    this.f = a(j);
  }

  private ad a(int paramInt)
    throws IOException
  {
    if (paramInt == 0)
      return ad.a;
    this.c.seek(paramInt);
    return new ad(paramInt, this.c.readInt());
  }

  private static RandomAccessFile a(File paramFile)
    throws FileNotFoundException
  {
    return new RandomAccessFile(paramFile, "rwd");
  }

  private void a(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
    throws IOException
  {
    a(this.g, new int[] { paramInt1, paramInt2, paramInt3, paramInt4 });
    this.c.seek(0L);
    this.c.write(this.g);
  }

  private void a(int paramInt1, byte[] paramArrayOfByte, int paramInt2)
    throws IOException
  {
    paramInt1 = b(paramInt1);
    if (paramInt1 + paramInt2 <= this.a)
    {
      this.c.seek(paramInt1);
      this.c.write(paramArrayOfByte, 0, paramInt2);
      return;
    }
    int i = this.a - paramInt1;
    this.c.seek(paramInt1);
    this.c.write(paramArrayOfByte, 0, i);
    this.c.seek(16L);
    this.c.write(paramArrayOfByte, i + 0, paramInt2 - i);
  }

  private void a(int paramInt1, byte[] paramArrayOfByte, int paramInt2, int paramInt3)
    throws IOException
  {
    paramInt1 = b(paramInt1);
    if (paramInt1 + paramInt3 <= this.a)
    {
      this.c.seek(paramInt1);
      this.c.readFully(paramArrayOfByte, paramInt2, paramInt3);
      return;
    }
    int i = this.a - paramInt1;
    this.c.seek(paramInt1);
    this.c.readFully(paramArrayOfByte, paramInt2, i);
    this.c.seek(16L);
    this.c.readFully(paramArrayOfByte, paramInt2 + i, paramInt3 - i);
  }

  private static void a(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    paramArrayOfByte[paramInt1] = ((byte)(paramInt2 >> 24));
    paramArrayOfByte[(paramInt1 + 1)] = ((byte)(paramInt2 >> 16));
    paramArrayOfByte[(paramInt1 + 2)] = ((byte)(paramInt2 >> 8));
    paramArrayOfByte[(paramInt1 + 3)] = ((byte)paramInt2);
  }

  private static void a(byte[] paramArrayOfByte, int[] paramArrayOfInt)
  {
    int i = 0;
    int j = 0;
    while (i < 4)
    {
      a(paramArrayOfByte, j, paramArrayOfInt[i]);
      j += 4;
      i += 1;
    }
  }

  private int b(int paramInt)
  {
    if (paramInt < this.a)
      return paramInt;
    return paramInt + 16 - this.a;
  }

  private static int b(byte[] paramArrayOfByte, int paramInt)
  {
    return ((paramArrayOfByte[paramInt] & 0xFF) << 24) + ((paramArrayOfByte[(paramInt + 1)] & 0xFF) << 16) + ((paramArrayOfByte[(paramInt + 2)] & 0xFF) << 8) + (paramArrayOfByte[(paramInt + 3)] & 0xFF);
  }

  private static <T> T b(T paramT, String paramString)
  {
    if (paramT == null)
      throw new NullPointerException(paramString);
    return paramT;
  }

  private void c(int paramInt)
    throws IOException
  {
    int m = paramInt + 4;
    paramInt = this.a - a();
    if (paramInt >= m)
      return;
    int i = this.a;
    int k;
    int j;
    do
    {
      k = paramInt + i;
      j = i << 1;
      i = j;
      paramInt = k;
    }
    while (k < m);
    d(j);
    paramInt = b(this.f.b + 4 + this.f.c);
    if (paramInt < this.e.b)
    {
      FileChannel localFileChannel = this.c.getChannel();
      localFileChannel.position(this.a);
      paramInt -= 4;
      if (localFileChannel.transferTo(16L, paramInt, localFileChannel) != paramInt)
        throw new AssertionError("Copied insufficient number of bytes!");
    }
    if (this.f.b < this.e.b)
    {
      paramInt = this.a + this.f.b - 16;
      a(j, this.d, this.e.b, paramInt);
      this.f = new ad(paramInt, this.f.c);
    }
    while (true)
    {
      this.a = j;
      return;
      a(j, this.d, this.e.b, this.f.b);
    }
  }

  private void d()
    throws IOException
  {
    try
    {
      a(4096, 0, 0, 0);
      this.d = 0;
      this.e = ad.a;
      this.f = ad.a;
      if (this.a > 4096)
        d(4096);
      this.a = 4096;
      return;
    }
    finally
    {
    }
  }

  private void d(int paramInt)
    throws IOException
  {
    this.c.setLength(paramInt);
    this.c.getChannel().force(true);
  }

  public final int a()
  {
    if (this.d == 0)
      return 16;
    if (this.f.b >= this.e.b)
      return this.f.b - this.e.b + 4 + this.f.c + 16;
    return this.f.b + 4 + this.f.c + this.a - this.e.b;
  }

  public final void a(af paramaf)
    throws IOException
  {
    int i = 0;
    try
    {
      int j = this.e.b;
      while (i < this.d)
      {
        ad localad = a(j);
        paramaf.a(new ae(this, localad, (byte)0), localad.c);
        j = localad.b;
        j = b(localad.c + (j + 4));
        i += 1;
      }
      return;
    }
    finally
    {
    }
    throw paramaf;
  }

  public final void a(byte[] paramArrayOfByte, int paramInt)
    throws IOException
  {
    try
    {
      b(paramArrayOfByte, "buffer");
      if (((paramInt | 0x0) < 0) || (paramInt > paramArrayOfByte.length + 0))
        throw new IndexOutOfBoundsException();
    }
    finally
    {
    }
    c(paramInt);
    boolean bool = b();
    int i;
    ad localad;
    if (bool)
    {
      i = 16;
      localad = new ad(i, paramInt);
      a(this.g, 0, paramInt);
      a(localad.b, this.g, 4);
      a(localad.b + 4, paramArrayOfByte, paramInt);
      if (!bool)
        break label190;
    }
    label190: for (paramInt = localad.b; ; paramInt = this.e.b)
    {
      a(this.a, this.d + 1, paramInt, localad.b);
      this.f = localad;
      this.d += 1;
      if (bool)
        this.e = this.f;
      return;
      i = b(this.f.b + 4 + this.f.c);
      break;
    }
  }

  public final boolean b()
  {
    try
    {
      int i = this.d;
      if (i == 0)
      {
        bool = true;
        return bool;
      }
      boolean bool = false;
    }
    finally
    {
    }
  }

  public final void c()
    throws IOException
  {
    try
    {
      if (b())
        throw new NoSuchElementException();
    }
    finally
    {
    }
    if (this.d == 1)
      d();
    while (true)
    {
      return;
      int i = b(this.e.b + 4 + this.e.c);
      a(i, this.g, 0, 4);
      int j = b(this.g, 0);
      a(this.a, this.d - 1, i, this.f.b);
      this.d -= 1;
      this.e = new ad(i, j);
    }
  }

  public void close()
    throws IOException
  {
    try
    {
      this.c.close();
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append(getClass().getSimpleName()).append('[');
    localStringBuilder.append("fileLength=").append(this.a);
    localStringBuilder.append(", size=").append(this.d);
    localStringBuilder.append(", first=").append(this.e);
    localStringBuilder.append(", last=").append(this.f);
    localStringBuilder.append(", element lengths=[");
    try
    {
      a(new ac(this, localStringBuilder));
      localStringBuilder.append("]]");
      return localStringBuilder.toString();
    }
    catch (IOException localIOException)
    {
      while (true)
        b.log(Level.WARNING, "read error", localIOException);
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     io.fabric.sdk.android.services.b.ab
 * JD-Core Version:    0.6.2
 */