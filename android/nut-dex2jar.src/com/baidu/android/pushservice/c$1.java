package com.baidu.android.pushservice;

import android.app.Notification;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.text.TextUtils;
import com.baidu.android.pushservice.h.a;
import com.baidu.android.pushservice.message.PublicMsg;
import com.baidu.android.pushservice.util.m;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.HashMap;

class c$1
  implements Runnable
{
  c$1(c paramc, PublicMsg paramPublicMsg, File paramFile, Context paramContext, PendingIntent paramPendingIntent1, PendingIntent paramPendingIntent2, boolean paramBoolean)
  {
  }

  public void run()
  {
    Notification localNotification;
    label250: Object localObject4;
    while (true)
    {
      try
      {
        Object localObject1 = m.b();
        if (localObject1 != null)
        {
          c.a(this.g, (HashMap)localObject1);
          if (c.a(this.g).containsKey(this.a.mAppId))
          {
            c.a(this.g).put(this.a.mAppId, Integer.valueOf(((Integer)c.a(this.g).get(this.a.mAppId)).intValue() + 1));
            m.a(c.a(this.g));
            localNotification = null;
            if (this.b == null)
              break label250;
            localObject1 = BitmapFactory.decodeStream(new FileInputStream(this.b));
            if (localObject1 == null)
              return;
            localNotification = c.a(this.g, this.c, this.g.f, this.g.g, (Bitmap)localObject1);
            if (localNotification != null)
              break;
            c.a(this.g, (Bitmap)localObject1, this.a.mAppId + ".bdi");
          }
        }
        else
        {
          c.a(this.g).clear();
          continue;
        }
      }
      catch (IOException localIOException1)
      {
        a.e("LappPushNotificationBuilder", "error " + localIOException1.getMessage());
        return;
      }
      c.a(this.g).put(this.a.mAppId, Integer.valueOf(1));
      continue;
      boolean bool = TextUtils.isEmpty(c.b(this.g));
      Object localObject2 = localNotification;
      if (!bool)
        try
        {
          localObject2 = BitmapFactory.decodeStream(new URL(c.b(this.g)).openStream());
        }
        catch (MalformedURLException localMalformedURLException)
        {
          a.e("LappPushNotificationBuilder", "error " + localMalformedURLException.getMessage());
          Object localObject3 = localNotification;
        }
        catch (IOException localIOException2)
        {
          a.e("LappPushNotificationBuilder", "error " + localIOException2.getMessage());
          localObject4 = localNotification;
        }
    }
    if (this.g.b != 0)
      localNotification.flags = this.g.b;
    NotificationManager localNotificationManager;
    if (this.g.h)
    {
      localNotification.defaults = 0;
      localNotification.contentIntent = this.d;
      localNotification.deleteIntent = this.e;
      localNotificationManager = (NotificationManager)this.c.getSystemService("notification");
      if (!this.f)
        break label552;
      localNotificationManager.notify(this.a.mAppId, m.c(this.a.mAppId), localNotification);
    }
    while (true)
    {
      c.a(this.g, localObject4, this.a.mAppId + ".bdi");
      return;
      localNotification.defaults = -1;
      if (this.g.c != 0)
        localNotification.defaults = this.g.c;
      if (this.g.d != null)
        localNotification.sound = this.g.d;
      if (this.g.e == null)
        break;
      localNotification.vibrate = this.g.e;
      break;
      label552: localNotificationManager.notify(this.a.mMsgId, m.c(this.a.mMsgId), localNotification);
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.baidu.android.pushservice.c.1
 * JD-Core Version:    0.6.2
 */