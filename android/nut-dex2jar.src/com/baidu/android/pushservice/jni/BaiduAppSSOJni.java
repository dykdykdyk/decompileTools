package com.baidu.android.pushservice.jni;

import android.content.Context;
import com.baidu.android.pushservice.j.b;
import com.baidu.android.pushservice.j.c;
import com.baidu.android.pushservice.util.m;

public class BaiduAppSSOJni
{
  private static final String TAG = "BaiduAppSSOJni";

  static
  {
    try
    {
      System.loadLibrary("bdpush_V2_5");
      return;
    }
    catch (UnsatisfiedLinkError localUnsatisfiedLinkError)
    {
      com.baidu.android.pushservice.h.a.e("BaiduAppSSOJni", "Native library not found! Please copy libbdpush_V2_5.so into your project!");
    }
  }

  private static native byte[] encrypt(String paramString1, String paramString2);

  public static String getDecrypted(Context paramContext, String paramString1, String paramString2)
  {
    Object localObject = paramString1;
    if (paramString1 == null)
      localObject = "";
    while (true)
    {
      try
      {
        localObject = getKey((String)localObject);
        if (localObject == null)
        {
          com.baidu.android.pushservice.h.a.a("BaiduAppSSOJni", "keyInfo null");
          return null;
        }
        paramString1 = b.a(paramString2.getBytes());
        localObject = new String((byte[])localObject, "utf-8");
        if (((String)localObject).length() > 0)
        {
          String str = ((String)localObject).substring(0, 16);
          paramString1 = new String(com.baidu.android.pushservice.j.a.b(((String)localObject).substring(16), str, paramString1), "utf-8");
          paramContext = paramString1;
          return paramContext;
        }
      }
      catch (Exception paramContext)
      {
        com.baidu.android.pushservice.h.a.a("BaiduAppSSOJni", "getDecrypted: " + paramContext);
        return null;
      }
      catch (UnsatisfiedLinkError paramString1)
      {
        com.baidu.android.pushservice.h.a.e("BaiduAppSSOJni", "UnsatisfiedLinkError getDecrypted " + paramString2);
        m.a("UnsatisfiedLinkError getDecrypted " + paramString2, paramContext);
        return null;
      }
      paramContext = null;
    }
  }

  public static String getEncrypted(Context paramContext, String paramString1, String paramString2)
  {
    Object localObject = paramString1;
    if (paramString1 == null)
      localObject = "";
    try
    {
      localObject = getKey((String)localObject);
      if (localObject == null)
      {
        com.baidu.android.pushservice.h.a.a("BaiduAppSSOJni", "keyInfo null");
        return null;
      }
      paramString1 = paramString2.getBytes();
      localObject = new String((byte[])localObject, "utf-8");
      if (((String)localObject).length() > 0)
      {
        String str = ((String)localObject).substring(0, 16);
        paramString1 = b.a(com.baidu.android.pushservice.j.a.a(((String)localObject).substring(16), str, paramString1), "utf-8");
        return paramString1;
      }
    }
    catch (Exception paramContext)
    {
      com.baidu.android.pushservice.h.a.a("BaiduAppSSOJni", "getEncrypted: " + paramContext);
      return null;
    }
    catch (UnsatisfiedLinkError paramString1)
    {
      com.baidu.android.pushservice.h.a.e("BaiduAppSSOJni", "UnsatisfiedLinkError getEncrypted " + paramString2);
      m.a("UnsatisfiedLinkError getEncrypted " + paramString2, paramContext);
    }
    return null;
  }

  private static native byte[] getKey(String paramString);

  public static String getPushHash(Context paramContext, String paramString1, String paramString2, String paramString3)
  {
    if ((paramContext == null) || (paramString1 == null) || (paramString2 == null))
      return null;
    if (paramString3 == null)
      paramString3 = "other";
    while (true)
    {
      String str = m.p(paramContext.getApplicationContext(), paramString1);
      if (str == null)
      {
        com.baidu.android.pushservice.h.a.c("BaiduAppSSOJni", "can not get singInfo for: " + paramString1);
        return null;
      }
      long l = System.currentTimeMillis();
      paramContext = getSsoHashNative(paramContext, paramString1, paramString2, str, c.a(paramContext), paramString3, l);
      try
      {
        paramContext = b.a(paramContext, "utf-8");
        return paramContext;
      }
      catch (Exception paramContext)
      {
        com.baidu.android.pushservice.h.a.c("BaiduAppSSOJni", "getPushHashException: " + paramContext);
        return "";
      }
    }
  }

  private static native byte[] getSsoHashNative(Context paramContext, String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, long paramLong);
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.baidu.android.pushservice.jni.BaiduAppSSOJni
 * JD-Core Version:    0.6.2
 */