package com.baidu.android.pushservice.message.a;

import android.content.Context;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.text.TextUtils;
import com.baidu.android.pushservice.c.b;
import com.baidu.android.pushservice.c.h;
import com.baidu.android.pushservice.h.a;
import com.baidu.android.pushservice.message.PublicMsg;

public class m extends c
{
  private static final String b = m.class.getSimpleName();

  public m(Context paramContext)
  {
    super(paramContext);
  }

  public int a(String paramString1, String paramString2, int paramInt, byte[] paramArrayOfByte1, byte[] paramArrayOfByte2)
  {
    PublicMsg localPublicMsg = j.a(this.a, paramString2, paramString1, paramArrayOfByte2);
    if ((localPublicMsg != null) && (!TextUtils.isEmpty(localPublicMsg.mUrl)))
    {
      h localh = b.a(this.a).d(paramString1);
      if ((localh != null) && (localh.c() != null))
      {
        localPublicMsg.mPkgName = localh.c();
        try
        {
          this.a.getPackageManager().getPackageInfo(localh.c(), 128);
          f.a(this.a, paramString1, localPublicMsg, paramString2, paramInt, paramArrayOfByte1, paramArrayOfByte2);
          a.c(b, ">>> Show rich media Notification!");
          com.baidu.android.pushservice.util.m.a(">>> Show rich media Notification!", this.a);
          return 1;
        }
        catch (PackageManager.NameNotFoundException paramString2)
        {
          paramString2 = ">>> NOT deliver to app: " + localh.c() + ", package has been uninstalled.";
          f.a(this.a, paramString1);
          a.b(b, paramString2);
          com.baidu.android.pushservice.util.m.a(paramString2, this.a);
          return 8;
        }
      }
      a.c(b, ">>> RichMediaMessage client Not found");
      return 7;
    }
    a.c(b, ">>> Don't Show rich media Notification! url is null");
    com.baidu.android.pushservice.util.m.a(">>> Don't Show rich media Notification! url is null", this.a);
    return 2;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.baidu.android.pushservice.message.a.m
 * JD-Core Version:    0.6.2
 */