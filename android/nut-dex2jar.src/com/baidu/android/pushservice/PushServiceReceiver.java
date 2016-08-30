package com.baidu.android.pushservice;

import android.annotation.SuppressLint;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import android.os.Build.VERSION;
import android.os.Environment;
import android.text.TextUtils;
import android.widget.Toast;
import com.baidu.android.pushservice.h.b;
import com.baidu.android.pushservice.message.PublicMsg;
import com.baidu.android.pushservice.richmedia.MediaViewActivity;
import com.baidu.android.pushservice.richmedia.c.a;
import com.baidu.android.pushservice.richmedia.d;
import com.baidu.android.pushservice.util.m;
import java.io.File;
import java.lang.reflect.Method;
import java.util.List;
import java.util.concurrent.locks.ReentrantLock;

@SuppressLint({"NewApi"})
public class PushServiceReceiver extends BroadcastReceiver
{
  private final ReentrantLock a = new ReentrantLock();

  private Intent a(Context paramContext, Intent paramIntent, String paramString)
  {
    if (a.a() < 32)
      return paramIntent;
    paramIntent.setFlags(32);
    paramIntent.setAction(paramString);
    paramIntent.setClassName(paramContext.getPackageName(), "com.baidu.android.pushservice.CommandService");
    paramIntent.putExtra("command_type", "reflect_receiver");
    return paramIntent;
  }

  private static void a(Context paramContext)
  {
    new Thread(new PushServiceReceiver.3(paramContext)).start();
  }

  public static void a(Context paramContext, PublicMsg paramPublicMsg)
  {
    if (!Environment.getExternalStorageState().equals("mounted"))
    {
      paramContext = Toast.makeText(paramContext, "请插入SD卡", 1);
      paramContext.setGravity(17, 0, 0);
      paramContext.show();
    }
    do
    {
      do
        return;
      while ((paramPublicMsg == null) || (paramPublicMsg.mUrl == null));
      localObject1 = Uri.parse(paramPublicMsg.mUrl);
      localObject2 = ((Uri)localObject1).getPath();
    }
    while (TextUtils.isEmpty(((Uri)localObject1).getPath()));
    Object localObject2 = new File(Environment.getExternalStorageDirectory().getAbsolutePath() + "/baidu/pushservice/files/" + ((Uri)localObject1).getAuthority() + "/" + ((String)localObject2).substring(0, ((String)localObject2).lastIndexOf('/')));
    com.baidu.android.pushservice.h.a.c("PushServiceReceiver", "<<< download url " + ((Uri)localObject1).toString());
    Object localObject1 = d.a(c.a.a, ((Uri)localObject1).toString());
    ((com.baidu.android.pushservice.richmedia.c)localObject1).a = paramPublicMsg.mPkgName;
    ((com.baidu.android.pushservice.richmedia.c)localObject1).b = ((File)localObject2).getAbsolutePath();
    ((com.baidu.android.pushservice.richmedia.c)localObject1).c = paramPublicMsg.mTitle;
    ((com.baidu.android.pushservice.richmedia.c)localObject1).d = paramPublicMsg.mDescription;
    new com.baidu.android.pushservice.richmedia.a(paramContext, new PushServiceReceiver.a(paramContext, paramPublicMsg), (com.baidu.android.pushservice.richmedia.c)localObject1).start();
  }

  private static void a(Context paramContext, String paramString, PublicMsg paramPublicMsg)
  {
    Intent localIntent = new Intent();
    localIntent.setPackage(paramString);
    localIntent.putExtra("method", "com.baidu.android.pushservice.action.notification.ARRIVED");
    localIntent.putExtra("notification_title", paramPublicMsg.mTitle);
    localIntent.putExtra("notification_content", paramPublicMsg.mCustomContent);
    localIntent.putExtra("extra_extra_custom_content", paramPublicMsg.mDescription);
    m.a(paramContext, localIntent, "com.baidu.android.pushservice.action.RECEIVE", paramPublicMsg.mPkgName);
  }

  private static void b(Context paramContext, String paramString1, String paramString2, PublicMsg paramPublicMsg, String paramString3)
  {
    NotificationManager localNotificationManager = (NotificationManager)paramContext.getSystemService("notification");
    Object localObject = new Intent("com.baidu.android.pushservice.action.media.CLICK");
    ((Intent)localObject).setClassName(paramString1, paramString2);
    ((Intent)localObject).setData(Uri.parse("content://" + paramPublicMsg.mMsgId));
    ((Intent)localObject).putExtra("public_msg", paramPublicMsg);
    ((Intent)localObject).putExtra("app_id", paramString3);
    localObject = PendingIntent.getService(paramContext, 0, (Intent)localObject, 0);
    com.baidu.android.pushservice.h.a.c("PushServiceReceiver", "Set click broadcast, pkgname: " + paramPublicMsg.mPkgName + " action: com.baidu.android.pushservice.action.media.CLICK");
    Intent localIntent = new Intent();
    localIntent.setClassName(paramString1, paramString2);
    localIntent.setAction("com.baidu.android.pushservice.action.media.DELETE");
    localIntent.setData(Uri.parse("content://" + paramPublicMsg.mMsgId));
    localIntent.putExtra("public_msg", paramPublicMsg);
    localIntent.putExtra("app_id", paramString3);
    paramString1 = PendingIntent.getService(paramContext, 0, localIntent, 0);
    boolean bool = m.o(paramContext, paramPublicMsg.mPkgName);
    paramContext = e.a(paramContext, 8888, paramPublicMsg.mTitle, "富媒体消息：点击后下载与查看", bool);
    paramContext.contentIntent = ((PendingIntent)localObject);
    paramContext.deleteIntent = paramString1;
    localNotificationManager.notify(paramPublicMsg.mMsgId, 0, paramContext);
  }

  private void b(Context paramContext, String paramString1, String paramString2, PublicMsg paramPublicMsg, String paramString3, String paramString4)
  {
    paramString1 = paramContext.getApplicationContext();
    if (paramString1 == null)
      com.baidu.android.pushservice.h.a.e("PushServiceReceiver", "showAdvertiseNotifiation pkgName is invalid");
    do
    {
      return;
      paramString2 = a(paramString1, new Intent(), "com.baidu.android.pushservice.action.adnotification.ADDELETE");
      paramString2.putExtra("app_id", paramString4);
      paramString2.putExtra("msg_id", paramString3);
      paramString2.putExtra("ad_msg", paramPublicMsg);
      paramString2.putExtra("action_type", "05");
      paramString2.putExtra("click_url", paramPublicMsg.mUrl);
      paramString2.putExtra("advertise_Style", String.valueOf(paramPublicMsg.mAdvertiseStyle));
      int i = 0;
      try
      {
        int j = Long.valueOf(System.currentTimeMillis()).intValue();
        i = j;
        paramString2 = PendingIntent.getService(paramContext, i, paramString2, 134217728);
        if ((paramPublicMsg.mAdvertiseStyle == 1) || (paramPublicMsg.mAdvertiseStyle == 2) || (paramPublicMsg.mAdvertiseStyle == 3))
        {
          Intent localIntent1 = a(paramString1, new Intent(), "com.baidu.android.pushservice.action.adnotification.ADCLICK");
          localIntent1.putExtra("app_id", paramString4);
          localIntent1.putExtra("msg_id", paramString3);
          localIntent1.putExtra("ad_msg", paramPublicMsg);
          localIntent1.putExtra("action_type", "01");
          localIntent1.putExtra("click_url", paramPublicMsg.mAdvertiseClickUrl);
          localIntent1.putExtra("advertise_Style", String.valueOf(paramPublicMsg.mAdvertiseStyle));
          com.baidu.android.pushservice.a.b.c.a(paramPublicMsg.mAdvertiseStyle, paramString1, paramPublicMsg.mDescription, paramPublicMsg.mTitle, paramPublicMsg.mAdvertiseLargeIconUrl, paramPublicMsg.mAdvertiseSmallIconUrl, paramString2, localIntent1);
          com.baidu.android.pushservice.h.a.c("PushServiceReceiver", "show normal advertise  notification, msgid = " + paramString3 + "  appid = " + paramString4 + "  Title = " + paramPublicMsg.mTitle + "  Description = " + paramPublicMsg.mDescription + "  largeIconUrl = " + paramPublicMsg.mAdvertiseLargeIconUrl + "  smallIconUrl = " + paramPublicMsg.mAdvertiseSmallIconUrl);
          m.a("pushadvertise:  show normal  advertise notification", paramContext);
          return;
        }
      }
      catch (Exception localException)
      {
        while (true)
          com.baidu.android.pushservice.h.a.e("PushServiceReceiver", "error : " + localException.getMessage());
      }
    }
    while ((paramPublicMsg.mAdvertiseStyle != 4) && (paramPublicMsg.mAdvertiseStyle != 5));
    Intent localIntent2 = a(paramString1, new Intent(), "com.baidu.android.pushservice.action.adnotification.ADCLICK");
    localIntent2.putExtra("app_id", paramString4);
    localIntent2.putExtra("msg_id", paramString3);
    localIntent2.putExtra("ad_msg", paramPublicMsg);
    localIntent2.putExtra("action_type", "01");
    localIntent2.putExtra("click_url", paramPublicMsg.mAdvertiseClickUrl);
    localIntent2.putExtra("advertise_Style", String.valueOf(paramPublicMsg.mAdvertiseStyle));
    Intent localIntent3 = a(paramString1, new Intent(), "com.baidu.android.pushservice.action.adnotification.ADCLICK");
    localIntent3.putExtra("app_id", paramString4);
    localIntent3.putExtra("msg_id", paramString3);
    localIntent3.putExtra("ad_msg", paramPublicMsg);
    localIntent3.putExtra("action_type", "02");
    localIntent3.putExtra("click_url", paramPublicMsg.mAdvertiseBigPictureClickUrl);
    localIntent3.putExtra("advertise_Style", String.valueOf(paramPublicMsg.mAdvertiseStyle));
    Intent localIntent4 = a(paramString1, new Intent(), "com.baidu.android.pushservice.action.adnotification.ADCLICK");
    localIntent4.putExtra("app_id", paramString4);
    localIntent4.putExtra("msg_id", paramString3);
    localIntent4.putExtra("ad_msg", paramPublicMsg);
    localIntent4.putExtra("action_type", "03");
    localIntent4.putExtra("click_url", paramPublicMsg.mAdvertiseDetailClickUrl);
    localIntent4.putExtra("advertise_Style", String.valueOf(paramPublicMsg.mAdvertiseStyle));
    Intent localIntent5 = a(paramString1, new Intent(), "com.baidu.android.pushservice.action.adnotification.ADCLICK");
    localIntent5.putExtra("app_id", paramString4);
    localIntent5.putExtra("msg_id", paramString3);
    localIntent5.putExtra("ad_msg", paramPublicMsg);
    localIntent5.putExtra("action_type", "04");
    localIntent5.putExtra("click_url", paramPublicMsg.mAdvertiseDownloadClickUrl);
    localIntent5.putExtra("advertise_Style", String.valueOf(paramPublicMsg.mAdvertiseStyle));
    if (paramPublicMsg.mAdvertiseStyle == 4)
      com.baidu.android.pushservice.a.b.c.a(4, paramString1, paramPublicMsg.mDescription, paramPublicMsg.mTitle, paramPublicMsg.mAdvertiseLargeIconUrl, paramPublicMsg.mAdvertiseSmallIconUrl, paramPublicMsg.mAdvertiseBigPictureUrl, paramString2, new Intent[] { localIntent2, localIntent3 });
    while (true)
    {
      com.baidu.android.pushservice.h.a.c("PushServiceReceiver", "show advanced advertise  notification, msgid = " + paramString3 + "  appid = " + paramString4 + "  Title = " + paramPublicMsg.mTitle + "  Description = " + paramPublicMsg.mDescription + "  largeIconUrl = " + paramPublicMsg.mAdvertiseLargeIconUrl + "  smallIconUrl = " + paramPublicMsg.mAdvertiseSmallIconUrl + " bigPictureUrl = " + paramPublicMsg.mAdvertiseBigPictureUrl);
      m.a("pushadvertise:  show big picture  advertise notification", paramContext);
      return;
      if (paramPublicMsg.mAdvertiseStyle == 5)
        com.baidu.android.pushservice.a.b.c.a(5, paramString1, paramPublicMsg.mDescription, paramPublicMsg.mTitle, paramPublicMsg.mAdvertiseLargeIconUrl, paramPublicMsg.mAdvertiseSmallIconUrl, paramPublicMsg.mAdvertiseBigPictureUrl, paramString2, new Intent[] { localIntent2, localIntent4, localIntent5, localIntent3 });
    }
  }

  private static void c(Context paramContext, String paramString1, String paramString2, PublicMsg paramPublicMsg, String paramString3, String paramString4)
  {
    NotificationManager localNotificationManager = (NotificationManager)paramContext.getSystemService("notification");
    Object localObject = new Intent();
    ((Intent)localObject).setClassName(paramString1, paramString2);
    ((Intent)localObject).setAction("com.baidu.android.pushservice.action.privatenotification.CLICK");
    ((Intent)localObject).setData(Uri.parse("content://" + paramString3));
    ((Intent)localObject).putExtra("public_msg", paramPublicMsg);
    ((Intent)localObject).putExtra("app_id", paramString4);
    ((Intent)localObject).putExtra("msg_id", paramString3);
    localObject = PendingIntent.getService(paramContext, 0, (Intent)localObject, 0);
    Intent localIntent = new Intent();
    localIntent.setClassName(paramString1, paramString2);
    localIntent.setAction("com.baidu.android.pushservice.action.privatenotification.DELETE");
    localIntent.setData(Uri.parse("content://" + paramString3));
    localIntent.putExtra("public_msg", paramPublicMsg);
    localIntent.putExtra("app_id", paramString4);
    localIntent.putExtra("msg_id", paramString3);
    paramString4 = PendingIntent.getService(paramContext, 0, localIntent, 0);
    boolean bool = m.o(paramContext, paramPublicMsg.mPkgName);
    if (paramPublicMsg.mNotificationBuilder == 0);
    for (paramString2 = e.a(paramContext, paramPublicMsg.mNotificationBuilder, paramPublicMsg.mNotificationBasicStyle, paramPublicMsg.mTitle, paramPublicMsg.mDescription, bool); ; paramString2 = e.a(paramContext, paramPublicMsg.mNotificationBuilder, paramPublicMsg.mTitle, paramPublicMsg.mDescription, bool))
    {
      paramString2.contentIntent = ((PendingIntent)localObject);
      paramString2.deleteIntent = paramString4;
      localNotificationManager.notify(paramString3, 0, paramString2);
      a(paramContext, paramString1, paramPublicMsg);
      return;
    }
  }

  public void onReceive(Context paramContext, Intent paramIntent)
  {
    boolean bool2 = true;
    Object localObject1 = paramIntent.getAction();
    if (("android.intent.action.BOOT_COMPLETED".equals(localObject1)) || ("android.net.conn.CONNECTIVITY_CHANGE".equals(localObject1)) || ("android.intent.action.USER_PRESENT".equals(localObject1)) || ("android.intent.action.MEDIA_CHECKING".equals(localObject1)) || ("android.intent.action.ACTION_POWER_CONNECTED".equals(localObject1)) || ("android.intent.action.ACTION_POWER_DISCONNECTED".equals(localObject1)) || ("android.bluetooth.adapter.action.STATE_CHANGED".equals(localObject1)))
    {
      com.baidu.android.pushservice.h.a.b("PushServiceReceiver", "start PushSerevice for by " + (String)localObject1);
      a(paramContext);
    }
    label321: String str1;
    label673: 
    do
    {
      do
        while (true)
        {
          return;
          Object localObject2;
          if ("com.baidu.android.pushservice.action.notification.SHOW".equals(localObject1))
          {
            String str2 = paramIntent.getStringExtra("pushService_package_name");
            String str3 = paramIntent.getStringExtra("service_name");
            String str4 = paramIntent.getStringExtra("notify_type");
            String str5 = paramIntent.getStringExtra("app_id");
            localObject2 = paramIntent.getByteArrayExtra("baidu_message_body");
            localObject1 = paramIntent.getByteArrayExtra("baidu_message_secur_info");
            int i = paramIntent.getIntExtra("baidu_message_type", -1);
            paramIntent = paramIntent.getStringExtra("message_id");
            if ((TextUtils.isEmpty(str2)) || (TextUtils.isEmpty(str3)) || (localObject2 == null) || (localObject1 == null) || (i == -1))
            {
              paramContext = new StringBuilder("Extra not valid, servicePkgName=").append(str2).append(" serviceName=").append(str3).append(" pMsg==null?  msgBody==null? ");
              if (localObject2 == null)
              {
                bool1 = true;
                paramContext = paramContext.append(bool1).append(" checkInfo==null? ");
                if (localObject1 != null)
                  break label321;
              }
              for (boolean bool1 = bool2; ; bool1 = false)
              {
                com.baidu.android.pushservice.h.a.c("PushServiceReceiver", bool1 + " msgType=" + i);
                return;
                bool1 = false;
                break;
              }
            }
            if (m.q(paramContext, paramIntent))
            {
              com.baidu.android.pushservice.h.a.e("PushServiceReceiver", " receive message duplicated !");
              return;
            }
            new PushServiceReceiver.1(this, paramContext, str5, paramIntent, (byte[])localObject1, (byte[])localObject2, str4, str2, str3).start();
            return;
          }
          if ("com.baidu.android.pushservice.action.media.CLICK".equals(localObject1))
          {
            b.a("PushServiceReceiver", "Rich media notification clicked", paramContext.getApplicationContext());
            localObject1 = null;
            try
            {
              if (paramIntent.hasExtra("public_msg"))
                localObject1 = (PublicMsg)paramIntent.getParcelableExtra("public_msg");
              a(paramContext, (PublicMsg)localObject1);
              return;
            }
            catch (ClassCastException paramContext)
            {
              com.baidu.android.pushservice.h.a.d("PushServiceReceiver", "Rich media notification clicked, parse pMsg exception");
              return;
            }
          }
          if ("com.baidu.android.pushservice.action.advertise.notification.SHOW".equals(localObject1))
          {
            new Thread(new PushServiceReceiver.2(this, paramContext, paramIntent)).start();
            return;
          }
          if ("com.baidu.android.pushservice.action.adnotification.ADCLICK".equals(localObject1))
          {
            b.a("PushServiceReceiver", "Handle ADNotification Click Action", paramContext.getApplicationContext());
            localObject1 = paramIntent.getStringExtra("click_url");
            com.baidu.android.pushservice.h.a.c("PushServiceReceiver", "click_url = " + (String)localObject1);
            if (!com.baidu.android.pushservice.util.a.c((String)localObject1))
              continue;
            if ((!TextUtils.isEmpty((CharSequence)localObject1)) && (!TextUtils.isEmpty(((String)localObject1).trim())))
            {
              localObject1 = Uri.parse(((String)localObject1).trim());
              if (com.baidu.android.pushservice.a.a.e.a((Uri)localObject1))
                m.a("pushadvertise:  open click url", paramContext);
            }
            try
            {
              if (Build.VERSION.SDK_INT > 17)
              {
                localObject1 = new Intent("android.intent.action.VIEW", (Uri)localObject1);
                localObject2 = paramContext.getPackageManager().queryIntentActivities((Intent)localObject1, 32);
                if (((List)localObject2).size() > 0)
                {
                  ((Intent)localObject1).setClassName(((ResolveInfo)((List)localObject2).get(0)).activityInfo.packageName, ((ResolveInfo)((List)localObject2).get(0)).activityInfo.name);
                  ((Intent)localObject1).addFlags(268435456);
                  paramContext.startActivity((Intent)localObject1);
                }
              }
            }
            catch (Exception localException1)
            {
              try
              {
                localObject2 = paramContext.getSystemService("statusbar");
                if (Build.VERSION.SDK_INT <= 16);
                Method localMethod;
                for (localObject1 = localObject2.getClass().getMethod("collapse", new Class[0]); ; localMethod = localObject2.getClass().getMethod("collapsePanels", new Class[0]))
                {
                  ((Method)localObject1).invoke(localObject2, new Object[0]);
                  ((NotificationManager)paramContext.getApplicationContext().getSystemService("notification")).cancel(paramIntent.getStringExtra("msg_id"), 0);
                  m.a("pushadvertise:  cancel advertise notification", paramContext);
                  localObject1 = m.v(paramContext);
                  if ((TextUtils.isEmpty((CharSequence)localObject1)) || (m.k(paramContext, (String)localObject1) < 36))
                    break;
                  paramIntent.setClassName((String)localObject1, "com.baidu.android.pushservice.PushService");
                  com.baidu.android.pushservice.h.a.c("PushServiceReceiver", "CLICK  " + paramIntent.toURI());
                  paramContext.startService(paramIntent);
                  return;
                  paramIntent.setAction("com.baidu.android.pushservice.action.adnotification.ADCLICKFAILED");
                  b.b("PushServiceReceiver", "There is no borwer on this phone!", paramContext);
                  break label673;
                  localException1 = localException1;
                  b.b("PushServiceReceiver", "error = " + localException1.getMessage(), paramContext);
                  break label673;
                  localObject2 = new Intent(paramContext, MediaViewActivity.class);
                  ((Intent)localObject2).addFlags(268435456);
                  ((Intent)localObject2).setData(localException1);
                  paramContext.startActivity((Intent)localObject2);
                  break label673;
                }
              }
              catch (Exception localException2)
              {
                while (true)
                  com.baidu.android.pushservice.h.a.e("PushServiceReceiver", "error : " + localException2.getMessage());
              }
            }
          }
        }
      while (!"com.baidu.android.pushservice.action.adnotification.ADDELETE".equals(localException2));
      str1 = m.v(paramContext);
    }
    while ((TextUtils.isEmpty(str1)) || (m.k(paramContext, str1) < 36));
    paramIntent.setClassName(str1, "com.baidu.android.pushservice.PushService");
    com.baidu.android.pushservice.h.a.c("PushServiceReceiver", "DELETE  " + paramIntent.toURI());
    paramContext.startService(paramIntent);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.baidu.android.pushservice.PushServiceReceiver
 * JD-Core Version:    0.6.2
 */