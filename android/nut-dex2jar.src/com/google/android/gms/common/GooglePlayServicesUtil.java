package com.google.android.gms.common;

import android.annotation.TargetApi;
import android.app.Activity;
import android.app.AlertDialog.Builder;
import android.app.Dialog;
import android.app.Notification;
import android.app.Notification.BigTextStyle;
import android.app.Notification.Builder;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.DialogInterface.OnCancelListener;
import android.content.Intent;
import android.content.res.Resources;
import android.content.res.Resources.Theme;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.Handler;
import android.support.v4.app.Fragment;
import android.support.v4.app.bl;
import android.support.v4.app.v;
import android.util.TypedValue;
import com.google.android.gms.common.b.f;
import com.google.android.gms.common.internal.aj;
import com.google.android.gms.common.internal.ak;
import java.util.concurrent.atomic.AtomicBoolean;

public final class GooglePlayServicesUtil extends o
{
  public static final String GMS_ERROR_DIALOG = "GooglePlayServicesErrorDialog";

  @Deprecated
  public static final String GOOGLE_PLAY_SERVICES_PACKAGE = "com.google.android.gms";

  @Deprecated
  public static final int GOOGLE_PLAY_SERVICES_VERSION_CODE = o.GOOGLE_PLAY_SERVICES_VERSION_CODE;
  public static final String GOOGLE_PLAY_STORE_PACKAGE = "com.android.vending";

  @Deprecated
  public static Dialog getErrorDialog(int paramInt1, Activity paramActivity, int paramInt2)
  {
    return getErrorDialog(paramInt1, paramActivity, paramInt2, null);
  }

  @Deprecated
  public static Dialog getErrorDialog(int paramInt1, Activity paramActivity, int paramInt2, DialogInterface.OnCancelListener paramOnCancelListener)
  {
    return zza(paramInt1, paramActivity, ak.a(paramActivity, b.a().a(paramActivity, paramInt1, "d"), paramInt2), paramOnCancelListener);
  }

  @Deprecated
  public static PendingIntent getErrorPendingIntent(int paramInt1, Context paramContext, int paramInt2)
  {
    return o.getErrorPendingIntent(paramInt1, paramContext, paramInt2);
  }

  @Deprecated
  public static String getErrorString(int paramInt)
  {
    return o.getErrorString(paramInt);
  }

  @Deprecated
  public static String getOpenSourceSoftwareLicenseInfo(Context paramContext)
  {
    return o.getOpenSourceSoftwareLicenseInfo(paramContext);
  }

  public static Context getRemoteContext(Context paramContext)
  {
    return o.getRemoteContext(paramContext);
  }

  public static Resources getRemoteResource(Context paramContext)
  {
    return o.getRemoteResource(paramContext);
  }

  @Deprecated
  public static int isGooglePlayServicesAvailable(Context paramContext)
  {
    return o.isGooglePlayServicesAvailable(paramContext);
  }

  @Deprecated
  public static boolean isUserRecoverableError(int paramInt)
  {
    return o.isUserRecoverableError(paramInt);
  }

  @Deprecated
  public static boolean showErrorDialogFragment(int paramInt1, Activity paramActivity, int paramInt2)
  {
    return showErrorDialogFragment(paramInt1, paramActivity, paramInt2, null);
  }

  @Deprecated
  public static boolean showErrorDialogFragment(int paramInt1, Activity paramActivity, int paramInt2, DialogInterface.OnCancelListener paramOnCancelListener)
  {
    return showErrorDialogFragment(paramInt1, paramActivity, null, paramInt2, paramOnCancelListener);
  }

  public static boolean showErrorDialogFragment(int paramInt1, Activity paramActivity, Fragment paramFragment, int paramInt2, DialogInterface.OnCancelListener paramOnCancelListener)
  {
    Intent localIntent = b.a().a(paramActivity, paramInt1, "d");
    if (paramFragment == null);
    for (paramFragment = ak.a(paramActivity, localIntent, paramInt2); ; paramFragment = ak.a(paramFragment, localIntent, paramInt2))
    {
      paramFragment = zza(paramInt1, paramActivity, paramFragment, paramOnCancelListener);
      if (paramFragment != null)
        break;
      return false;
    }
    zza(paramActivity, paramOnCancelListener, "GooglePlayServicesErrorDialog", paramFragment);
    return true;
  }

  @Deprecated
  public static void showErrorNotification(int paramInt, Context paramContext)
  {
    int i = paramInt;
    if (com.google.android.gms.common.b.d.a(paramContext))
    {
      i = paramInt;
      if (paramInt == 2)
        i = 42;
    }
    if ((zzc(paramContext, i)) || (zzd(paramContext, i)))
    {
      zzai(paramContext);
      return;
    }
    zza(i, paramContext);
  }

  @TargetApi(14)
  public static Dialog zza(int paramInt, Activity paramActivity, ak paramak, DialogInterface.OnCancelListener paramOnCancelListener)
  {
    Object localObject2 = null;
    if (paramInt == 0)
      return null;
    int i = paramInt;
    if (com.google.android.gms.common.b.d.a(paramActivity))
    {
      i = paramInt;
      if (paramInt == 2)
        i = 42;
    }
    paramInt = i;
    if (zzc(paramActivity, i))
      paramInt = 18;
    Object localObject1 = localObject2;
    if (f.a(14))
    {
      TypedValue localTypedValue = new TypedValue();
      paramActivity.getTheme().resolveAttribute(16843529, localTypedValue, true);
      localObject1 = localObject2;
      if ("Theme.Dialog.Alert".equals(paramActivity.getResources().getResourceEntryName(localTypedValue.resourceId)))
        localObject1 = new AlertDialog.Builder(paramActivity, 5);
    }
    localObject2 = localObject1;
    if (localObject1 == null)
      localObject2 = new AlertDialog.Builder(paramActivity);
    ((AlertDialog.Builder)localObject2).setMessage(aj.a(paramActivity, paramInt, zzam(paramActivity)));
    if (paramOnCancelListener != null)
      ((AlertDialog.Builder)localObject2).setOnCancelListener(paramOnCancelListener);
    paramOnCancelListener = aj.b(paramActivity, paramInt);
    if (paramOnCancelListener != null)
      ((AlertDialog.Builder)localObject2).setPositiveButton(paramOnCancelListener, paramak);
    paramActivity = aj.a(paramActivity, paramInt);
    if (paramActivity != null)
      ((AlertDialog.Builder)localObject2).setTitle(paramActivity);
    return ((AlertDialog.Builder)localObject2).create();
  }

  private static void zza(int paramInt, Context paramContext)
  {
    zza(paramInt, paramContext, null);
  }

  static void zza(int paramInt, Context paramContext, PendingIntent paramPendingIntent)
  {
    zza(paramInt, paramContext, null, paramPendingIntent);
  }

  private static void zza(int paramInt, Context paramContext, String paramString)
  {
    zza(paramInt, paramContext, paramString, b.a().a(paramContext, paramInt, 0, "n"));
  }

  @TargetApi(20)
  private static void zza(int paramInt, Context paramContext, String paramString, PendingIntent paramPendingIntent)
  {
    Object localObject3 = paramContext.getResources();
    String str = zzam(paramContext);
    Object localObject1 = paramContext.getResources();
    Object localObject2;
    if (paramInt == 6)
    {
      localObject1 = ((Resources)localObject1).getString(com.google.android.gms.c.common_google_play_services_resolution_required_title);
      localObject2 = localObject1;
      if (localObject1 == null)
        localObject2 = ((Resources)localObject3).getString(com.google.android.gms.c.common_google_play_services_notification_ticker);
      localObject1 = paramContext.getResources();
      if (paramInt != 6)
        break label108;
      localObject1 = ((Resources)localObject1).getString(com.google.android.gms.c.common_google_play_services_resolution_required_text);
    }
    while (true)
      if (com.google.android.gms.common.b.d.a(paramContext))
      {
        if (!f.a(16))
        {
          throw new IllegalStateException();
          localObject1 = aj.a(paramContext, paramInt);
          break;
          label108: localObject1 = aj.a(paramContext, paramInt, str);
          continue;
        }
        paramPendingIntent = new Notification.Builder(paramContext).setSmallIcon(com.google.android.gms.b.common_ic_googleplayservices).setPriority(2).setAutoCancel(true).setStyle(new Notification.BigTextStyle().bigText(String.valueOf(localObject2).length() + 1 + String.valueOf(localObject1).length() + (String)localObject2 + " " + (String)localObject1)).addAction(com.google.android.gms.b.common_full_open_on_phone, ((Resources)localObject3).getString(com.google.android.gms.c.common_open_on_phone), paramPendingIntent).build();
        if (!zzbD(paramInt))
          break label445;
        zzakA.set(false);
      }
    label445: for (paramInt = 10436; ; paramInt = 39789)
    {
      paramContext = (NotificationManager)paramContext.getSystemService("notification");
      if (paramString == null)
        break label452;
      paramContext.notify(paramString, paramInt, paramPendingIntent);
      return;
      localObject3 = ((Resources)localObject3).getString(com.google.android.gms.c.common_google_play_services_notification_ticker);
      if (f.a(11))
      {
        paramPendingIntent = new Notification.Builder(paramContext).setSmallIcon(17301642).setContentTitle((CharSequence)localObject2).setContentText((CharSequence)localObject1).setContentIntent(paramPendingIntent).setTicker((CharSequence)localObject3).setAutoCancel(true);
        if (f.a(20))
          paramPendingIntent.setLocalOnly(true);
        if (f.a(16))
          paramPendingIntent.setStyle(new Notification.BigTextStyle().bigText((CharSequence)localObject1));
        for (paramPendingIntent = paramPendingIntent.build(); ; paramPendingIntent = paramPendingIntent.getNotification())
        {
          if (Build.VERSION.SDK_INT == 19)
            paramPendingIntent.extras.putBoolean("android.support.localOnly", true);
          break;
        }
      }
      localObject3 = new bl(paramContext).a(17301642).c((CharSequence)localObject3).a(System.currentTimeMillis()).a();
      ((bl)localObject3).d = paramPendingIntent;
      paramPendingIntent = ((bl)localObject3).a((CharSequence)localObject2).b((CharSequence)localObject1).b();
      break;
    }
    label452: paramContext.notify(paramInt, paramPendingIntent);
  }

  @TargetApi(11)
  public static void zza(Activity paramActivity, DialogInterface.OnCancelListener paramOnCancelListener, String paramString, Dialog paramDialog)
  {
    if ((paramActivity instanceof v))
    {
      paramActivity = ((v)paramActivity).d();
      d.a(paramDialog, paramOnCancelListener).a(paramActivity, paramString);
      return;
    }
    if (f.a(11))
    {
      paramActivity = paramActivity.getFragmentManager();
      a.a(paramDialog, paramOnCancelListener).show(paramActivity, paramString);
      return;
    }
    throw new RuntimeException("This Activity does not support Fragments.");
  }

  private static void zzai(Context paramContext)
  {
    paramContext = new c(paramContext);
    paramContext.sendMessageDelayed(paramContext.obtainMessage(1), 120000L);
  }

  @Deprecated
  public static Intent zzbC(int paramInt)
  {
    return o.zzbC(paramInt);
  }

  @Deprecated
  public static boolean zzc(Context paramContext, int paramInt)
  {
    return o.zzc(paramContext, paramInt);
  }

  @Deprecated
  public static boolean zzd(Context paramContext, int paramInt)
  {
    return o.zzd(paramContext, paramInt);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.google.android.gms.common.GooglePlayServicesUtil
 * JD-Core Version:    0.6.2
 */