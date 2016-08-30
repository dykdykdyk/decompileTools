package com.amap.api.services.core;

import android.content.Context;
import android.os.Build;
import android.os.Build.VERSION;
import java.io.IOException;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.security.cert.CertificateException;
import java.security.spec.InvalidKeySpecException;
import javax.crypto.BadPaddingException;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.NoSuchPaddingException;

public class at
{
  public static String a(Context paramContext)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    try
    {
      localStringBuilder.append("\"key\":\"").append(aj.f(paramContext)).append("\",\"platform\":\"android\",\"diu\":\"").append(an.q(paramContext)).append("\",\"pkg\":\"").append(aj.c(paramContext)).append("\",\"model\":\"").append(Build.MODEL).append("\",\"appname\":\"").append(aj.b(paramContext)).append("\",\"appversion\":\"").append(aj.d(paramContext)).append("\",\"sysversion\":\"").append(Build.VERSION.RELEASE).append("\",");
      return localStringBuilder.toString();
    }
    catch (Throwable paramContext)
    {
      while (true)
        ay.a(paramContext, "CInfo", "getPublicJSONInfo");
    }
  }

  public static String a(Context paramContext, byte[] paramArrayOfByte)
  {
    try
    {
      paramContext = al.a(paramContext, paramArrayOfByte);
      return paramContext;
    }
    catch (InvalidKeyException paramContext)
    {
      paramContext.printStackTrace();
      return "";
    }
    catch (NoSuchAlgorithmException paramContext)
    {
      while (true)
        paramContext.printStackTrace();
    }
    catch (NoSuchPaddingException paramContext)
    {
      while (true)
        paramContext.printStackTrace();
    }
    catch (IllegalBlockSizeException paramContext)
    {
      while (true)
        paramContext.printStackTrace();
    }
    catch (BadPaddingException paramContext)
    {
      while (true)
        paramContext.printStackTrace();
    }
    catch (InvalidKeySpecException paramContext)
    {
      while (true)
        paramContext.printStackTrace();
    }
    catch (CertificateException paramContext)
    {
      while (true)
        paramContext.printStackTrace();
    }
    catch (IOException paramContext)
    {
      while (true)
        paramContext.printStackTrace();
    }
    catch (Throwable paramContext)
    {
      while (true)
        paramContext.printStackTrace();
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.amap.api.services.core.at
 * JD-Core Version:    0.6.2
 */