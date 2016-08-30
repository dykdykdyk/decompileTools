package com.baidu.android.pushservice;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.text.TextUtils;
import com.baidu.android.pushservice.c.b;
import com.baidu.android.pushservice.c.g;
import com.baidu.android.pushservice.c.h;
import com.baidu.android.pushservice.c.j;
import com.baidu.android.pushservice.h.a;
import com.baidu.android.pushservice.util.m;

public class RegistrationReceiver extends BroadcastReceiver
{
  static void a(Context paramContext, h paramh)
  {
    Intent localIntent = new Intent();
    localIntent.setAction("com.baidu.android.pushservice.action.METHOD");
    localIntent.putExtra("method", "com.baidu.android.pushservice.action.UNBINDAPP");
    localIntent.putExtra("package_name", paramh.c());
    localIntent.putExtra("app_id", paramh.a());
    localIntent.putExtra("user_id", paramh.e);
    com.baidu.android.pushservice.util.l.a(paramContext, localIntent);
  }

  private static void e(Context paramContext, Intent paramIntent)
  {
    String str = paramIntent.getStringExtra("r_sync_from");
    if (paramContext.getPackageName().equals(str));
    do
    {
      return;
      paramIntent = paramIntent.getStringExtra("r_sync_rdata_v2");
    }
    while (TextUtils.isEmpty(paramIntent));
    a.b("RegistrationReceiver", "handleRegisterSync rdataV2: " + paramIntent + " from: " + str);
    b.a(paramContext).a("r_v2", paramIntent);
  }

  private static void f(Context paramContext, Intent paramIntent)
  {
    paramIntent = paramIntent.getStringExtra("r_sync_from");
    if (paramContext.getPackageName().equals(paramIntent))
      return;
    com.baidu.android.pushservice.c.l.a(paramContext).b();
  }

  private static void g(Context paramContext, Intent paramIntent)
  {
    paramIntent = paramIntent.getStringExtra("r_sync_from");
    if (paramContext.getPackageName().equals(paramIntent))
      return;
    g.a(paramContext).b();
  }

  private static void h(Context paramContext, Intent paramIntent)
  {
    paramIntent = paramIntent.getStringExtra("r_sync_sdk_from");
    if (paramContext.getPackageName().equals(paramIntent))
      return;
    j.a(paramContext).b();
  }

  public void onReceive(Context paramContext, Intent paramIntent)
  {
    String str = paramIntent.getAction();
    if ("android.intent.action.PACKAGE_REMOVED".equals(str))
    {
      str = m.u(paramContext);
      if (!paramContext.getPackageName().equals(str))
        a.b("RegistrationReceiver", "not hightest package return");
      boolean bool;
      do
      {
        return;
        str = paramIntent.getData().getSchemeSpecificPart();
        bool = paramIntent.getBooleanExtra("android.intent.extra.REPLACING", false);
        a.b("RegistrationReceiver", "start for ACTION_PACKAGE_REMOVED，replacing：" + bool + " ,packageName: " + str);
        if (!bool)
          PushSettings.b(paramContext, str);
        paramIntent = b.a(paramContext).c(str);
      }
      while ((bool) || (paramIntent == null) || (paramContext.getPackageName().equals(paramIntent.c())));
      a.b("RegistrationReceiver", "unregister registered push client : " + str);
      a(paramContext, paramIntent);
      return;
    }
    if ("com.baidu.android.pushservice.action.BIND_SYNC".equals(str))
    {
      new Thread(new RegistrationReceiver.1(this, paramIntent, paramContext)).start();
      return;
    }
    com.baidu.android.pushservice.util.l.b(paramContext, paramIntent);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.baidu.android.pushservice.RegistrationReceiver
 * JD-Core Version:    0.6.2
 */