package android.support.v4.app;

import android.app.Notification;

class br
  implements bo
{
  public Notification a(bl parambl)
  {
    Notification localNotification = parambl.B;
    localNotification.setLatestEventInfo(parambl.a, parambl.b, parambl.c, parambl.d);
    if (parambl.j > 0)
      localNotification.flags |= 128;
    return localNotification;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     android.support.v4.app.br
 * JD-Core Version:    0.6.2
 */