package com.baidu.android.pushservice;

import android.app.Notification;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Build.VERSION;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import com.baidu.android.pushservice.util.m;

public class d
{
  protected int a;
  protected int b;
  protected int c;
  protected Uri d;
  protected long[] e;
  protected String f;
  protected String g;
  protected boolean h = false;
  private final String i;

  public d(String paramString)
  {
    this.i = paramString;
  }

  private Bitmap a(Drawable paramDrawable, Context paramContext)
  {
    int j = paramDrawable.getIntrinsicWidth();
    int k = paramDrawable.getIntrinsicHeight();
    if (paramDrawable.getOpacity() != -1);
    for (Object localObject = Bitmap.Config.ARGB_8888; ; localObject = Bitmap.Config.RGB_565)
    {
      localObject = Bitmap.createBitmap(j, k, (Bitmap.Config)localObject);
      Canvas localCanvas = new Canvas((Bitmap)localObject);
      float f1 = paramContext.getResources().getDisplayMetrics().density;
      paramDrawable.setBounds(0, 0, (int)(48.0F * f1), (int)(f1 * 48.0F));
      paramDrawable.draw(localCanvas);
      return localObject;
    }
  }

  public void a(int paramInt)
  {
    this.a = paramInt;
  }

  public void a(Context paramContext, PendingIntent paramPendingIntent, String paramString)
  {
    int j = c.a(paramContext, "bpush_lapp_notification_status_icon");
    if (j > 0)
      a(j);
    while ((Build.VERSION.SDK_INT >= 11) && (!TextUtils.isEmpty(this.i)))
    {
      new Thread(new d.1(this, paramContext, paramPendingIntent, paramString), "DownNotiIcon").start();
      return;
      a(17301620);
    }
    Notification localNotification = new Notification();
    if (this.h)
      localNotification.defaults = 0;
    while (true)
    {
      if (this.a != 0)
        localNotification.icon = this.a;
      if (this.b != 0)
        localNotification.flags = this.b;
      localNotification.setLatestEventInfo(paramContext, this.f, this.g, paramPendingIntent);
      paramContext = (NotificationManager)paramContext.getSystemService("notification");
      localNotification.contentIntent = paramPendingIntent;
      paramContext.notify(m.c(paramString), localNotification);
      return;
      localNotification.defaults = -1;
      if (this.c != 0)
        localNotification.defaults = this.c;
      if (this.d != null)
        localNotification.sound = this.d;
      if (this.e != null)
        localNotification.vibrate = this.e;
    }
  }

  public void a(String paramString)
  {
    this.f = paramString;
  }

  public void a(boolean paramBoolean)
  {
    this.h = paramBoolean;
  }

  public void b(int paramInt)
  {
    this.b = paramInt;
  }

  public void b(String paramString)
  {
    this.g = paramString;
  }

  public void c(int paramInt)
  {
    this.c = paramInt;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.baidu.android.pushservice.d
 * JD-Core Version:    0.6.2
 */