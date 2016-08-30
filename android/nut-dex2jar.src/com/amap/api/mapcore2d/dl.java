package com.amap.api.mapcore2d;

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

public class dl
{
  public static String a(Context paramContext)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    try
    {
      localStringBuilder.append("\"key\":\"").append(db.f(paramContext)).append("\",\"platform\":\"android\",\"diu\":\"").append(de.q(paramContext)).append("\",\"pkg\":\"").append(db.c(paramContext)).append("\",\"model\":\"").append(Build.MODEL).append("\",\"appname\":\"").append(db.b(paramContext)).append("\",\"appversion\":\"").append(db.d(paramContext)).append("\",\"sysversion\":\"").append(Build.VERSION.RELEASE).append("\",");
      return localStringBuilder.toString();
    }
    catch (Throwable paramContext)
    {
      while (true)
        dq.a(paramContext, "CInfo", "getPublicJSONInfo");
    }
  }

  public static String a(Context paramContext, byte[] paramArrayOfByte)
  {
    try
    {
      paramContext = dd.a(paramContext, paramArrayOfByte);
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
 * Qualified Name:     com.amap.api.mapcore2d.dl
 * JD-Core Version:    0.6.2
 */