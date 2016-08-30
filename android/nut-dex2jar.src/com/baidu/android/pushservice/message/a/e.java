package com.baidu.android.pushservice.message.a;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.text.TextUtils;
import com.baidu.android.pushservice.c.d;
import com.baidu.android.pushservice.c.h;
import com.baidu.android.pushservice.h.a;
import com.baidu.android.pushservice.message.PublicMsg;
import com.baidu.android.pushservice.util.m;

public class e extends c
{
  private static final String b = e.class.getSimpleName();

  public e(Context paramContext)
  {
    super(paramContext);
  }

  public static PublicMsg a(Context paramContext, String paramString1, String paramString2, byte[] paramArrayOfByte1, byte[] paramArrayOfByte2)
  {
    Object localObject = null;
    do
    {
      try
      {
        String str1 = com.baidu.android.pushservice.j.e.a(m.a(paramString2.getBytes(), paramArrayOfByte2), false);
        String str2 = new String(com.baidu.android.pushservice.j.f.a(paramArrayOfByte1, "MIIBUwIBADANBgkqhkiG9w0BAQEFAASCAT0wggE5AgEAAkEAw8a6IWcegMVqTifD\rWKkKvoSIIDaBIEm1QpJ8vjUajP6HihfYWzq429zRc0+WjBnDU2nUAUobBGBUu4u+\ri3peeQIDAQABAkBYi6QZgXMpWKBo8tEGY4YpfvW2ZBBo0w15K5nhyVDV3Wo2tFDp\rJaBx7HY1WihCd6STczrO6yTGF2WXYA8rkUEBAiEA6IPQzZc7KgnIUSF2Asf7PCSf\rJqblINFEY9qpSzMWdmECIQDXjPQSnvoPUjTESsPBcuIoQZQDapjnXGq8dKt/z60v\rGQIgeNbo0bBjIznqTZ/iQRfFzkAKJoBeXGvl6y9dBKQMbIECIDJUAPEQGYbWROfI\rJSjX8CJCHZMmoojytSFHhHuVO/SRAiASwQ74b9JvnomuFX4cq4yCoWiBWVoxMyCd\rNAD4k4FVMw==\r"), "utf-8");
        paramArrayOfByte1 = localObject;
        if (str1 != null)
        {
          boolean bool = str2.equals(str1);
          if (!bool)
            paramArrayOfByte1 = localObject;
        }
        else
        {
          return paramArrayOfByte1;
        }
      }
      catch (Exception paramContext)
      {
        a.c(b, "e: " + paramContext);
        return null;
      }
      paramString1 = j.a(paramContext, paramString2, paramString1, paramArrayOfByte2);
      paramString1.mPkgName = paramContext.getPackageName();
      paramArrayOfByte1 = paramString1;
    }
    while (!TextUtils.isEmpty(paramString1.mTitle));
    paramString1.mTitle = paramContext.getPackageManager().getApplicationLabel(paramContext.getApplicationInfo()).toString();
    return paramString1;
  }

  public int a(String paramString1, String paramString2, int paramInt, byte[] paramArrayOfByte1, byte[] paramArrayOfByte2)
  {
    PublicMsg localPublicMsg = j.a(this.a, paramString2, paramString1, paramArrayOfByte2);
    if ((localPublicMsg != null) && (!TextUtils.isEmpty(localPublicMsg.mDescription)))
    {
      d locald = d.a(this.a, paramString1);
      switch (e.1.a[locald.a().ordinal()])
      {
      default:
        a.c(b, ">>> Don't Show pMsg private Notification! package name is null");
        f.a(this.a, paramString1);
        m.a(">>> Don't Show pMsg private Notification! package name is null", this.a);
        return 7;
      case 1:
      case 2:
        localPublicMsg.mPkgName = locald.a.c();
        PackageManager localPackageManager = this.a.getPackageManager();
        try
        {
          ApplicationInfo localApplicationInfo = localPackageManager.getApplicationInfo(localPublicMsg.mPkgName, 128);
          if (TextUtils.isEmpty(localPublicMsg.mTitle))
            localPublicMsg.mTitle = localPackageManager.getApplicationLabel(localApplicationInfo).toString();
          f.a(this.a, localPublicMsg, paramString2, paramString1, paramInt, paramArrayOfByte1, paramArrayOfByte2);
          a.c(b, ">>> Show pMsg private Notification!");
          m.a(">>> Show pMsg private Notification!", this.a);
          return 1;
        }
        catch (PackageManager.NameNotFoundException paramString2)
        {
          a.e(b, "error : " + paramString2.getMessage());
          if (locald.a() == com.baidu.android.pushservice.c.c.a)
            f.a(this.a, paramString1);
          while (true)
          {
            return 8;
            if (locald.a() == com.baidu.android.pushservice.c.c.b)
              com.baidu.android.pushservice.c.j.a(this.a).a(locald.b, false);
          }
        }
      case 3:
        if (TextUtils.isEmpty(localPublicMsg.mTitle))
          localPublicMsg.mTitle = paramString1;
        f.b(this.a, localPublicMsg, paramString2, paramString1);
        a.c(b, ">>> Show pMsg private web Notification!");
        m.a(">>> Show pMsg private Notification!", this.a);
        return 1;
      case 4:
      }
      paramInt = f.a(this.a, paramString1, paramString2, paramArrayOfByte2, localPublicMsg);
      a.c(b, ">>> Handle light app notification!");
      m.a(">>> Handle light app notification!", this.a);
      return paramInt;
    }
    a.e(b, ">>> pMsg JSON parsing error!");
    m.a(">>> pMsg JSON parsing error!", this.a);
    return 2;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.baidu.android.pushservice.message.a.e
 * JD-Core Version:    0.6.2
 */