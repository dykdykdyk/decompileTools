package com.amap.api.mapcore2d;

import android.content.Context;
import android.os.Build;
import android.os.Build.VERSION;
import android.text.TextUtils;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.security.cert.CertificateException;
import java.security.spec.InvalidKeySpecException;
import java.util.Map;
import javax.crypto.BadPaddingException;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.KeyGenerator;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.SecretKey;

public class dd
{
  // ERROR //
  public static String a()
  {
    // Byte code:
    //   0: invokestatic 19	java/lang/System:currentTimeMillis	()J
    //   3: invokestatic 25	java/lang/String:valueOf	(J)Ljava/lang/String;
    //   6: astore_1
    //   7: aload_1
    //   8: invokevirtual 29	java/lang/String:length	()I
    //   11: istore_0
    //   12: new 31	java/lang/StringBuilder
    //   15: dup
    //   16: invokespecial 32	java/lang/StringBuilder:<init>	()V
    //   19: aload_1
    //   20: iconst_0
    //   21: iload_0
    //   22: iconst_2
    //   23: isub
    //   24: invokevirtual 36	java/lang/String:substring	(II)Ljava/lang/String;
    //   27: invokevirtual 40	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   30: ldc 42
    //   32: invokevirtual 40	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   35: aload_1
    //   36: iload_0
    //   37: iconst_1
    //   38: isub
    //   39: invokevirtual 45	java/lang/String:substring	(I)Ljava/lang/String;
    //   42: invokevirtual 40	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   45: invokevirtual 48	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   48: astore_2
    //   49: aload_2
    //   50: areturn
    //   51: astore_2
    //   52: aconst_null
    //   53: astore_1
    //   54: aload_2
    //   55: ldc 50
    //   57: ldc 52
    //   59: invokestatic 57	com/amap/api/mapcore2d/dq:a	(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    //   62: aload_1
    //   63: areturn
    //   64: astore_2
    //   65: goto -11 -> 54
    //
    // Exception table:
    //   from	to	target	type
    //   0	7	51	java/lang/Throwable
    //   7	49	64	java/lang/Throwable
  }

  public static String a(Context paramContext, di paramdi)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    try
    {
      String str = de.e(paramContext);
      localStringBuilder.append("\"sim\":\"").append(str).append("\",\"sdkversion\":\"").append(paramdi.a).append("\",\"product\":\"").append(paramdi.c).append("\",\"ed\":\"").append(paramdi.d()).append("\",\"nt\":\"").append(de.c(paramContext)).append("\",\"np\":\"").append(de.a(paramContext)).append("\",\"mnc\":\"").append(de.b(paramContext)).append("\",\"ant\":\"").append(de.d(paramContext)).append("\"");
      return localStringBuilder.toString();
    }
    catch (Throwable paramContext)
    {
      while (true)
        paramContext.printStackTrace();
    }
  }

  public static String a(Context paramContext, di paramdi, Map<String, String> paramMap)
  {
    try
    {
      paramdi = new ByteArrayOutputStream();
      a(paramdi, "");
      a(paramdi, "");
      a(paramdi, "");
      a(paramdi, db.c(paramContext));
      a(paramdi, "");
      a(paramdi, "");
      a(paramdi, "");
      a(paramdi, "");
      a(paramdi, db.d(paramContext));
      a(paramdi, "");
      a(paramdi, "");
      a(paramdi, "");
      a(paramdi, "");
      a(paramdi, "");
      a(paramdi, "");
      a(paramdi, "");
      a(paramdi, "");
      a(paramdi, "");
      a(paramdi, "");
      a(paramdi, "");
      paramdi = dj.a(paramdi.toByteArray());
      paramContext = dj.a(paramContext);
      if (paramdi.length > 117)
      {
        paramMap = new byte[117];
        System.arraycopy(paramdi, 0, paramMap, 0, 117);
        paramMap = df.a(paramMap, paramContext);
        paramContext = new byte[paramdi.length + 128 - 117];
        System.arraycopy(paramMap, 0, paramContext, 0, 128);
        System.arraycopy(paramdi, 117, paramContext, 128, paramdi.length - 117);
      }
      while (true)
      {
        return df.b(paramContext);
        paramContext = df.a(paramdi, paramContext);
      }
    }
    catch (Throwable paramContext)
    {
      dq.a(paramContext, "CInfo", "InitXInfo");
    }
    return null;
  }

  public static String a(Context paramContext, di paramdi, Map<String, String> paramMap, boolean paramBoolean)
  {
    while (true)
    {
      ByteArrayOutputStream localByteArrayOutputStream;
      try
      {
        localByteArrayOutputStream = new ByteArrayOutputStream();
        a(localByteArrayOutputStream, de.q(paramContext));
        a(localByteArrayOutputStream, de.i(paramContext));
        paramMap = de.f(paramContext);
        paramdi = paramMap;
        if (paramMap == null)
          paramdi = "";
        a(localByteArrayOutputStream, paramdi);
        a(localByteArrayOutputStream, db.c(paramContext));
        a(localByteArrayOutputStream, Build.MODEL);
        a(localByteArrayOutputStream, Build.MANUFACTURER);
        a(localByteArrayOutputStream, Build.DEVICE);
        a(localByteArrayOutputStream, db.b(paramContext));
        a(localByteArrayOutputStream, db.d(paramContext));
        a(localByteArrayOutputStream, String.valueOf(Build.VERSION.SDK_INT));
        a(localByteArrayOutputStream, de.r(paramContext));
        a(localByteArrayOutputStream, de.p(paramContext));
        a(localByteArrayOutputStream, de.m(paramContext));
        a(localByteArrayOutputStream, de.l(paramContext));
        a(localByteArrayOutputStream, de.s(paramContext));
        a(localByteArrayOutputStream, de.k(paramContext));
        if (paramBoolean)
        {
          a(localByteArrayOutputStream, "");
          if (paramBoolean)
          {
            a(localByteArrayOutputStream, "");
            if (!paramBoolean)
              break label347;
            a(localByteArrayOutputStream, "");
            a(localByteArrayOutputStream, "");
            paramdi = dj.a(localByteArrayOutputStream.toByteArray());
            paramContext = dj.a(paramContext);
            if (paramdi.length <= 117)
              break label371;
            paramMap = new byte[117];
            System.arraycopy(paramdi, 0, paramMap, 0, 117);
            paramMap = df.a(paramMap, paramContext);
            paramContext = new byte[paramdi.length + 128 - 117];
            System.arraycopy(paramMap, 0, paramContext, 0, 128);
            System.arraycopy(paramdi, 117, paramContext, 128, paramdi.length - 117);
            return df.b(paramContext);
          }
        }
        else
        {
          a(localByteArrayOutputStream, de.h(paramContext));
          continue;
        }
      }
      catch (Throwable paramContext)
      {
        dq.a(paramContext, "CInfo", "InitXInfo");
        return null;
      }
      a(localByteArrayOutputStream, de.g(paramContext));
      continue;
      label347: paramdi = de.j(paramContext);
      a(localByteArrayOutputStream, paramdi[0]);
      a(localByteArrayOutputStream, paramdi[1]);
      continue;
      label371: paramContext = df.a(paramdi, paramContext);
    }
  }

  public static String a(Context paramContext, String paramString1, String paramString2)
  {
    try
    {
      paramContext = db.e(paramContext);
      paramContext = dg.a(paramContext + ":" + paramString1.substring(0, paramString1.length() - 3) + ":" + paramString2);
      return paramContext;
    }
    catch (Throwable paramContext)
    {
      dq.a(paramContext, "CInfo", "Scode");
    }
    return null;
  }

  static String a(Context paramContext, byte[] paramArrayOfByte)
    throws InvalidKeyException, IOException, InvalidKeySpecException, NoSuchPaddingException, NoSuchAlgorithmException, IllegalBlockSizeException, BadPaddingException, CertificateException
  {
    Object localObject = KeyGenerator.getInstance("AES");
    if (localObject == null);
    do
    {
      return null;
      ((KeyGenerator)localObject).init(256);
      localObject = ((KeyGenerator)localObject).generateKey().getEncoded();
      paramContext = dj.a(paramContext);
    }
    while (paramContext == null);
    paramContext = df.a((byte[])localObject, paramContext);
    paramArrayOfByte = df.a((byte[])localObject, paramArrayOfByte);
    localObject = new byte[paramContext.length + paramArrayOfByte.length];
    System.arraycopy(paramContext, 0, localObject, 0, paramContext.length);
    System.arraycopy(paramArrayOfByte, 0, localObject, paramContext.length, paramArrayOfByte.length);
    paramContext = dj.a((byte[])localObject);
    if (paramContext != null)
      return df.b(paramContext);
    return "";
  }

  private static void a(ByteArrayOutputStream paramByteArrayOutputStream, byte paramByte, byte[] paramArrayOfByte)
  {
    int j = 1;
    while (true)
    {
      int i;
      try
      {
        paramByteArrayOutputStream.write(new byte[] { paramByte });
        if (paramByte > 0)
        {
          i = 1;
          break label68;
          if ((j & i) != 0)
          {
            paramByteArrayOutputStream.write(paramArrayOfByte);
            return;
          }
          if ((paramByte & 0xFF) == 255)
          {
            paramByteArrayOutputStream.write(paramArrayOfByte, 0, 255);
            return;
          }
        }
      }
      catch (IOException paramByteArrayOutputStream)
      {
        dq.a(paramByteArrayOutputStream, "CInfo", "writeField");
        return;
      }
      while (true)
      {
        label68: if ((paramByte & 0xFF) >= 255)
          break label88;
        break;
        return;
        i = 0;
      }
      label88: j = 0;
    }
  }

  private static void a(ByteArrayOutputStream paramByteArrayOutputStream, String paramString)
  {
    if (!TextUtils.isEmpty(paramString))
    {
      byte b;
      if (paramString.getBytes().length > 255)
        b = -1;
      try
      {
        while (true)
        {
          a(paramByteArrayOutputStream, b, paramString.getBytes("UTF-8"));
          return;
          b = (byte)paramString.getBytes().length;
        }
      }
      catch (UnsupportedEncodingException localUnsupportedEncodingException)
      {
        a(paramByteArrayOutputStream, b, paramString.getBytes());
        return;
      }
    }
    a(paramByteArrayOutputStream, (byte)0, new byte[0]);
  }

  public static String b(Context paramContext, byte[] paramArrayOfByte)
  {
    try
    {
      paramContext = a(paramContext, paramArrayOfByte);
      return paramContext;
    }
    catch (InvalidKeyException paramContext)
    {
      dq.a(paramContext, "CInfo", "AESData");
      return "";
    }
    catch (NoSuchAlgorithmException paramContext)
    {
      while (true)
        dq.a(paramContext, "CInfo", "AESData");
    }
    catch (NoSuchPaddingException paramContext)
    {
      while (true)
        dq.a(paramContext, "CInfo", "AESData");
    }
    catch (IllegalBlockSizeException paramContext)
    {
      while (true)
        dq.a(paramContext, "CInfo", "AESData");
    }
    catch (BadPaddingException paramContext)
    {
      while (true)
        dq.a(paramContext, "CInfo", "AESData");
    }
    catch (InvalidKeySpecException paramContext)
    {
      while (true)
        dq.a(paramContext, "CInfo", "AESData");
    }
    catch (CertificateException paramContext)
    {
      while (true)
        dq.a(paramContext, "CInfo", "AESData");
    }
    catch (IOException paramContext)
    {
      while (true)
        dq.a(paramContext, "CInfo", "AESData");
    }
    catch (Throwable paramContext)
    {
      while (true)
        dq.a(paramContext, "CInfo", "AESData");
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.amap.api.mapcore2d.dd
 * JD-Core Version:    0.6.2
 */