package android.support.v4.app;

import android.app.Notification;
import android.app.Notification.BigPictureStyle;
import android.app.Notification.BigTextStyle;
import android.app.Notification.Builder;
import android.app.Notification.InboxStyle;
import android.graphics.Bitmap;
import android.os.Bundle;
import android.util.Log;
import android.util.SparseArray;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

final class ch
{
  private static final Object a = new Object();
  private static Field b;
  private static boolean c;
  private static final Object d = new Object();

  public static Bundle a(Notification.Builder paramBuilder, cd paramcd)
  {
    paramBuilder.addAction(paramcd.a(), paramcd.b(), paramcd.c());
    paramBuilder = new Bundle(paramcd.d());
    if (paramcd.e() != null)
      paramBuilder.putParcelableArray("android.support.remoteInputs", cv.a(paramcd.e()));
    return paramBuilder;
  }

  public static Bundle a(Notification paramNotification)
  {
    synchronized (a)
    {
      if (c)
        return null;
    }
    try
    {
      if (b == null)
      {
        localObject1 = Notification.class.getDeclaredField("extras");
        if (!Bundle.class.isAssignableFrom(((Field)localObject1).getType()))
        {
          Log.e("NotificationCompat", "Notification.extras field is not of type Bundle");
          c = true;
          return null;
        }
        ((Field)localObject1).setAccessible(true);
        b = (Field)localObject1;
      }
      Bundle localBundle = (Bundle)b.get(paramNotification);
      Object localObject1 = localBundle;
      if (localBundle == null)
      {
        localObject1 = new Bundle();
        b.set(paramNotification, localObject1);
      }
      return localObject1;
      paramNotification = finally;
      throw paramNotification;
    }
    catch (IllegalAccessException paramNotification)
    {
      Log.e("NotificationCompat", "Unable to access notification extras", paramNotification);
      c = true;
      return null;
    }
    catch (NoSuchFieldException paramNotification)
    {
      while (true)
        Log.e("NotificationCompat", "Unable to access notification extras", paramNotification);
    }
  }

  public static SparseArray<Bundle> a(List<Bundle> paramList)
  {
    Object localObject1 = null;
    int j = paramList.size();
    int i = 0;
    while (i < j)
    {
      Bundle localBundle = (Bundle)paramList.get(i);
      Object localObject2 = localObject1;
      if (localBundle != null)
      {
        localObject2 = localObject1;
        if (localObject1 == null)
          localObject2 = new SparseArray();
        ((SparseArray)localObject2).put(i, localBundle);
      }
      i += 1;
      localObject1 = localObject2;
    }
    return localObject1;
  }

  public static void a(bf parambf, CharSequence paramCharSequence1, boolean paramBoolean1, CharSequence paramCharSequence2, Bitmap paramBitmap1, Bitmap paramBitmap2, boolean paramBoolean2)
  {
    parambf = new Notification.BigPictureStyle(parambf.a()).setBigContentTitle(paramCharSequence1).bigPicture(paramBitmap1);
    if (paramBoolean2)
      parambf.bigLargeIcon(paramBitmap2);
    if (paramBoolean1)
      parambf.setSummaryText(paramCharSequence2);
  }

  public static void a(bf parambf, CharSequence paramCharSequence1, boolean paramBoolean, CharSequence paramCharSequence2, CharSequence paramCharSequence3)
  {
    parambf = new Notification.BigTextStyle(parambf.a()).setBigContentTitle(paramCharSequence1).bigText(paramCharSequence3);
    if (paramBoolean)
      parambf.setSummaryText(paramCharSequence2);
  }

  public static void a(bf parambf, CharSequence paramCharSequence1, boolean paramBoolean, CharSequence paramCharSequence2, ArrayList<CharSequence> paramArrayList)
  {
    parambf = new Notification.InboxStyle(parambf.a()).setBigContentTitle(paramCharSequence1);
    if (paramBoolean)
      parambf.setSummaryText(paramCharSequence2);
    paramCharSequence1 = paramArrayList.iterator();
    while (paramCharSequence1.hasNext())
      parambf.addLine((CharSequence)paramCharSequence1.next());
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     android.support.v4.app.ch
 * JD-Core Version:    0.6.2
 */