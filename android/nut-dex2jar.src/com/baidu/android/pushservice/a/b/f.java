package com.baidu.android.pushservice.a.b;

import android.app.Notification;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.graphics.Bitmap;
import android.util.Log;
import android.widget.RemoteViews;
import java.text.SimpleDateFormat;
import java.util.Date;

public class f
  implements d
{
  private static String d = "NormalNotification";
  protected Notification a = new Notification();
  protected RemoteViews b;
  protected Context c;

  f(RemoteViews paramRemoteViews, Context paramContext)
  {
    this.b = paramRemoteViews;
    this.c = paramContext;
    this.a.icon = b();
    this.a.when = System.currentTimeMillis();
    this.a.contentView = this.b;
  }

  public Notification a()
  {
    return this.a;
  }

  public void a(int paramInt)
  {
    this.b.setTextColor(e.a(this.c, "notification_content"), paramInt);
  }

  public void a(long paramLong)
  {
    this.b.setTextViewText(e.a(this.c, "notification_when"), new SimpleDateFormat("HH:mm").format(new Date(paramLong)));
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
        paramIntent = PendingIntent.getService(this.c, i, paramIntent, 134217728);
        this.a.contentView.setOnClickPendingIntent(e.a(this.c, "content_head_bar"), paramIntent);
      }
      return;
    }
    catch (Exception localException)
    {
      while (true)
        Log.e(d, "error : " + localException.getMessage());
    }
  }

  public void a(String paramString)
  {
    this.b.setTextViewText(e.a(this.c, "notification_title"), paramString);
  }

  int b()
  {
    return this.c.getApplicationInfo().icon;
  }

  public void b(int paramInt)
  {
    this.b.setTextColor(e.a(this.c, "notification_title"), paramInt);
  }

  public void b(Bitmap paramBitmap)
  {
    if (paramBitmap != null)
    {
      this.b.setImageViewBitmap(e.a(this.c, "notification_icon"), paramBitmap);
      return;
    }
    this.b.setImageViewResource(e.a(this.c, "notification_icon"), b());
  }

  public void b(String paramString)
  {
    this.b.setTextViewText(e.a(this.c, "notification_content"), paramString);
  }

  public void c(int paramInt)
  {
    this.b.setInt(e.a(this.c, "notification_background"), "setBackgroundColor", paramInt);
  }

  public void c(Bitmap paramBitmap)
  {
    if (paramBitmap != null)
    {
      this.b.setImageViewBitmap(e.a(this.c, "notification_img"), paramBitmap);
      return;
    }
    this.b.setViewVisibility(e.a(this.c, "notification_img"), 4);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.baidu.android.pushservice.a.b.f
 * JD-Core Version:    0.6.2
 */