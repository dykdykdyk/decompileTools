package com.baidu.android.pushservice.message.a;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import com.baidu.android.pushservice.c.d;
import com.baidu.android.pushservice.c.h;
import com.baidu.android.pushservice.c.i;
import com.baidu.android.pushservice.c.j;
import com.baidu.android.pushservice.h.a;
import com.baidu.android.pushservice.util.m;

public class g extends c
{
  private static final String b = g.class.getSimpleName();

  public g(Context paramContext)
  {
    super(paramContext);
  }

  public int a(String paramString1, String paramString2, int paramInt, byte[] paramArrayOfByte1, byte[] paramArrayOfByte2)
  {
    String str = new String(paramArrayOfByte2);
    d locald = d.a(this.a, paramString1);
    switch (g.1.a[locald.a().ordinal()])
    {
    default:
      a.b(b, "NOT delivere message to app: client not found appid " + paramString1);
      f.a(this.a, paramString1);
      a.c(b, "msgbody " + str);
      m.a(">>> Don't found app  in OldPrivateMessage " + str, this.a);
      return 7;
    case 1:
      Object localObject = this.a.getPackageManager();
      try
      {
        ((PackageManager)localObject).getPackageInfo(locald.a.c(), 128);
        localObject = new Intent();
        ((Intent)localObject).putExtra("app_id", paramString1);
        ((Intent)localObject).putExtra("msg_id", paramString2);
        ((Intent)localObject).putExtra("message", paramArrayOfByte2);
        ((Intent)localObject).putExtra("message_string", str);
        ((Intent)localObject).putExtra("message_id", paramString2);
        ((Intent)localObject).putExtra("baidu_message_type", paramInt);
        ((Intent)localObject).putExtra("baidu_message_body", paramArrayOfByte2);
        ((Intent)localObject).putExtra("baidu_message_secur_info", paramArrayOfByte1);
        m.a(this.a, (Intent)localObject, "com.baidu.android.pushservice.action.MESSAGE", locald.a.c());
        paramString2 = ">>> Deliver message to client: " + locald.a.c();
        a.c(b, paramString2);
        m.a(paramString2, this.a);
        return 0;
      }
      catch (PackageManager.NameNotFoundException paramString2)
      {
        paramString2 = ">>> NOT deliver to app: " + locald.a.c() + ", package has been uninstalled.";
        f.a(this.a, paramString1);
        a.b(b, paramString2);
        m.a(paramString2, this.a);
        return 7;
      }
    case 2:
      try
      {
        this.a.getPackageManager().getPackageInfo(locald.b.c(), 128);
        a.c(b, "receive sdk message " + str + " pkgName = " + locald.b.c());
        paramString1 = new Intent();
        paramString1.setPackage(locald.b.c());
        paramString1.putExtra("message", paramArrayOfByte2);
        paramString1.putExtra("message_string", str);
        paramString1.putExtra("baidu_message_type", paramInt);
        paramString1.putExtra("baidu_message_body", paramArrayOfByte2);
        paramString1.putExtra("baidu_message_secur_info", paramArrayOfByte1);
        paramString1.putExtra("message_id", paramString2);
        m.a(this.a, paramString1, "com.baidu.android.pushservice.action.SDK_MESSAGE", locald.b.c());
        return 0;
      }
      catch (PackageManager.NameNotFoundException paramString1)
      {
        j.a(this.a).a(locald.b, false);
        return 8;
      }
    case 3:
    }
    paramString1 = new Intent("com.baidu.android.pushservice.action.LAPP_MESSAGE");
    paramString1.putExtra("message", paramArrayOfByte2);
    paramString1.putExtra("message_string", str);
    paramString1.setFlags(32);
    this.a.sendBroadcast(paramString1);
    return 0;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.baidu.android.pushservice.message.a.g
 * JD-Core Version:    0.6.2
 */