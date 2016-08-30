package android.support.b;

import java.io.File;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.util.zip.CRC32;
import java.util.zip.ZipException;

final class e
{
  static long a(File paramFile)
    throws IOException
  {
    paramFile = new RandomAccessFile(paramFile, "r");
    try
    {
      long l = a(paramFile, a(paramFile));
      return l;
    }
    finally
    {
      paramFile.close();
    }
  }

  private static long a(RandomAccessFile paramRandomAccessFile, f paramf)
    throws IOException
  {
    CRC32 localCRC32 = new CRC32();
    long l = paramf.b;
    paramRandomAccessFile.seek(paramf.a);
    int i = (int)Math.min(16384L, l);
    paramf = new byte[16384];
    for (i = paramRandomAccessFile.read(paramf, 0, i); i != -1; i = paramRandomAccessFile.read(paramf, 0, (int)Math.min(16384L, l)))
    {
      localCRC32.update(paramf, 0, i);
      l -= i;
      if (l == 0L)
        break;
    }
    return localCRC32.getValue();
  }

  private static f a(RandomAccessFile paramRandomAccessFile)
    throws IOException, ZipException
  {
    long l1 = 0L;
    long l2 = paramRandomAccessFile.length() - 22L;
    if (l2 < 0L)
      throw new ZipException("File too short to be a zip file: " + paramRandomAccessFile.length());
    long l3 = l2 - 65536L;
    if (l3 < 0L);
    while (true)
    {
      int i = Integer.reverseBytes(101010256);
      do
      {
        paramRandomAccessFile.seek(l2);
        if (paramRandomAccessFile.readInt() == i)
          break;
        l3 = l2 - 1L;
        l2 = l3;
      }
      while (l3 >= l1);
      throw new ZipException("End Of Central Directory signature not found");
      paramRandomAccessFile.skipBytes(2);
      paramRandomAccessFile.skipBytes(2);
      paramRandomAccessFile.skipBytes(2);
      paramRandomAccessFile.skipBytes(2);
      f localf = new f();
      localf.b = (Integer.reverseBytes(paramRandomAccessFile.readInt()) & 0xFFFFFFFF);
      localf.a = (Integer.reverseBytes(paramRandomAccessFile.readInt()) & 0xFFFFFFFF);
      return localf;
      l1 = l3;
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     android.support.b.e
 * JD-Core Version:    0.6.2
 */