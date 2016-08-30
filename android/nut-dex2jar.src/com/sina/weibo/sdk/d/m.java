package com.sina.weibo.sdk.d;

import android.app.Notification;
import android.app.NotificationManager;
import android.content.Context;

public final class m
{
  private Context a;
  private Notification b;

  private m(Context paramContext, Notification paramNotification)
  {
    this.a = paramContext.getApplicationContext();
    this.b = paramNotification;
  }

  public final void a(int paramInt)
  {
    if (this.b != null)
      ((NotificationManager)this.a.getSystemService("notification")).notify(paramInt, this.b);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.sina.weibo.sdk.d.m
 * JD-Core Version:    0.6.2
 */