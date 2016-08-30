package com.tencent.open.utils;

import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.net.ProtocolException;
import java.nio.ByteBuffer;
import java.util.Arrays;
import java.util.Properties;
import java.util.zip.ZipException;

public final class a
{
  private static final u a = new u();
  private static final v b = new v();

  public static String a(File paramFile)
    throws IOException
  {
    return a(paramFile, "channelNo");
  }

  private static String a(File paramFile, String paramString)
    throws IOException
  {
    try
    {
      paramFile = new RandomAccessFile(paramFile, "r");
      b localb;
      ByteBuffer localByteBuffer;
      Object localObject2;
      int i;
      try
      {
        byte[] arrayOfByte = a(paramFile);
        if (arrayOfByte == null)
        {
          paramFile.close();
          return null;
        }
        localb = new b((byte)0);
        if (arrayOfByte == null)
          break label259;
        localByteBuffer = ByteBuffer.wrap(arrayOfByte);
        localObject2 = b;
        i = (byte)(((v)localObject2).a & 0xFF);
        i = (byte)((((v)localObject2).a & 0xFF00) >> 8);
        localObject2 = new byte[2];
        localByteBuffer.get((byte[])localObject2);
        if (b.equals(new v((byte[])localObject2)))
          break label153;
        throw new ProtocolException("unknow protocl [" + Arrays.toString(arrayOfByte) + "]");
      }
      finally
      {
        paramString = paramFile;
        paramFile = localObject1;
      }
      if (paramString != null)
        paramString.close();
      throw paramFile;
      label153: if (localObject1.length - 2 > 2)
      {
        localObject2 = new byte[2];
        localByteBuffer.get((byte[])localObject2);
        i = new v((byte[])localObject2).a;
        if (localObject1.length - 2 - 2 >= i)
        {
          localObject2 = new byte[i];
          localByteBuffer.get((byte[])localObject2);
          localb.a.load(new ByteArrayInputStream((byte[])localObject2));
          i = localObject1.length - 2 - i - 2;
          if (i > 0)
          {
            localb.b = new byte[i];
            localByteBuffer.get(localb.b);
          }
        }
      }
      label259: paramString = localb.a.getProperty(paramString);
      paramFile.close();
      return paramString;
    }
    finally
    {
      while (true)
        paramString = null;
    }
  }

  private static byte[] a(RandomAccessFile paramRandomAccessFile)
    throws IOException
  {
    int j = 1;
    long l = paramRandomAccessFile.length() - 22L;
    paramRandomAccessFile.seek(l);
    Object localObject = a;
    byte[] arrayOfByte = new byte[4];
    arrayOfByte[0] = ((byte)(int)(((u)localObject).a & 0xFF));
    arrayOfByte[1] = ((byte)(int)((((u)localObject).a & 0xFF00) >> 8));
    arrayOfByte[2] = ((byte)(int)((((u)localObject).a & 0xFF0000) >> 16));
    arrayOfByte[3] = ((byte)(int)((((u)localObject).a & 0xFF000000) >> 24));
    int i = paramRandomAccessFile.read();
    if (i != -1)
      if ((i != arrayOfByte[0]) || (paramRandomAccessFile.read() != arrayOfByte[1]) || (paramRandomAccessFile.read() != arrayOfByte[2]) || (paramRandomAccessFile.read() != arrayOfByte[3]));
    for (i = j; ; i = 0)
    {
      if (i == 0)
      {
        throw new ZipException("archive is not a ZIP archive");
        l -= 1L;
        paramRandomAccessFile.seek(l);
        i = paramRandomAccessFile.read();
        break;
      }
      paramRandomAccessFile.seek(16L + l + 4L);
      localObject = new byte[2];
      paramRandomAccessFile.readFully((byte[])localObject);
      i = new v((byte[])localObject).a;
      if (i == 0)
        return null;
      localObject = new byte[i];
      paramRandomAccessFile.read((byte[])localObject);
      return localObject;
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.tencent.open.utils.a
 * JD-Core Version:    0.6.2
 */