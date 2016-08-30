package com.google.android.gms.common;

import android.annotation.TargetApi;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageInstaller;
import android.content.pm.PackageInstaller.SessionInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.res.Resources;
import android.os.Build;
import android.os.Bundle;
import android.os.UserManager;
import android.text.TextUtils;
import android.util.Log;
import com.google.android.gms.c;
import com.google.android.gms.common.b.d;
import com.google.android.gms.common.b.e;
import com.google.android.gms.common.b.f;
import com.google.android.gms.common.b.h;
import com.google.android.gms.common.internal.bm;
import com.google.android.gms.common.internal.t;
import com.google.android.gms.internal.ah;
import com.google.android.gms.internal.ai;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;

public class o
{

  @Deprecated
  public static final String GOOGLE_PLAY_SERVICES_PACKAGE = "com.google.android.gms";

  @Deprecated
  public static final int GOOGLE_PLAY_SERVICES_VERSION_CODE = zzqZ();
  public static final String GOOGLE_PLAY_STORE_PACKAGE = "com.android.vending";
  static final AtomicBoolean zzakA = new AtomicBoolean();
  private static final AtomicBoolean zzakB = new AtomicBoolean();
  public static boolean zzaku = false;
  public static boolean zzakv = false;
  static boolean zzakw = false;
  private static String zzakx = null;
  private static int zzaky = 0;
  private static boolean zzakz = false;

  @Deprecated
  public static PendingIntent getErrorPendingIntent(int paramInt1, Context paramContext, int paramInt2)
  {
    return g.b().a(paramContext, paramInt1, paramInt2);
  }

  @Deprecated
  public static String getErrorString(int paramInt)
  {
    return ConnectionResult.a(paramInt);
  }

  // ERROR //
  @Deprecated
  public static String getOpenSourceSoftwareLicenseInfo(Context paramContext)
  {
    // Byte code:
    //   0: new 82	android/net/Uri$Builder
    //   3: dup
    //   4: invokespecial 83	android/net/Uri$Builder:<init>	()V
    //   7: ldc 85
    //   9: invokevirtual 89	android/net/Uri$Builder:scheme	(Ljava/lang/String;)Landroid/net/Uri$Builder;
    //   12: ldc 8
    //   14: invokevirtual 92	android/net/Uri$Builder:authority	(Ljava/lang/String;)Landroid/net/Uri$Builder;
    //   17: ldc 94
    //   19: invokevirtual 97	android/net/Uri$Builder:appendPath	(Ljava/lang/String;)Landroid/net/Uri$Builder;
    //   22: ldc 99
    //   24: invokevirtual 97	android/net/Uri$Builder:appendPath	(Ljava/lang/String;)Landroid/net/Uri$Builder;
    //   27: invokevirtual 103	android/net/Uri$Builder:build	()Landroid/net/Uri;
    //   30: astore_1
    //   31: aload_0
    //   32: invokevirtual 109	android/content/Context:getContentResolver	()Landroid/content/ContentResolver;
    //   35: aload_1
    //   36: invokevirtual 115	android/content/ContentResolver:openInputStream	(Landroid/net/Uri;)Ljava/io/InputStream;
    //   39: astore_2
    //   40: new 117	java/util/Scanner
    //   43: dup
    //   44: aload_2
    //   45: invokespecial 120	java/util/Scanner:<init>	(Ljava/io/InputStream;)V
    //   48: ldc 122
    //   50: invokevirtual 126	java/util/Scanner:useDelimiter	(Ljava/lang/String;)Ljava/util/Scanner;
    //   53: invokevirtual 130	java/util/Scanner:next	()Ljava/lang/String;
    //   56: astore_0
    //   57: aload_0
    //   58: astore_1
    //   59: aload_2
    //   60: ifnull +35 -> 95
    //   63: aload_2
    //   64: invokevirtual 135	java/io/InputStream:close	()V
    //   67: aload_0
    //   68: areturn
    //   69: astore_0
    //   70: aload_2
    //   71: ifnull +26 -> 97
    //   74: aload_2
    //   75: invokevirtual 135	java/io/InputStream:close	()V
    //   78: goto +19 -> 97
    //   81: astore_0
    //   82: aload_2
    //   83: ifnull +7 -> 90
    //   86: aload_2
    //   87: invokevirtual 135	java/io/InputStream:close	()V
    //   90: aload_0
    //   91: athrow
    //   92: astore_0
    //   93: aconst_null
    //   94: astore_1
    //   95: aload_1
    //   96: areturn
    //   97: aconst_null
    //   98: areturn
    //
    // Exception table:
    //   from	to	target	type
    //   40	57	69	java/util/NoSuchElementException
    //   40	57	81	finally
    //   31	40	92	java/lang/Exception
    //   63	67	92	java/lang/Exception
    //   74	78	92	java/lang/Exception
    //   86	90	92	java/lang/Exception
    //   90	92	92	java/lang/Exception
  }

  public static Context getRemoteContext(Context paramContext)
  {
    try
    {
      paramContext = paramContext.createPackageContext("com.google.android.gms", 3);
      return paramContext;
    }
    catch (PackageManager.NameNotFoundException paramContext)
    {
    }
    return null;
  }

  public static Resources getRemoteResource(Context paramContext)
  {
    try
    {
      paramContext = paramContext.getPackageManager().getResourcesForApplication("com.google.android.gms");
      return paramContext;
    }
    catch (PackageManager.NameNotFoundException paramContext)
    {
    }
    return null;
  }

  @Deprecated
  public static int isGooglePlayServicesAvailable(Context paramContext)
  {
    PackageManager localPackageManager = paramContext.getPackageManager();
    try
    {
      paramContext.getResources().getString(c.common_google_play_services_unknown_issue);
      if (!"com.google.android.gms".equals(paramContext.getPackageName()))
        zzaj(paramContext);
    }
    catch (Throwable localThrowable)
    {
      try
      {
        PackageInfo localPackageInfo = localPackageManager.getPackageInfo("com.google.android.gms", 64);
        p.a(paramContext);
        if (d.a(paramContext))
        {
          if (p.a(localPackageInfo, l.a) != null)
            break label169;
          Log.w("GooglePlayServicesUtil", "Google Play services signature invalid.");
          return 9;
          localThrowable = localThrowable;
          Log.e("GooglePlayServicesUtil", "The Google Play services resources were not found. Check your project configuration to ensure that the resources are included.");
        }
      }
      catch (PackageManager.NameNotFoundException paramContext)
      {
        Log.w("GooglePlayServicesUtil", "Google Play services is missing.");
        return 1;
      }
    }
    try
    {
      paramContext = p.a(localPackageManager.getPackageInfo("com.android.vending", 8256), l.a);
      if (paramContext == null)
      {
        Log.w("GooglePlayServicesUtil", "Google Play Store signature invalid.");
        return 9;
      }
    }
    catch (PackageManager.NameNotFoundException paramContext)
    {
      Log.w("GooglePlayServicesUtil", "Google Play Store is neither installed nor updating.");
      return 9;
    }
    if (p.a(localThrowable, new i[] { paramContext }) == null)
    {
      Log.w("GooglePlayServicesUtil", "Google Play services signature invalid.");
      return 9;
    }
    label169: int i = e.a(GOOGLE_PLAY_SERVICES_VERSION_CODE);
    if (e.a(localThrowable.versionCode) < i)
    {
      i = GOOGLE_PLAY_SERVICES_VERSION_CODE;
      int j = localThrowable.versionCode;
      Log.w("GooglePlayServicesUtil", 77 + "Google Play services out of date.  Requires " + i + " but found " + j);
      return 2;
    }
    ApplicationInfo localApplicationInfo = localThrowable.applicationInfo;
    paramContext = localApplicationInfo;
    if (localApplicationInfo == null);
    try
    {
      paramContext = localPackageManager.getApplicationInfo("com.google.android.gms", 0);
      if (!paramContext.enabled)
        return 3;
    }
    catch (PackageManager.NameNotFoundException paramContext)
    {
      Log.wtf("GooglePlayServicesUtil", "Google Play services missing when getting application info.", paramContext);
      return 1;
    }
    return 0;
  }

  @Deprecated
  public static boolean isUserRecoverableError(int paramInt)
  {
    switch (paramInt)
    {
    case 4:
    case 5:
    case 6:
    case 7:
    case 8:
    default:
      return false;
    case 1:
    case 2:
    case 3:
    case 9:
    }
    return true;
  }

  @Deprecated
  public static void zzaa(Context paramContext)
    throws GooglePlayServicesRepairableException, GooglePlayServicesNotAvailableException
  {
    int i = g.b().a(paramContext);
    if (i != 0)
    {
      paramContext = g.b().a(paramContext, i, "e");
      Log.e("GooglePlayServicesUtil", 57 + "GooglePlayServices not available due to error " + i);
      if (paramContext == null)
        throw new GooglePlayServicesNotAvailableException(i);
      throw new GooglePlayServicesRepairableException(i, "Google Play Services not available", paramContext);
    }
  }

  @Deprecated
  public static int zzae(Context paramContext)
  {
    try
    {
      paramContext = paramContext.getPackageManager().getPackageInfo("com.google.android.gms", 0);
      return paramContext.versionCode;
    }
    catch (PackageManager.NameNotFoundException paramContext)
    {
      Log.w("GooglePlayServicesUtil", "Google Play services is missing.");
    }
    return 0;
  }

  @Deprecated
  public static void zzag(Context paramContext)
  {
    if (zzakA.getAndSet(true))
      return;
    try
    {
      ((NotificationManager)paramContext.getSystemService("notification")).cancel(10436);
      return;
    }
    catch (SecurityException paramContext)
    {
    }
  }

  private static void zzaj(Context paramContext)
  {
    if (zzakB.get());
    do
    {
      return;
      zzao(paramContext);
      if (zzaky == 0)
        throw new IllegalStateException("A required meta-data tag in your app's AndroidManifest.xml does not exist.  You must have the following declaration within the <application> element:     <meta-data android:name=\"com.google.android.gms.version\" android:value=\"@integer/google_play_services_version\" />");
    }
    while (zzaky == GOOGLE_PLAY_SERVICES_VERSION_CODE);
    int i = GOOGLE_PLAY_SERVICES_VERSION_CODE;
    int j = zzaky;
    paramContext = String.valueOf("com.google.android.gms.version");
    throw new IllegalStateException(String.valueOf(paramContext).length() + 290 + "The meta-data tag in your app's AndroidManifest.xml does not have the right value.  Expected " + i + " but found " + j + ".  You must have the following declaration within the <application> element:     <meta-data android:name=\"" + paramContext + "\" android:value=\"@integer/google_play_services_version\" />");
  }

  public static boolean zzak(Context paramContext)
  {
    zzao(paramContext);
    return zzakw;
  }

  public static boolean zzal(Context paramContext)
  {
    return (zzak(paramContext)) || (!zzra());
  }

  public static String zzam(Context paramContext)
  {
    Object localObject2 = paramContext.getApplicationInfo().name;
    Object localObject1 = localObject2;
    if (TextUtils.isEmpty((CharSequence)localObject2))
    {
      localObject1 = paramContext.getPackageName();
      localObject2 = paramContext.getApplicationContext().getPackageManager();
    }
    try
    {
      paramContext = ai.a(paramContext).a(paramContext.getPackageName(), 0);
      if (paramContext != null)
        localObject1 = ((PackageManager)localObject2).getApplicationLabel(paramContext).toString();
      return localObject1;
    }
    catch (PackageManager.NameNotFoundException paramContext)
    {
      while (true)
        paramContext = null;
    }
  }

  @TargetApi(18)
  public static boolean zzan(Context paramContext)
  {
    if (f.a(18))
    {
      paramContext = ((UserManager)paramContext.getSystemService("user")).getApplicationRestrictions(paramContext.getPackageName());
      if ((paramContext != null) && ("true".equals(paramContext.getString("restricted_profile"))))
        return true;
    }
    return false;
  }

  private static void zzao(Context paramContext)
  {
    if (!zzakz)
      zzap(paramContext);
  }

  private static void zzap(Context paramContext)
  {
    try
    {
      zzakx = paramContext.getPackageName();
      Object localObject = ai.a(paramContext);
      zzaky = bm.a(paramContext);
      localObject = ((ah)localObject).a("com.google.android.gms");
      if (localObject != null)
      {
        p.a(paramContext);
        if (p.a((PackageInfo)localObject, new i[] { l.a[1] }) == null);
      }
      for (zzakw = true; ; zzakw = false)
        return;
    }
    catch (PackageManager.NameNotFoundException paramContext)
    {
      Log.w("GooglePlayServicesUtil", "Cannot find Google Play services package name.", paramContext);
      return;
    }
    finally
    {
      zzakz = true;
    }
    throw paramContext;
  }

  @Deprecated
  public static Intent zzbC(int paramInt)
  {
    return g.b().a(null, paramInt, null);
  }

  static boolean zzbD(int paramInt)
  {
    switch (paramInt)
    {
    default:
      return false;
    case 1:
    case 2:
    case 3:
    case 18:
    case 42:
    }
    return true;
  }

  @Deprecated
  public static boolean zzc(Context paramContext, int paramInt)
  {
    if (paramInt == 18)
      return true;
    if (paramInt == 1)
      return zzk(paramContext, "com.google.android.gms");
    return false;
  }

  @Deprecated
  public static boolean zzd(Context paramContext, int paramInt)
  {
    if (paramInt == 9)
      return zzk(paramContext, "com.android.vending");
    return false;
  }

  @Deprecated
  public static boolean zze(Context paramContext, int paramInt)
  {
    return h.a(paramContext, paramInt);
  }

  @TargetApi(21)
  public static boolean zzk(Context paramContext, String paramString)
  {
    if (f.a(21))
    {
      Iterator localIterator = paramContext.getPackageManager().getPackageInstaller().getAllSessions().iterator();
      while (localIterator.hasNext())
        if (paramString.equals(((PackageInstaller.SessionInfo)localIterator.next()).getAppPackageName()))
          return true;
    }
    if (zzan(paramContext))
      return false;
    paramContext = paramContext.getPackageManager();
    try
    {
      boolean bool = paramContext.getApplicationInfo(paramString, 8192).enabled;
      return bool;
    }
    catch (PackageManager.NameNotFoundException paramContext)
    {
    }
    return false;
  }

  private static int zzqZ()
  {
    return t.a;
  }

  @Deprecated
  public static boolean zzra()
  {
    return "user".equals(Build.TYPE);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.google.android.gms.common.o
 * JD-Core Version:    0.6.2
 */