package android.support.v4.app;

import android.app.Notification;
import android.app.PendingIntent;
import android.content.Context;

final class bs extends br
{
  public final Notification a(bl parambl)
  {
    Notification localNotification = parambl.B;
    Context localContext = parambl.a;
    CharSequence localCharSequence1 = parambl.b;
    CharSequence localCharSequence2 = parambl.c;
    PendingIntent localPendingIntent1 = parambl.d;
    PendingIntent localPendingIntent2 = parambl.e;
    localNotification.setLatestEventInfo(localContext, localCharSequence1, localCharSequence2, localPendingIntent1);
    localNotification.fullScreenIntent = localPendingIntent2;
    if (parambl.j > 0)
      localNotification.flags |= 128;
    return localNotification;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     android.support.v4.app.bs
 * JD-Core Version:    0.6.2
 */