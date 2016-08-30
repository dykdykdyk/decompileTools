package android.support.v4.app;

import android.app.Notification;
import android.app.Notification.Builder;
import android.app.PendingIntent;
import android.content.Context;
import android.widget.RemoteViews;

final class bt extends br
{
  public final Notification a(bl parambl)
  {
    Object localObject2 = parambl.a;
    Notification localNotification = parambl.B;
    Object localObject1 = parambl.b;
    CharSequence localCharSequence1 = parambl.c;
    CharSequence localCharSequence2 = parambl.h;
    RemoteViews localRemoteViews = parambl.f;
    int i = parambl.i;
    PendingIntent localPendingIntent2 = parambl.d;
    PendingIntent localPendingIntent1 = parambl.e;
    parambl = parambl.g;
    localObject2 = new Notification.Builder((Context)localObject2).setWhen(localNotification.when).setSmallIcon(localNotification.icon, localNotification.iconLevel).setContent(localNotification.contentView).setTicker(localNotification.tickerText, localRemoteViews).setSound(localNotification.sound, localNotification.audioStreamType).setVibrate(localNotification.vibrate).setLights(localNotification.ledARGB, localNotification.ledOnMS, localNotification.ledOffMS);
    if ((localNotification.flags & 0x2) != 0)
    {
      bool = true;
      localObject2 = ((Notification.Builder)localObject2).setOngoing(bool);
      if ((localNotification.flags & 0x8) == 0)
        break label284;
      bool = true;
      label180: localObject2 = ((Notification.Builder)localObject2).setOnlyAlertOnce(bool);
      if ((localNotification.flags & 0x10) == 0)
        break label289;
      bool = true;
      label201: localObject1 = ((Notification.Builder)localObject2).setAutoCancel(bool).setDefaults(localNotification.defaults).setContentTitle((CharSequence)localObject1).setContentText(localCharSequence1).setContentInfo(localCharSequence2).setContentIntent(localPendingIntent2).setDeleteIntent(localNotification.deleteIntent);
      if ((localNotification.flags & 0x80) == 0)
        break label294;
    }
    label284: label289: label294: for (boolean bool = true; ; bool = false)
    {
      return ((Notification.Builder)localObject1).setFullScreenIntent(localPendingIntent1, bool).setLargeIcon(parambl).setNumber(i).getNotification();
      bool = false;
      break;
      bool = false;
      break label180;
      bool = false;
      break label201;
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     android.support.v4.app.bt
 * JD-Core Version:    0.6.2
 */