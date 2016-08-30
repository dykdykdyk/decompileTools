package com.baidu.android.pushservice;

import android.app.Notification;
import android.app.Notification.Builder;
import android.content.Context;
import android.net.Uri;
import android.os.Build.VERSION;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;

public class BasicPushNotificationBuilder extends PushNotificationBuilder
{
  private void readObject(ObjectInputStream paramObjectInputStream)
    throws IOException, ClassNotFoundException
  {
    this.mStatusbarIcon = paramObjectInputStream.readInt();
    this.mNotificationFlags = paramObjectInputStream.readInt();
    this.mNotificationDefaults = paramObjectInputStream.readInt();
    if (paramObjectInputStream.readBoolean())
      this.mNotificationsound = ((String)paramObjectInputStream.readObject());
    int j = paramObjectInputStream.readInt();
    this.mVibratePattern = new long[j];
    int i = 0;
    while (i < j)
    {
      this.mVibratePattern[i] = paramObjectInputStream.readLong();
      i += 1;
    }
    this.mNotificationTitle = ((String)paramObjectInputStream.readObject());
    this.mNotificationText = ((String)paramObjectInputStream.readObject());
  }

  private void writeObject(ObjectOutputStream paramObjectOutputStream)
    throws IOException
  {
    int i = 0;
    paramObjectOutputStream.writeInt(this.mStatusbarIcon);
    paramObjectOutputStream.writeInt(this.mNotificationFlags);
    paramObjectOutputStream.writeInt(this.mNotificationDefaults);
    if (this.mNotificationsound != null)
    {
      paramObjectOutputStream.writeBoolean(true);
      paramObjectOutputStream.writeObject(this.mNotificationsound.toString());
    }
    while (this.mVibratePattern != null)
    {
      paramObjectOutputStream.writeInt(this.mVibratePattern.length);
      while (i < this.mVibratePattern.length)
      {
        paramObjectOutputStream.writeLong(this.mVibratePattern[i]);
        i += 1;
      }
      paramObjectOutputStream.writeBoolean(false);
    }
    paramObjectOutputStream.writeInt(0);
    paramObjectOutputStream.writeObject(this.mNotificationTitle);
    paramObjectOutputStream.writeObject(this.mNotificationText);
  }

  public Notification construct(Context paramContext)
  {
    if (Build.VERSION.SDK_INT >= 16)
    {
      paramContext = new Notification.Builder(paramContext);
      if (this.mNotificationDefaults != 0)
        paramContext.setDefaults(this.mNotificationDefaults);
      if (this.mNotificationsound != null)
        paramContext.setSound(Uri.parse(this.mNotificationsound));
      if (this.mVibratePattern != null)
        paramContext.setVibrate(this.mVibratePattern);
      if (this.mStatusbarIcon != 0)
        paramContext.setSmallIcon(this.mStatusbarIcon);
      paramContext.setContentTitle(this.mNotificationTitle);
      paramContext.setContentText(this.mNotificationText);
      paramContext = paramContext.build();
      if (this.mNotificationFlags != 0)
        paramContext.flags = this.mNotificationFlags;
      return paramContext;
    }
    Notification localNotification = new Notification();
    if (this.mNotificationDefaults != 0)
      localNotification.defaults = this.mNotificationDefaults;
    if (this.mNotificationsound != null)
      localNotification.sound = Uri.parse(this.mNotificationsound);
    if (this.mVibratePattern != null)
      localNotification.vibrate = this.mVibratePattern;
    if (this.mStatusbarIcon != 0)
      localNotification.icon = this.mStatusbarIcon;
    if (this.mNotificationFlags != 0)
      localNotification.flags = this.mNotificationFlags;
    localNotification.setLatestEventInfo(paramContext, this.mNotificationTitle, this.mNotificationText, null);
    return localNotification;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.baidu.android.pushservice.BasicPushNotificationBuilder
 * JD-Core Version:    0.6.2
 */