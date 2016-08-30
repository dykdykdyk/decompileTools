package u.aly;

import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.StringWriter;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

public final class cs
{
  public static final String a = System.getProperty("line.separator");

  public static String a(InputStream paramInputStream)
    throws IOException
  {
    paramInputStream = new InputStreamReader(paramInputStream);
    char[] arrayOfChar = new char[1024];
    StringWriter localStringWriter = new StringWriter();
    while (true)
    {
      int i = paramInputStream.read(arrayOfChar);
      if (-1 == i)
        break;
      localStringWriter.write(arrayOfChar, 0, i);
    }
    return localStringWriter.toString();
  }

  public static String a(String paramString)
  {
    int i = 0;
    if (paramString == null)
      return null;
    try
    {
      Object localObject1 = paramString.getBytes();
      Object localObject2 = MessageDigest.getInstance("MD5");
      ((MessageDigest)localObject2).reset();
      ((MessageDigest)localObject2).update((byte[])localObject1);
      localObject1 = ((MessageDigest)localObject2).digest();
      localObject2 = new StringBuffer();
      while (i < localObject1.length)
      {
        ((StringBuffer)localObject2).append(String.format("%02X", new Object[] { Byte.valueOf(localObject1[i]) }));
        i += 1;
      }
      localObject1 = ((StringBuffer)localObject2).toString();
      return localObject1;
    }
    catch (Exception localException)
    {
    }
    return paramString.replaceAll("[^[a-z][A-Z][0-9][.][_]]", "");
  }

  public static void a(File paramFile, String paramString)
    throws IOException
  {
    a(paramFile, paramString.getBytes());
  }

  // ERROR //
  public static void a(File paramFile, byte[] paramArrayOfByte)
    throws IOException
  {
    // Byte code:
    //   0: new 105	java/io/FileOutputStream
    //   3: dup
    //   4: aload_0
    //   5: invokespecial 108	java/io/FileOutputStream:<init>	(Ljava/io/File;)V
    //   8: astore_0
    //   9: aload_0
    //   10: aload_1
    //   11: invokevirtual 110	java/io/FileOutputStream:write	([B)V
    //   14: aload_0
    //   15: invokevirtual 113	java/io/FileOutputStream:flush	()V
    //   18: aload_0
    //   19: invokevirtual 118	java/io/OutputStream:close	()V
    //   22: return
    //   23: astore_1
    //   24: aload_0
    //   25: invokevirtual 118	java/io/OutputStream:close	()V
    //   28: aload_1
    //   29: athrow
    //   30: astore_0
    //   31: return
    //   32: astore_0
    //   33: goto -5 -> 28
    //
    // Exception table:
    //   from	to	target	type
    //   9	18	23	finally
    //   18	22	30	java/lang/Exception
    //   24	28	32	java/lang/Exception
  }

  public static String b(String paramString)
  {
    try
    {
      Object localObject = MessageDigest.getInstance("MD5");
      ((MessageDigest)localObject).update(paramString.getBytes());
      paramString = ((MessageDigest)localObject).digest();
      localObject = new StringBuffer();
      int i = 0;
      while (i < paramString.length)
      {
        ((StringBuffer)localObject).append(Integer.toHexString(paramString[i] & 0xFF));
        i += 1;
      }
      paramString = ((StringBuffer)localObject).toString();
      return paramString;
    }
    catch (NoSuchAlgorithmException paramString)
    {
      ct.a("helper", "getMD5 error", paramString);
    }
    return "";
  }

  public static byte[] b(InputStream paramInputStream)
    throws IOException
  {
    ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream();
    byte[] arrayOfByte = new byte[1024];
    while (true)
    {
      int i = paramInputStream.read(arrayOfByte);
      if (-1 == i)
        break;
      localByteArrayOutputStream.write(arrayOfByte, 0, i);
    }
    return localByteArrayOutputStream.toByteArray();
  }

  public static void c(InputStream paramInputStream)
  {
    if (paramInputStream != null);
    try
    {
      paramInputStream.close();
      return;
    }
    catch (Exception paramInputStream)
    {
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     u.aly.cs
 * JD-Core Version:    0.6.2
 */