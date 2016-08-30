package com.baidu.android.pushservice.util;

import android.app.ActivityManager;
import android.app.ActivityManager.RunningServiceInfo;
import android.app.PendingIntent;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import com.baidu.android.pushservice.h.b;
import java.util.Iterator;
import java.util.List;

public class l
{
  public static void a(Context paramContext)
  {
    b.a("ServiceUtils", "--- Start Service from " + paramContext.getPackageName(), paramContext.getApplicationContext());
    if (com.baidu.android.pushservice.a.b(paramContext))
    {
      b(paramContext);
      com.baidu.android.pushservice.a.a(paramContext, false);
      return;
    }
    d(paramContext);
  }

  public static void a(Context paramContext, Intent paramIntent)
  {
    Intent localIntent;
    if (paramIntent != null)
    {
      localIntent = paramIntent;
      if (!TextUtils.isEmpty(paramIntent.getAction()));
    }
    else
    {
      localIntent = c(paramContext);
    }
    paramIntent = m.n(paramContext, m.u(paramContext));
    com.baidu.android.pushservice.h.a.c("ServiceUtils", "package: " + paramIntent);
    a(paramContext, localIntent, paramIntent);
  }

  private static void a(Context paramContext, Intent paramIntent, String paramString)
  {
    if (!TextUtils.isEmpty(paramString))
      paramIntent.setPackage(paramString);
    b.a("ServiceUtils", "startPushService go on pkgName = " + paramString, paramContext.getApplicationContext());
    try
    {
      if (!TextUtils.isEmpty(paramString))
      {
        paramIntent.setClassName(paramString, "com.baidu.android.pushservice.PushService");
        paramContext.startService(paramIntent);
        b.a("ServiceUtils", "startPushService by startService", paramContext.getApplicationContext());
        return;
      }
    }
    catch (Exception localException)
    {
      b.b("ServiceUtils", "START SERVICE E: " + localException, paramContext.getApplicationContext());
      try
      {
        String str = m.d(paramContext, paramString, paramIntent.getAction());
        if (!TextUtils.isEmpty(str))
        {
          paramIntent.setClassName(paramString, str);
          paramContext.sendBroadcast(paramIntent);
          b.a("ServiceUtils", "startPushService by sendBroadcast", paramContext.getApplicationContext());
          return;
        }
      }
      catch (Exception paramString)
      {
        b.b("ServiceUtils", "START SERVICE E-2: " + paramString, paramContext.getApplicationContext());
        paramContext.sendBroadcast(paramIntent);
        b.a("ServiceUtils", "startPushService by sendBroadcast all", paramContext.getApplicationContext());
      }
    }
  }

  public static void a(Context paramContext, String paramString)
  {
    Intent localIntent = c(paramContext);
    localIntent.putExtra("method", "pushservice_restart_v2");
    if ((!TextUtils.isEmpty(paramString)) && (paramString.equals(paramContext.getPackageName())))
      localIntent.putExtra("priority2", 9223372036854775807L);
    a(paramContext, localIntent, paramString);
  }

  public static void b(Context paramContext)
  {
    if (paramContext == null);
    while (true)
    {
      return;
      Object localObject = m.u(paramContext);
      long l = m.g(paramContext, (String)localObject);
      if ((!TextUtils.isEmpty((CharSequence)localObject)) && (!((String)localObject).equals(paramContext.getPackageName())) && (l < m.k(paramContext)))
      {
        a(paramContext, (String)localObject);
        return;
      }
      if ((TextUtils.isEmpty((CharSequence)localObject)) || (((String)localObject).equals(paramContext.getPackageName())))
      {
        localObject = m.r(paramContext);
        if (!((List)localObject).isEmpty())
        {
          localObject = ((List)localObject).iterator();
          while (((Iterator)localObject).hasNext())
          {
            String str = (String)((Iterator)localObject).next();
            if (!paramContext.getPackageName().equals(str))
              a(paramContext, str);
          }
        }
      }
    }
  }

  public static void b(Context paramContext, Intent paramIntent)
  {
    a(paramContext, paramIntent, paramContext.getPackageName());
  }

  public static Intent c(Context paramContext)
  {
    Intent localIntent = new Intent("com.baidu.android.pushservice.action.METHOD");
    localIntent.addFlags(32);
    Object localObject = null;
    try
    {
      PendingIntent localPendingIntent = PendingIntent.getBroadcast(paramContext, 0, new Intent(), 0);
      localObject = localPendingIntent;
      localIntent.putExtra("app", localObject);
      localIntent.putExtra("pkg_name", paramContext.getPackageName());
      localIntent.putExtra("method_version", "V2");
      localIntent.putExtra("priority2", m.k(paramContext));
      return localIntent;
    }
    catch (Exception localException)
    {
      while (true)
        com.baidu.android.pushservice.h.a.a("ServiceUtils", localException);
    }
  }

  public static void d(Context paramContext)
  {
    Object localObject = m.u(paramContext);
    String str1 = m.n(paramContext, (String)localObject);
    if ((TextUtils.isEmpty((CharSequence)localObject)) || (!((String)localObject).equals(str1)))
    {
      b.a("ServiceUtils", "curPkg in checkAndStartPushService: " + (String)localObject, paramContext.getApplicationContext());
      a(paramContext, (String)localObject);
    }
    try
    {
      localObject = ((ActivityManager)paramContext.getSystemService("activity")).getRunningServices(1000);
      if ((!TextUtils.isEmpty(str1)) && (localObject != null) && (!((List)localObject).isEmpty()))
      {
        localObject = ((List)localObject).iterator();
        do
        {
          ActivityManager.RunningServiceInfo localRunningServiceInfo;
          String str2;
          do
          {
            if (!((Iterator)localObject).hasNext())
              break;
            localRunningServiceInfo = (ActivityManager.RunningServiceInfo)((Iterator)localObject).next();
            str2 = localRunningServiceInfo.service.getPackageName();
          }
          while (!localRunningServiceInfo.service.getClassName().equals("com.baidu.android.pushservice.PushService"));
          bool = str1.equals(str2);
        }
        while (!bool);
      }
      for (bool = true; ; bool = false)
      {
        b.a("ServiceUtils", "checkAndStartPushService, running is " + bool, paramContext.getApplicationContext());
        if (!bool)
          a(paramContext, new Intent());
        return;
      }
    }
    catch (Exception localException)
    {
      while (true)
      {
        b.b("ServiceUtils", localException.getMessage(), paramContext);
        boolean bool = false;
      }
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.baidu.android.pushservice.util.l
 * JD-Core Version:    0.6.2
 */