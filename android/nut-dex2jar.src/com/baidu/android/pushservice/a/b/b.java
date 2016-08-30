package com.baidu.android.pushservice.a.b;

import android.app.Notification;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.widget.RemoteViews;
import com.baidu.android.pushservice.h.a;

public class b extends f
{
  private final RemoteViews d;

  b(RemoteViews paramRemoteViews1, RemoteViews paramRemoteViews2, Context paramContext)
  {
    super(paramRemoteViews1, paramContext);
    this.d = paramRemoteViews2;
    this.a.bigContentView = paramRemoteViews2;
  }

  public void a(Intent paramIntent)
  {
    int i = 0;
    String str = paramIntent.getStringExtra("action_type");
    try
    {
      int j = Long.valueOf(System.currentTimeMillis()).intValue();
      i = j;
      PendingIntent localPendingIntent = PendingIntent.getService(this.c, i, paramIntent, 134217728);
      if (str.equals("01"))
      {
        super.a(paramIntent);
        return;
      }
    }
    catch (Exception localException)
    {
      do
        while (true)
          a.e("AdvancedPicNotification", "error : " + localException.getMessage());
      while (!str.equals("02"));
      this.a.bigContentView.setOnClickPendingIntent(e.a(this.c, "notification_big_icon"), localException);
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
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.baidu.android.pushservice.a.b.b
 * JD-Core Version:    0.6.2
 */