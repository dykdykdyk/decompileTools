package com.baidu.android.pushservice.a.b;

import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Build;
import android.os.Build.VERSION;
import android.text.TextUtils;
import android.widget.RemoteViews;
import com.baidu.android.pushservice.util.m;

public class c
{
  public static void a(int paramInt, Context paramContext, String paramString1, String paramString2, String paramString3, String paramString4, PendingIntent paramPendingIntent, Intent paramIntent)
  {
    String str;
    if (!TextUtils.isEmpty(paramString2))
    {
      str = paramString2.trim();
      if (!TextUtils.isEmpty(str));
    }
    else
    {
      com.baidu.android.pushservice.h.b.b("AdvertiseNotificationManager", "showNotification the contentTitle is invalid, the notification will not pop Up", paramContext.getApplicationContext());
      m.a(paramContext, paramIntent, "10");
      com.baidu.android.pushservice.util.a.a(paramContext, paramIntent.getStringExtra("click_url"), "10");
      return;
    }
    paramString2 = str;
    if (str.length() > 32)
      paramString2 = str.substring(0, 31);
    if (!TextUtils.isEmpty(paramString1))
    {
      str = paramString1.trim();
      if (!TextUtils.isEmpty(str));
    }
    else
    {
      paramString1 = " ";
      if (a(paramString3))
        break label172;
      paramString3 = "null";
    }
    label172: 
    while (true)
    {
      if (!a(paramString4))
        paramString4 = "null";
      while (true)
      {
        a(c.a.a(paramInt), paramContext, paramString1, paramString2, paramString3, paramString4, paramPendingIntent, paramIntent);
        return;
        paramString1 = str;
        if (str.length() <= 64)
          break;
        paramString1 = str.substring(0, 63);
        break;
      }
    }
  }

  public static void a(int paramInt, Context paramContext, String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, PendingIntent paramPendingIntent, Intent[] paramArrayOfIntent)
  {
    String str;
    if (!TextUtils.isEmpty(paramString2))
    {
      str = paramString2.trim();
      if (!TextUtils.isEmpty(str));
    }
    else
    {
      com.baidu.android.pushservice.h.b.b("AdvertiseNotificationManager", "showNotification the contentTitle is invalid, the notification will not pop Up", paramContext.getApplicationContext());
      m.a(paramContext, paramArrayOfIntent[0], "10");
      com.baidu.android.pushservice.util.a.a(paramContext, paramArrayOfIntent[0].getStringExtra("click_url"), "10");
      return;
    }
    paramString2 = str;
    if (str.length() > 32)
      paramString2 = str.substring(0, 31);
    if (!TextUtils.isEmpty(paramString1))
    {
      str = paramString1.trim();
      if (!TextUtils.isEmpty(str));
    }
    else
    {
      paramString1 = " ";
    }
    while (!a(paramString5))
    {
      a(1, paramContext, paramString1, paramString2, paramString3, paramString4, paramPendingIntent, paramArrayOfIntent[0]);
      return;
      paramString1 = str;
      if (str.length() > 64)
        paramString1 = str.substring(0, 63);
    }
    if (!a(paramString3))
      paramString3 = "null";
    while (true)
    {
      if (!a(paramString4))
        paramString4 = "null";
      while (true)
      {
        a(c.a.a(paramInt), paramContext, paramString1, paramString2, paramString3, paramString4, paramString5, paramPendingIntent, paramArrayOfIntent);
        return;
      }
    }
  }

  private static void a(c.a parama, Context paramContext, String paramString1, String paramString2, String paramString3, String paramString4, PendingIntent paramPendingIntent, Intent paramIntent)
  {
    parama = b(parama, paramContext, paramString2, paramString1);
    paramString1 = paramIntent.getStringExtra("msg_id");
    parama.a(paramIntent);
    parama.a(paramPendingIntent);
    com.baidu.android.pushservice.a.a.d.a().a(paramContext, new c.2(paramContext, parama, paramString1, paramIntent), new Uri[] { Uri.parse(paramString3), Uri.parse(paramString4) });
  }

  private static void a(c.a parama, Context paramContext, String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, PendingIntent paramPendingIntent, Intent[] paramArrayOfIntent)
  {
    d locald = null;
    if (c.a.d == parama)
      locald = b(c.a.d, paramContext, paramString2, paramString1);
    while (true)
    {
      parama = paramArrayOfIntent[0].getStringExtra("msg_id");
      int j = paramArrayOfIntent.length;
      int i = 0;
      while (i < j)
      {
        locald.a(paramArrayOfIntent[i]);
        i += 1;
      }
      if (c.a.e == parama)
        locald = b(c.a.e, paramContext, paramString2, paramString1);
    }
    locald.a(paramPendingIntent);
    com.baidu.android.pushservice.a.a.d.a().a(paramContext, new c.1(locald, paramContext, paramString2, paramString1, paramArrayOfIntent, parama), new Uri[] { Uri.parse(paramString3), Uri.parse(paramString4), Uri.parse(paramString5) });
  }

  private static void a(d paramd, String paramString1, String paramString2)
  {
    paramd.a(System.currentTimeMillis());
    paramd.a(paramString1);
    paramd.b(paramString2);
  }

  private static boolean a()
  {
    return (Build.MANUFACTURER.contains("HUAWEI")) && (Build.MODEL.contains("PE"));
  }

  private static boolean a(String paramString)
  {
    if ((TextUtils.isEmpty(paramString)) || (TextUtils.isEmpty(paramString.trim())))
      return false;
    return com.baidu.android.pushservice.a.a.e.a(Uri.parse(paramString));
  }

  private static d b(c.a parama, Context paramContext, String paramString1, String paramString2)
  {
    Object localObject1 = null;
    if (b())
      return new g(paramContext, paramString1, paramString2);
    Object localObject2;
    if (parama != c.a.d)
    {
      localObject2 = parama;
      if (parama != c.a.e);
    }
    else
    {
      localObject2 = parama;
      if (c())
        localObject2 = c.a.a;
    }
    int i;
    if (f())
    {
      i = e.b(paramContext, "advertise_normal_layout_xiaomi");
      parama = (c.a)localObject1;
      if (i != 0)
        parama = new RemoteViews(paramContext.getPackageName(), i);
      localObject1 = parama;
      if (parama == null)
        localObject1 = new RemoteViews(paramContext.getPackageName(), e.b(paramContext, "advertise_normal_layout"));
    }
    switch (c.3.a[localObject2.ordinal()])
    {
    default:
      parama = new g(paramContext, paramString1, paramString2);
      i = 0;
    case 1:
    case 2:
    case 3:
    case 4:
      while (true)
      {
        if (i != 0)
          parama = new g(paramContext, paramString1, paramString2);
        a(parama, paramString1, paramString2);
        return parama;
        if (h())
        {
          i = e.b(paramContext, "advertise_normal_layout_xiaomi_1s");
          parama = (c.a)localObject1;
          if (i == 0)
            break;
          parama = new RemoteViews(paramContext.getPackageName(), i);
          break;
        }
        parama = (c.a)localObject1;
        if (!a())
          break;
        i = e.b(paramContext, "advertise_normal_layout_honor");
        parama = (c.a)localObject1;
        if (i == 0)
          break;
        parama = new RemoteViews(paramContext.getPackageName(), i);
        break;
        if (!e.c(paramContext))
        {
          parama = null;
          i = 1;
        }
        else
        {
          parama = new f((RemoteViews)localObject1, paramContext);
          if (d())
          {
            parama.b(-16645630);
            parama.a(-9605779);
            parama.c(-986896);
            i = 0;
          }
          else
          {
            parama.b(-1);
            parama.a(-9934744);
            parama.c(-16777216);
            i = 0;
            continue;
            if (!e.c(paramContext))
            {
              parama = null;
              i = 1;
            }
            else
            {
              parama = new f((RemoteViews)localObject1, paramContext);
              if (d())
              {
                parama.b(-16645630);
                parama.a(-9605779);
                parama.c(-986896);
                i = 0;
              }
              else
              {
                parama.b(-1);
                parama.a(-9605779);
                parama.c(-13948117);
                i = 0;
                continue;
                if (!e.c(paramContext))
                {
                  parama = null;
                  i = 1;
                }
                else
                {
                  parama = new f((RemoteViews)localObject1, paramContext);
                  parama.b(-16645630);
                  parama.a(-9605779);
                  parama.c(-986896);
                  i = 0;
                  continue;
                  if (e.b(paramContext))
                    break label528;
                  parama = null;
                  i = 1;
                }
              }
            }
          }
        }
      }
      label528: if (f())
      {
        i = e.b(paramContext, "advertise_advance_picture_layout_xiaomi");
        if (i == 0)
          break label1021;
        parama = new RemoteViews(paramContext.getPackageName(), i);
      }
      break;
    case 5:
    }
    while (true)
    {
      localObject2 = parama;
      if (parama == null)
        localObject2 = new RemoteViews(paramContext.getPackageName(), e.b(paramContext, "advertise_advance_picture_layout"));
      parama = new b((RemoteViews)localObject1, (RemoteViews)localObject2, paramContext);
      if (d())
      {
        parama.b(-16645630);
        parama.a(-9605779);
        parama.c(-986896);
        i = 0;
        break;
        if (!a())
          break label1021;
        i = e.b(paramContext, "advertise_advance_picture_layout_honor");
        if (i == 0)
          break label1021;
        parama = new RemoteViews(paramContext.getPackageName(), i);
        continue;
      }
      parama.b(-1);
      parama.a(-9934744);
      parama.c(-16777216);
      i = 0;
      break;
      if (!e.a(paramContext))
      {
        parama = null;
        i = 1;
        break;
      }
      if (f())
      {
        i = e.b(paramContext, "advertise_advance_bigstyle_layout_xiaomi");
        if (i == 0)
          break label1016;
        parama = new RemoteViews(paramContext.getPackageName(), i);
      }
      while (true)
      {
        localObject2 = parama;
        if (parama == null)
          localObject2 = new RemoteViews(paramContext.getPackageName(), e.b(paramContext, "advertise_advance_bigstyle_layout"));
        parama = new a((RemoteViews)localObject1, (RemoteViews)localObject2, paramContext);
        if (!d())
        {
          parama.b(-1);
          parama.a(-9934744);
          parama.c(-16777216);
          i = 0;
          break;
          if (h())
          {
            i = e.b(paramContext, "advertise_advance_bigstyle_layout_xiaomi_1s");
            if (i == 0)
              break label1016;
            parama = new RemoteViews(paramContext.getPackageName(), i);
            continue;
          }
          if (d())
          {
            i = e.b(paramContext, "advertise_advance_bigstyle_layout_bbk");
            if (i == 0)
              break label1016;
            parama = new RemoteViews(paramContext.getPackageName(), i);
            continue;
          }
          if (e())
          {
            i = e.b(paramContext, "advertise_advance_bigstyle_layout_9250");
            if (i == 0)
              break label1016;
            parama = new RemoteViews(paramContext.getPackageName(), i);
            continue;
          }
          if (g())
          {
            i = e.b(paramContext, "advertise_advance_bigstyle_layout_2k");
            if (i == 0)
              break label1016;
            parama = new RemoteViews(paramContext.getPackageName(), i);
            continue;
          }
          if (!a())
            break label1016;
          i = e.b(paramContext, "advertise_advance_bigstyle_layout_honor");
          if (i == 0)
            break label1016;
          parama = new RemoteViews(paramContext.getPackageName(), i);
          continue;
        }
        i = 0;
        break;
        label1016: parama = null;
      }
      label1021: parama = null;
    }
  }

  private static boolean b()
  {
    return Build.VERSION.SDK_INT < 15;
  }

  private static boolean c()
  {
    return Build.VERSION.SDK_INT < 16;
  }

  private static boolean d()
  {
    if (TextUtils.isEmpty(Build.MANUFACTURER));
    while ((!Build.MANUFACTURER.toLowerCase().contains("bbk")) && (!Build.MANUFACTURER.toLowerCase().startsWith("vivo")))
      return false;
    return true;
  }

  private static boolean e()
  {
    return (Build.MANUFACTURER.contains("Baidu")) && (Build.MODEL.contains("9250"));
  }

  private static boolean f()
  {
    return (Build.MANUFACTURER.contains("Xiaomi")) && ((Build.MODEL.contains("MI 4")) || (Build.MODEL.contains("MI 3")));
  }

  private static boolean g()
  {
    return (Build.MANUFACTURER.contains("motorola")) && (Build.BRAND.contains("google")) && (Build.MODEL.contains("Nexus 6"));
  }

  private static boolean h()
  {
    return (Build.MANUFACTURER.contains("Xiaomi")) && (Build.MODEL.contains("HM 1S"));
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.baidu.android.pushservice.a.b.c
 * JD-Core Version:    0.6.2
 */