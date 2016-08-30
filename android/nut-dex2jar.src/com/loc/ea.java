package com.loc;

import android.content.Context;
import android.os.Build;
import android.os.Build.VERSION;
import android.text.TextUtils;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.UnsupportedEncodingException;

public final class ea
{
  // ERROR //
  public static String a()
  {
    // Byte code:
    //   0: invokestatic 14	java/lang/System:currentTimeMillis	()J
    //   3: invokestatic 20	java/lang/String:valueOf	(J)Ljava/lang/String;
    //   6: astore_1
    //   7: aload_1
    //   8: invokevirtual 24	java/lang/String:length	()I
    //   11: istore_0
    //   12: new 26	java/lang/StringBuilder
    //   15: dup
    //   16: invokespecial 30	java/lang/StringBuilder:<init>	()V
    //   19: aload_1
    //   20: iconst_0
    //   21: iload_0
    //   22: iconst_2
    //   23: isub
    //   24: invokevirtual 34	java/lang/String:substring	(II)Ljava/lang/String;
    //   27: invokevirtual 38	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   30: ldc 40
    //   32: invokevirtual 38	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   35: aload_1
    //   36: iload_0
    //   37: iconst_1
    //   38: isub
    //   39: invokevirtual 43	java/lang/String:substring	(I)Ljava/lang/String;
    //   42: invokevirtual 38	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   45: invokevirtual 46	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   48: astore_2
    //   49: aload_2
    //   50: areturn
    //   51: astore_2
    //   52: aconst_null
    //   53: astore_1
    //   54: aload_2
    //   55: invokevirtual 49	java/lang/Throwable:printStackTrace	()V
    //   58: aload_1
    //   59: areturn
    //   60: astore_2
    //   61: goto -7 -> 54
    //
    // Exception table:
    //   from	to	target	type
    //   0	7	51	java/lang/Throwable
    //   7	49	60	java/lang/Throwable
  }

  public static String a(Context paramContext, String paramString1, String paramString2)
  {
    try
    {
      paramContext = dy.d(paramContext);
      paramContext = ek.b(paramContext + ":" + paramString1.substring(0, paramString1.length() - 3) + ":" + paramString2);
      return paramContext;
    }
    catch (Throwable paramContext)
    {
      paramContext.printStackTrace();
    }
    return null;
  }

  public static String a(Context paramContext, boolean paramBoolean)
  {
    while (true)
    {
      ByteArrayOutputStream localByteArrayOutputStream;
      Object localObject1;
      try
      {
        localByteArrayOutputStream = new ByteArrayOutputStream();
        a(localByteArrayOutputStream, eh.l(paramContext));
        a(localByteArrayOutputStream, eh.d(paramContext));
        Object localObject2 = eh.a(paramContext);
        localObject1 = localObject2;
        if (localObject2 == null)
          localObject1 = "";
        a(localByteArrayOutputStream, (String)localObject1);
        a(localByteArrayOutputStream, dy.b(paramContext));
        a(localByteArrayOutputStream, Build.MODEL);
        a(localByteArrayOutputStream, Build.MANUFACTURER);
        a(localByteArrayOutputStream, Build.DEVICE);
        a(localByteArrayOutputStream, dy.a(paramContext));
        a(localByteArrayOutputStream, dy.c(paramContext));
        a(localByteArrayOutputStream, String.valueOf(Build.VERSION.SDK_INT));
        a(localByteArrayOutputStream, eh.m(paramContext));
        a(localByteArrayOutputStream, eh.k(paramContext));
        a(localByteArrayOutputStream, eh.h(paramContext));
        a(localByteArrayOutputStream, eh.g(paramContext));
        a(localByteArrayOutputStream, eh.n(paramContext));
        a(localByteArrayOutputStream, eh.f(paramContext));
        if (paramBoolean)
        {
          a(localByteArrayOutputStream, "");
          if (paramBoolean)
          {
            a(localByteArrayOutputStream, "");
            if (!paramBoolean)
              break label342;
            a(localByteArrayOutputStream, "");
            a(localByteArrayOutputStream, "");
            localObject1 = eq.a(localByteArrayOutputStream.toByteArray());
            paramContext = eq.b();
            if (localObject1.length <= 117)
              break label366;
            localObject2 = new byte[117];
            System.arraycopy(localObject1, 0, localObject2, 0, 117);
            localObject2 = ej.a((byte[])localObject2, paramContext);
            paramContext = new byte[localObject1.length + 128 - 117];
            System.arraycopy(localObject2, 0, paramContext, 0, 128);
            System.arraycopy(localObject1, 117, paramContext, 128, localObject1.length - 117);
            return ej.a(paramContext);
          }
        }
        else
        {
          a(localByteArrayOutputStream, eh.c(paramContext));
          continue;
        }
      }
      catch (Throwable paramContext)
      {
        paramContext.printStackTrace();
        return null;
      }
      a(localByteArrayOutputStream, eh.b(paramContext));
      continue;
      label342: paramContext = eh.e(paramContext);
      a(localByteArrayOutputStream, paramContext[0]);
      a(localByteArrayOutputStream, paramContext[1]);
      continue;
      label366: paramContext = ej.a((byte[])localObject1, paramContext);
    }
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
          break label63;
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
        paramByteArrayOutputStream.printStackTrace();
        return;
      }
      while (true)
      {
        label63: if ((paramByte & 0xFF) >= 255)
          break label83;
        break;
        return;
        i = 0;
      }
      label83: j = 0;
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
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.loc.ea
 * JD-Core Version:    0.6.2
 */