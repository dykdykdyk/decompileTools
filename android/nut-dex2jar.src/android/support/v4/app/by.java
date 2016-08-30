package android.support.v4.app;

import android.app.Notification.Action.Builder;
import android.app.Notification.Builder;
import android.app.RemoteInput;

final class by
{
  public static void a(Notification.Builder paramBuilder, cd paramcd)
  {
    Notification.Action.Builder localBuilder = new Notification.Action.Builder(paramcd.a(), paramcd.b(), paramcd.c());
    if (paramcd.e() != null)
    {
      RemoteInput[] arrayOfRemoteInput = cr.a(paramcd.e());
      int j = arrayOfRemoteInput.length;
      int i = 0;
      while (i < j)
      {
        localBuilder.addRemoteInput(arrayOfRemoteInput[i]);
        i += 1;
      }
    }
    if (paramcd.d() != null)
      localBuilder.addExtras(paramcd.d());
    paramBuilder.addAction(localBuilder.build());
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     android.support.v4.app.by
 * JD-Core Version:    0.6.2
 */