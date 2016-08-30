package com.baidu.android.pushservice.a.b;

import android.app.Notification;
import android.app.Notification.Builder;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.graphics.Bitmap;
import android.os.Build.VERSION;
import android.util.Log;

public class g
  implements d
{
  private final Notification a;
  private final Context b;

  public g(Context paramContext, String paramString1, String paramString2)
  {
    this.b = paramContext;
    if (Build.VERSION.SDK_INT >= 16)
    {
      this.a = new Notification.Builder(paramContext).setContentTitle(paramString1).setContentText(paramString2).setSmallIcon(paramContext.getApplicationInfo().icon).setWhen(System.currentTimeMillis()).build();
      return;
    }
    this.a = new Notification(this.b.getApplicationInfo().icon, "", System.currentTimeMillis());
    this.a.setLatestEventInfo(paramContext, paramString1, paramString2, PendingIntent.getBroadcast(this.b, 0, new Intent(), 0));
  }

  public Notification a()
  {
    return this.a;
  }

  public void a(int paramInt)
  {
  }

  public void a(long paramLong)
  {
    this.a.when = System.currentTimeMillis();
  }

  public void a(PendingIntent paramPendingIntent)
  {
    this.a.deleteIntent = paramPendingIntent;
  }

  public void a(Intent paramIntent)
  {
    int i = 0;
    try
    {
      int j = Long.valueOf(System.currentTimeMillis()).intValue();
      i = j;
      if (paramIntent.getStringExtra("action_type").equals("01"))
      {
        paramIntent = PendingIntent.getBroadcast(this.b, i, paramIntent, 134217728);
        this.a.contentIntent = paramIntent;
      }
      return;
    }
    catch (Exception localException)
    {
      while (true)
        Log.e("SystemNotification", "error : " + localException.getMessage());
    }
  }

  public void a(String paramString)
  {
  }

  public void b(int paramInt)
  {
  }

  public void b(Bitmap paramBitmap)
  {
  }

  public void b(String paramString)
  {
  }

  public void c(int paramInt)
  {
  }

  public void c(Bitmap paramBitmap)
  {
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.baidu.android.pushservice.a.b.g
 * JD-Core Version:    0.6.2
 */