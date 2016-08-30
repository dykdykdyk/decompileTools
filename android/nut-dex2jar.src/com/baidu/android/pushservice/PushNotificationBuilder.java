package com.baidu.android.pushservice;

import android.app.Notification;
import android.content.Context;
import java.io.Serializable;

public abstract class PushNotificationBuilder
  implements Serializable
{
  protected int mNotificationDefaults;
  protected int mNotificationFlags;
  protected String mNotificationText;
  protected String mNotificationTitle;
  protected String mNotificationsound;
  protected int mStatusbarIcon;
  protected long[] mVibratePattern;

  public abstract Notification construct(Context paramContext);

  public void setNotificationDefaults(int paramInt)
  {
    this.mNotificationDefaults = paramInt;
  }

  public void setNotificationFlags(int paramInt)
  {
    this.mNotificationFlags = paramInt;
  }

  public void setNotificationSound(String paramString)
  {
    this.mNotificationsound = paramString;
  }

  public void setNotificationText(String paramString)
  {
    this.mNotificationText = paramString;
  }

  public void setNotificationTitle(String paramString)
  {
    this.mNotificationTitle = paramString;
  }

  public void setNotificationVibrate(long[] paramArrayOfLong)
  {
    this.mVibratePattern = paramArrayOfLong;
  }

  public void setStatusbarIcon(int paramInt)
  {
    this.mStatusbarIcon = paramInt;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.baidu.android.pushservice.PushNotificationBuilder
 * JD-Core Version:    0.6.2
 */