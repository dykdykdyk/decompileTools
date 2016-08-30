package com.amap.api.mapcore2d;

import android.content.Context;
import android.os.Environment;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.util.Arrays;

class y
{
  private Context a;
  private bm b = null;
  private String c = "/sdcard/Amap/RMap";
  private final int d = 128;

  public y(Context paramContext, boolean paramBoolean, at paramat)
  {
    this.a = paramContext;
    if (paramat == null);
    do
    {
      return;
      if (paramBoolean == true)
      {
        this.c = paramContext.getFilesDir().getPath();
        return;
      }
      paramBoolean = false;
      if (!paramat.m.equals(""))
      {
        paramContext = new File(paramat.m);
        boolean bool = paramContext.exists();
        paramBoolean = bool;
        if (!bool)
          paramBoolean = paramContext.mkdirs();
        this.c = paramat.m;
      }
    }
    while (paramBoolean);
    this.c = a(this.a, this.c, paramat);
  }

  private int a(int paramInt1, int paramInt2)
  {
    return paramInt1 % 128 * 128 + paramInt2 % 128;
  }

  public static String a(Context paramContext, String paramString, at paramat)
  {
    if (!Environment.getExternalStorageState().equals("mounted"))
      return paramContext.getFilesDir().getPath();
    paramContext = new File(cz.b(paramContext), paramat.b);
    if (!paramContext.exists())
      paramContext.mkdir();
    return paramContext.toString() + "/";
  }

  private void a(byte[] paramArrayOfByte)
  {
    if ((paramArrayOfByte == null) || (paramArrayOfByte.length != 4))
      return;
    int i = paramArrayOfByte[0];
    paramArrayOfByte[0] = paramArrayOfByte[3];
    paramArrayOfByte[3] = i;
    i = paramArrayOfByte[1];
    paramArrayOfByte[1] = paramArrayOfByte[2];
    paramArrayOfByte[2] = i;
  }

  private byte[] a(int paramInt)
  {
    return new byte[] { (byte)(paramInt & 0xFF), (byte)((0xFF00 & paramInt) >> 8), (byte)((0xFF0000 & paramInt) >> 16), (byte)((0xFF000000 & paramInt) >> 24) };
  }

  private String[] a(int paramInt1, int paramInt2, int paramInt3, boolean paramBoolean)
  {
    paramInt1 /= 128;
    paramInt2 /= 128;
    int i = paramInt1 / 10;
    int j = paramInt2 / 10;
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append(this.c);
    localStringBuilder.append("/");
    localStringBuilder.append(paramInt3);
    localStringBuilder.append("/");
    localStringBuilder.append(i);
    localStringBuilder.append("/");
    localStringBuilder.append(j);
    localStringBuilder.append("/");
    if (!paramBoolean)
    {
      File localFile = new File(localStringBuilder.toString());
      if (!localFile.exists())
        localFile.mkdirs();
    }
    localStringBuilder.append(paramInt3);
    localStringBuilder.append("_");
    localStringBuilder.append(paramInt1);
    localStringBuilder.append("_");
    localStringBuilder.append(paramInt2);
    return new String[] { localStringBuilder.toString() + ".idx", localStringBuilder.toString() + ".dat" };
  }

  private int b(byte[] paramArrayOfByte)
  {
    return paramArrayOfByte[0] & 0xFF | paramArrayOfByte[1] << 8 & 0xFF00 | paramArrayOfByte[2] << 16 & 0xFF0000 | paramArrayOfByte[3] << 24 & 0xFF000000;
  }

  public int a(cc paramcc)
  {
    String[] arrayOfString = a(paramcc.b, paramcc.c, paramcc.d, true);
    if ((arrayOfString == null) || (arrayOfString.length != 2) || (arrayOfString[0].equals("")) || (Arrays.equals(arrayOfString, new String[arrayOfString.length])));
    while (true)
    {
      return -1;
      Object localObject1 = new File(arrayOfString[0]);
      if (!((File)localObject1).exists())
        continue;
      int i = a(paramcc.b, paramcc.c);
      if (i < 0)
        continue;
      StringBuilder localStringBuilder;
      byte[] arrayOfByte2;
      try
      {
        localObject1 = new RandomAccessFile((File)localObject1, "r");
        if (localObject1 == null)
          continue;
        l = i * 4;
      }
      catch (FileNotFoundException localIOException4)
      {
        try
        {
          ((RandomAccessFile)localObject1).seek(l);
          arrayOfByte1 = new byte[4];
        }
        catch (IOException localIOException4)
        {
          try
          {
            ((RandomAccessFile)localObject1).read(arrayOfByte1, 0, 4);
            a(arrayOfByte1);
            i = b(arrayOfByte1);
          }
          catch (IOException localIOException4)
          {
            try
            {
              ((RandomAccessFile)localObject1).close();
              if (i < 0)
                continue;
              localObject1 = new File(arrayOfString[1]);
              if (!((File)localObject1).exists())
                continue;
            }
            catch (IOException localIOException4)
            {
              try
              {
                localObject1 = new RandomAccessFile((File)localObject1, "r");
                if (localObject1 == null)
                  continue;
                l = i;
              }
              catch (FileNotFoundException localIOException4)
              {
                try
                {
                  long l;
                  ((RandomAccessFile)localObject1).seek(l);
                }
                catch (IOException localIOException4)
                {
                  try
                  {
                    while (true)
                    {
                      byte[] arrayOfByte1;
                      ((RandomAccessFile)localObject1).read(arrayOfByte1, 0, 4);
                      a(arrayOfByte1);
                      i = b(arrayOfByte1);
                      if ((i > 0) && (i <= 204800))
                        break;
                      try
                      {
                        ((RandomAccessFile)localObject1).close();
                        return -1;
                      }
                      catch (IOException paramcc)
                      {
                        cz.a(paramcc, "CachManager", "getTileFromCach");
                        return -1;
                      }
                      localFileNotFoundException1 = localFileNotFoundException1;
                      cz.a(localFileNotFoundException1, "CachManager", "getTileFromCach");
                      Object localObject2 = null;
                      continue;
                      localIOException3 = localIOException3;
                      cz.a(localIOException3, "CachManager", "getTileFromCach");
                      continue;
                      localIOException7 = localIOException7;
                      cz.a(localIOException7, "CachManager", "getTileFromCach");
                      continue;
                      localIOException1 = localIOException1;
                      cz.a(localIOException1, "CachManager", "getTileFromCach");
                      continue;
                      localFileNotFoundException2 = localFileNotFoundException2;
                      cz.a(localFileNotFoundException2, "CachManager", "getTileFromCach");
                      localStringBuilder = null;
                      continue;
                      localIOException4 = localIOException4;
                      cz.a(localIOException4, "CachManager", "getTileFromCach");
                    }
                  }
                  catch (IOException localIOException5)
                  {
                    while (true)
                      cz.a(localIOException5, "CachManager", "getTileFromCach");
                    arrayOfByte2 = new byte[i];
                  }
                }
              }
            }
          }
        }
      }
      try
      {
        localStringBuilder.read(arrayOfByte2, 0, i);
      }
      catch (IOException localIOException6)
      {
        try
        {
          while (true)
          {
            localStringBuilder.close();
            localStringBuilder = new StringBuilder();
            localStringBuilder.append(paramcc.b);
            localStringBuilder.append("-");
            localStringBuilder.append(paramcc.c);
            localStringBuilder.append("-");
            localStringBuilder.append(paramcc.d);
            if (this.b == null)
              break;
            return this.b.a(arrayOfByte2, null, true, null, localStringBuilder.toString());
            localIOException6 = localIOException6;
            cz.a(localIOException6, "CachManager", "getTileFromCach");
          }
        }
        catch (IOException localIOException2)
        {
          while (true)
            cz.a(localIOException2, "CachManager", "getTileFromCach");
        }
      }
    }
  }

  public void a(bm parambm)
  {
    this.b = parambm;
  }

  public boolean a(byte[] paramArrayOfByte, int paramInt1, int paramInt2, int paramInt3)
  {
    if (paramArrayOfByte == null);
    label586: for (boolean bool1 = false; ; bool1 = false)
      while (true)
      {
        return bool1;
        int i;
        String[] arrayOfString;
        Object localObject1;
        boolean bool2;
        try
        {
          i = paramArrayOfByte.length;
          if (i <= 0)
          {
            bool1 = false;
            continue;
          }
          arrayOfString = a(paramInt1, paramInt2, paramInt3, false);
          if ((arrayOfString == null) || (arrayOfString.length != 2) || (arrayOfString[0].equals("")) || (Arrays.equals(arrayOfString, new String[arrayOfString.length])))
            break label586;
          localObject1 = new File(arrayOfString[1]);
          bool1 = ((File)localObject1).exists();
          if (!bool1)
          {
            bool1 = false;
            try
            {
              bool2 = ((File)localObject1).createNewFile();
              bool1 = bool2;
              if (!bool1)
                bool1 = false;
            }
            catch (IOException localIOException6)
            {
              while (true)
                cz.a(localIOException6, "CachManager", "addDataToCach");
            }
          }
        }
        finally
        {
        }
        long l1;
        label367: long l2;
        try
        {
          localObject1 = new RandomAccessFile((File)localObject1, "rws");
          if (localObject1 == null)
            bool1 = false;
        }
        catch (FileNotFoundException localFileNotFoundException)
        {
          Object localObject2;
          while (true)
          {
            cz.a(localFileNotFoundException, "CachManager", "addDataToCach");
            localObject2 = null;
          }
          byte[] arrayOfByte3 = a(i);
          a(arrayOfByte3);
          try
          {
            l1 = localObject2.length();
          }
          catch (IOException localIOException3)
          {
            try
            {
              localObject2.seek(l1);
            }
            catch (IOException localIOException3)
            {
              try
              {
                localObject2.write(arrayOfByte3);
              }
              catch (IOException localIOException3)
              {
                try
                {
                  localObject2.write(paramArrayOfByte);
                }
                catch (IOException localIOException3)
                {
                  try
                  {
                    localObject2.close();
                    paramArrayOfByte = new File(arrayOfString[0]);
                    bool1 = paramArrayOfByte.exists();
                    if (!bool1)
                      bool1 = false;
                  }
                  catch (IOException paramArrayOfByte)
                  {
                    try
                    {
                      while (true)
                      {
                        bool2 = paramArrayOfByte.createNewFile();
                        bool1 = bool2;
                        if (bool1)
                          break label367;
                        bool1 = false;
                        break;
                        localIOException8 = localIOException8;
                        cz.a(localIOException8, "CachManager", "addDataToCach");
                        l1 = 0L;
                        continue;
                        localIOException9 = localIOException9;
                        cz.a(localIOException9, "CachManager", "addDataToCach");
                        continue;
                        localIOException7 = localIOException7;
                        cz.a(localIOException7, "CachManager", "addDataToCach");
                        continue;
                        paramArrayOfByte = paramArrayOfByte;
                        cz.a(paramArrayOfByte, "CachManager", "addDataToCach");
                      }
                      paramArrayOfByte = paramArrayOfByte;
                      cz.a(paramArrayOfByte, "CachManager", "addDataToCach");
                    }
                    catch (IOException localIOException1)
                    {
                      while (true)
                        cz.a(localIOException1, "CachManager", "addDataToCach");
                    }
                    try
                    {
                      paramArrayOfByte = new RandomAccessFile(paramArrayOfByte, "rws");
                      if (paramArrayOfByte == null)
                        bool1 = false;
                    }
                    catch (FileNotFoundException paramArrayOfByte)
                    {
                      while (true)
                      {
                        cz.a(paramArrayOfByte, "CachManager", "addDataToCach");
                        paramArrayOfByte = null;
                      }
                      l2 = 0L;
                      try
                      {
                        long l3 = paramArrayOfByte.length();
                        l2 = l3;
                        if (l2 == 0L)
                        {
                          arrayOfByte1 = new byte[65536];
                          Arrays.fill(arrayOfByte1, (byte)-1);
                        }
                      }
                      catch (IOException localIOException3)
                      {
                        try
                        {
                          byte[] arrayOfByte1;
                          paramArrayOfByte.write(arrayOfByte1);
                          paramInt1 = a(paramInt1, paramInt2);
                          if (paramInt1 >= 0);
                        }
                        catch (IOException localIOException3)
                        {
                          try
                          {
                            while (true)
                            {
                              paramArrayOfByte.close();
                              bool1 = false;
                              break;
                              localIOException2 = localIOException2;
                              cz.a(localIOException2, "CachManager", "addDataToCach");
                            }
                            localIOException3 = localIOException3;
                            cz.a(localIOException3, "CachManager", "addDataToCach");
                          }
                          catch (IOException paramArrayOfByte)
                          {
                            while (true)
                              cz.a(paramArrayOfByte, "CachManager", "addDataToCach");
                          }
                          l2 = paramInt1 * 4;
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
        try
        {
          paramArrayOfByte.seek(l2);
          paramInt1 = (int)l1;
          arrayOfByte2 = a(paramInt1);
          a(arrayOfByte2);
        }
        catch (IOException localIOException5)
        {
          try
          {
            byte[] arrayOfByte2;
            paramArrayOfByte.write(arrayOfByte2);
          }
          catch (IOException localIOException5)
          {
            try
            {
              while (true)
              {
                paramArrayOfByte.close();
                bool1 = true;
                break;
                localIOException4 = localIOException4;
                cz.a(localIOException4, "CachManager", "addDataToCach");
                continue;
                localIOException5 = localIOException5;
                cz.a(localIOException5, "CachManager", "addDataToCach");
              }
            }
            catch (IOException paramArrayOfByte)
            {
              while (true)
                cz.a(paramArrayOfByte, "CachManager", "addDataToCach");
            }
          }
        }
      }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.amap.api.mapcore2d.y
 * JD-Core Version:    0.6.2
 */