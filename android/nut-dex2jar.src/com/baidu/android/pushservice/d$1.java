package com.baidu.android.pushservice;

import android.app.Notification;
import android.app.Notification.Builder;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.graphics.drawable.Drawable;
import android.util.Log;
import java.io.IOException;
import java.net.MalformedURLException;
import java.net.URL;

class d$1
  implements Runnable
{
  d$1(d paramd, Context paramContext, PendingIntent paramPendingIntent, String paramString)
  {
  }

  public void run()
  {
    try
    {
      Object localObject = Drawable.createFromStream(new URL(d.a(this.d)).openStream(), null);
      localObject = new Notification.Builder(this.a).setContentTitle(this.d.f).setContentText(this.d.g).setSmallIcon(this.d.a).setLargeIcon(d.a(this.d, (Drawable)localObject, this.a)).getNotification();
      if (this.d.b != 0)
        ((Notification)localObject).flags = this.d.b;
      if (this.d.h)
      {
        ((Notification)localObject).defaults = 0;
        ((Notification)localObject).contentIntent = this.b;
        ((NotificationManager)this.a.getSystemService("notification")).notify(this.c, 0, (Notification)localObject);
        return;
      }
    }
    catch (MalformedURLException localMalformedURLException)
    {
      while (true)
      {
        Log.e("NewPushNotificationBuilder", "error " + localMalformedURLException.getMessage());
        return;
        localMalformedURLException.defaults = -1;
        if (this.d.c != 0)
          localMalformedURLException.defaults = this.d.c;
        if (this.d.d != null)
          localMalformedURLException.sound = this.d.d;
        if (this.d.e != null)
          localMalformedURLException.vibrate = this.d.e;
      }
    }
    catch (IOException localIOException)
    {
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.baidu.android.pushservice.d.1
 * JD-Core Version:    0.6.2
 */