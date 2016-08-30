package com.baidu.android.pushservice.a.b;

import android.app.Notification;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.util.Log;
import android.widget.RemoteViews;
import java.text.SimpleDateFormat;
import java.util.Date;

public class a extends f
{
  private final RemoteViews d;

  a(RemoteViews paramRemoteViews1, RemoteViews paramRemoteViews2, Context paramContext)
  {
    super(paramRemoteViews1, paramContext);
    this.d = paramRemoteViews2;
    this.a.bigContentView = paramRemoteViews2;
  }

  public void a(int paramInt)
  {
    super.a(paramInt);
    this.d.setTextColor(e.a(this.c, "notification_content"), paramInt);
  }

  public void a(long paramLong)
  {
    super.a(paramLong);
    this.d.setTextViewText(e.a(this.c, "notification_when"), new SimpleDateFormat("HH:mm").format(new Date(paramLong)));
  }

  public void a(Intent paramIntent)
  {
    int i = 0;
    try
    {
      int j = Long.valueOf(System.currentTimeMillis()).intValue();
      i = j;
      String str = paramIntent.getStringExtra("action_type");
      localPendingIntent = PendingIntent.getService(this.c, i, paramIntent, 134217728);
      if (str.equals("01"))
      {
        super.a(paramIntent);
        this.a.bigContentView.setOnClickPendingIntent(e.a(this.c, "content_head_bar"), localPendingIntent);
        return;
      }
    }
    catch (Exception localException)
    {
      PendingIntent localPendingIntent;
      do
      {
        while (true)
          Log.e("AdvancedBigStyleNotification", "error : " + localException.getMessage());
        if (localException.equals("02"))
        {
          this.a.bigContentView.setOnClickPendingIntent(e.a(this.c, "notification_big_icon"), localPendingIntent);
          return;
        }
        if (localException.equals("03"))
        {
          this.a.bigContentView.setOnClickPendingIntent(e.a(this.c, "notification_detail_btn"), localPendingIntent);
          return;
        }
      }
      while (!localException.equals("04"));
      this.a.bigContentView.setOnClickPendingIntent(e.a(this.c, "notification_download_btn"), localPendingIntent);
    }
  }

  public void a(Bitmap paramBitmap)
  {
    if (paramBitmap != null)
    {
      this.d.setImageViewBitmap(e.a(this.c, "notification_big_icon"), paramBitmap);
      return;
    }
    this.d.setImageViewResource(e.a(this.c, "notification_big_icon"), b());
  }

  public void a(String paramString)
  {
    super.a(paramString);
    this.d.setTextViewText(e.a(this.c, "notification_title"), paramString);
  }

  public void b(int paramInt)
  {
    super.b(paramInt);
    this.d.setTextColor(e.a(this.c, "notification_title"), paramInt);
  }

  public void b(Bitmap paramBitmap)
  {
    super.b(paramBitmap);
    if (paramBitmap != null)
    {
      this.d.setImageViewBitmap(e.a(this.c, "notification_icon"), paramBitmap);
      return;
    }
    this.d.setImageViewResource(e.a(this.c, "notification_icon"), b());
  }

  public void b(String paramString)
  {
    super.b(paramString);
    this.d.setTextViewText(e.a(this.c, "notification_content"), paramString);
  }

  public void c(int paramInt)
  {
    super.c(paramInt);
    this.d.setInt(e.a(this.c, "notification_background"), "setBackgroundColor", paramInt);
  }

  public void c(Bitmap paramBitmap)
  {
    super.c(paramBitmap);
    if (paramBitmap != null)
    {
      this.d.setImageViewBitmap(e.a(this.c, "notification_img"), paramBitmap);
      return;
    }
    this.d.setViewVisibility(e.a(this.c, "notification_img"), 4);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.baidu.android.pushservice.a.b.a
 * JD-Core Version:    0.6.2
 */