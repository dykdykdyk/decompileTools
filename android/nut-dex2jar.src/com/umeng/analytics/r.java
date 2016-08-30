package com.umeng.analytics;

import android.content.Context;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.io.Writer;
import java.security.MessageDigest;
import java.util.Locale;
import java.util.Random;
import javax.crypto.Cipher;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;
import u.aly.ct;
import u.aly.ej;
import u.aly.ev;

public final class r
{
  private static final byte[] a = { 10, 1, 11, 5, 4, 15, 7, 9, 23, 3, 1, 6, 8, 12, 13, 91 };

  public static int a(int paramInt, String paramString)
  {
    int i = 0;
    if (new Random().nextFloat() < 0.001D)
      if (paramString == null)
        ct.b("--->", new Object[] { "null signature.." });
    try
    {
      paramInt = Integer.parseInt(paramString.substring(9, 11), 16);
      paramInt = (paramInt | 0x80) * 1000;
      do
      {
        do
        {
          return paramInt;
          i = new Random().nextInt(paramInt);
          paramInt = i;
        }
        while (i > 255000);
        paramInt = i;
      }
      while (i < 128000);
      return 127000;
    }
    catch (Exception paramString)
    {
      while (true)
        paramInt = i;
    }
  }

  public static String a(Throwable paramThrowable)
  {
    Object localObject2 = null;
    if (paramThrowable == null)
      return null;
    Object localObject1 = localObject2;
    try
    {
      StringWriter localStringWriter = new StringWriter();
      localObject1 = localObject2;
      PrintWriter localPrintWriter = new PrintWriter(localStringWriter);
      localObject1 = localObject2;
      paramThrowable.printStackTrace(localPrintWriter);
      localObject1 = localObject2;
      for (paramThrowable = paramThrowable.getCause(); paramThrowable != null; paramThrowable = paramThrowable.getCause())
      {
        localObject1 = localObject2;
        paramThrowable.printStackTrace(localPrintWriter);
        localObject1 = localObject2;
      }
      localObject1 = localObject2;
      paramThrowable = localStringWriter.toString();
      localObject1 = paramThrowable;
      localPrintWriter.close();
      localObject1 = paramThrowable;
      localStringWriter.close();
      return paramThrowable;
    }
    catch (Exception paramThrowable)
    {
      paramThrowable.printStackTrace();
    }
    return localObject1;
  }

  public static String a(byte[] paramArrayOfByte)
  {
    if (paramArrayOfByte == null)
      return null;
    StringBuffer localStringBuffer = new StringBuffer();
    int i = 0;
    while (i < paramArrayOfByte.length)
    {
      localStringBuffer.append(String.format("%02X", new Object[] { Byte.valueOf(paramArrayOfByte[i]) }));
      i += 1;
    }
    return localStringBuffer.toString().toLowerCase(Locale.US);
  }

  public static boolean a(Context paramContext, byte[] paramArrayOfByte)
  {
    long l = paramArrayOfByte.length;
    if (l > q.e)
    {
      aa.a(paramContext).e();
      ej.f = paramContext;
      ev.a().a(l, System.currentTimeMillis(), "__data_size_of");
      return true;
    }
    return false;
  }

  public static byte[] a(String paramString)
  {
    Object localObject = null;
    if (paramString == null);
    int j;
    do
    {
      return localObject;
      j = paramString.length();
    }
    while (j % 2 != 0);
    byte[] arrayOfByte = new byte[j / 2];
    int i = 0;
    while (true)
    {
      localObject = arrayOfByte;
      if (i >= j)
        break;
      arrayOfByte[(i / 2)] = ((byte)Integer.valueOf(paramString.substring(i, i + 2), 16).intValue());
      i += 2;
    }
  }

  public static byte[] a(byte[] paramArrayOfByte1, byte[] paramArrayOfByte2)
    throws Exception
  {
    Cipher localCipher = Cipher.getInstance("AES/CBC/PKCS7Padding");
    localCipher.init(1, new SecretKeySpec(paramArrayOfByte2, "AES"), new IvParameterSpec(a));
    return localCipher.doFinal(paramArrayOfByte1);
  }

  public static byte[] b(byte[] paramArrayOfByte)
  {
    try
    {
      MessageDigest localMessageDigest = MessageDigest.getInstance("MD5");
      localMessageDigest.reset();
      localMessageDigest.update(paramArrayOfByte);
      paramArrayOfByte = localMessageDigest.digest();
      return paramArrayOfByte;
    }
    catch (Exception paramArrayOfByte)
    {
      paramArrayOfByte.printStackTrace();
    }
    return null;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.umeng.analytics.r
 * JD-Core Version:    0.6.2
 */