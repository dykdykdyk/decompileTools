package com.baidu.android.pushservice;

import android.app.Notification;
import android.app.Notification.Builder;
import android.content.Context;
import android.net.Uri;
import android.os.Build.VERSION;
import android.widget.RemoteViews;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;

public class CustomPushNotificationBuilder extends PushNotificationBuilder
{
  private int mLayoutIconDrawable;
  private int mLayoutIconId;
  private int mLayoutId;
  private int mLayoutTextId;
  private int mLayoutTitleId;

  public CustomPushNotificationBuilder(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    this.mLayoutId = paramInt1;
    this.mLayoutIconId = paramInt2;
    this.mLayoutTitleId = paramInt3;
    this.mLayoutTextId = paramInt4;
  }

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
    this.mLayoutId = paramObjectInputStream.readInt();
    this.mLayoutIconId = paramObjectInputStream.readInt();
    this.mLayoutTitleId = paramObjectInputStream.readInt();
    this.mLayoutTextId = paramObjectInputStream.readInt();
    this.mLayoutIconDrawable = paramObjectInputStream.readInt();
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
    paramObjectOutputStream.writeInt(this.mLayoutId);
    paramObjectOutputStream.writeInt(this.mLayoutIconId);
    paramObjectOutputStream.writeInt(this.mLayoutTitleId);
    paramObjectOutputStream.writeInt(this.mLayoutTextId);
    paramObjectOutputStream.writeInt(this.mLayoutIconDrawable);
  }

  public Notification construct(Context paramContext)
  {
    if (Build.VERSION.SDK_INT >= 16)
    {
      localObject = new Notification.Builder(paramContext);
      if (this.mNotificationDefaults != 0)
        ((Notification.Builder)localObject).setDefaults(this.mNotificationDefaults);
      if (this.mNotificationsound != null)
        ((Notification.Builder)localObject).setSound(Uri.parse(this.mNotificationsound));
      if (this.mVibratePattern != null)
        ((Notification.Builder)localObject).setVibrate(this.mVibratePattern);
      if (this.mStatusbarIcon != 0)
        ((Notification.Builder)localObject).setSmallIcon(this.mStatusbarIcon);
      if (this.mLayoutId != 0)
      {
        paramContext = new RemoteViews(paramContext.getPackageName(), this.mLayoutId);
        if (this.mLayoutIconDrawable != 0)
          paramContext.setImageViewResource(this.mLayoutIconId, this.mLayoutIconDrawable);
        if (this.mNotificationTitle != null)
          paramContext.setTextViewText(this.mLayoutTitleId, this.mNotificationTitle);
        if (this.mNotificationText != null)
          paramContext.setTextViewText(this.mLayoutTextId, this.mNotificationText);
        ((Notification.Builder)localObject).setContent(paramContext);
      }
      while (true)
      {
        paramContext = ((Notification.Builder)localObject).build();
        if (this.mNotificationFlags != 0)
          paramContext.flags = this.mNotificationFlags;
        return paramContext;
        ((Notification.Builder)localObject).setContentTitle(this.mNotificationTitle);
        ((Notification.Builder)localObject).setContentText(this.mNotificationText);
      }
    }
    Object localObject = new Notification();
    if (this.mNotificationDefaults != 0)
      ((Notification)localObject).defaults = this.mNotificationDefaults;
    if (this.mNotificationsound != null)
      ((Notification)localObject).sound = Uri.parse(this.mNotificationsound);
    if (this.mVibratePattern != null)
      ((Notification)localObject).vibrate = this.mVibratePattern;
    if (this.mStatusbarIcon != 0)
      ((Notification)localObject).icon = this.mStatusbarIcon;
    if (this.mNotificationFlags != 0)
      ((Notification)localObject).flags = this.mNotificationFlags;
    if (this.mLayoutId != 0)
    {
      paramContext = new RemoteViews(paramContext.getPackageName(), this.mLayoutId);
      if (this.mLayoutIconDrawable != 0)
        paramContext.setImageViewResource(this.mLayoutIconId, this.mLayoutIconDrawable);
      if (this.mNotificationTitle != null)
        paramContext.setTextViewText(this.mLayoutTitleId, this.mNotificationTitle);
      if (this.mNotificationText != null)
        paramContext.setTextViewText(this.mLayoutTextId, this.mNotificationText);
      ((Notification)localObject).contentView = paramContext;
      return localObject;
    }
    ((Notification)localObject).setLatestEventInfo(paramContext, this.mNotificationTitle, this.mNotificationText, null);
    return localObject;
  }

  public void setLayoutDrawable(int paramInt)
  {
    this.mLayoutIconDrawable = paramInt;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.baidu.android.pushservice.CustomPushNotificationBuilder
 * JD-Core Version:    0.6.2
 */