package io.fabric.sdk.android.services.b;

import android.app.ActivityManager;
import android.app.ActivityManager.MemoryInfo;
import android.app.ActivityManager.RunningAppProcessInfo;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.SharedPreferences;
import android.content.pm.ApplicationInfo;
import android.content.res.Resources;
import android.hardware.SensorManager;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Build;
import android.os.Debug;
import android.os.StatFs;
import android.provider.Settings.Secure;
import android.text.TextUtils;
import io.fabric.sdk.android.f;
import io.fabric.sdk.android.r;
import java.io.Closeable;
import java.io.File;
import java.io.Flushable;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Scanner;

public final class l
{
  public static final Comparator<File> a = new m();
  private static Boolean b = null;
  private static final char[] c = { 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 97, 98, 99, 100, 101, 102 };
  private static long d = -1L;

  public static int a()
  {
    return n.a().ordinal();
  }

  public static int a(Context paramContext, String paramString1, String paramString2)
  {
    Resources localResources = paramContext.getResources();
    int i = paramContext.getApplicationContext().getApplicationInfo().icon;
    if (i > 0);
    for (paramContext = paramContext.getResources().getResourcePackageName(i); ; paramContext = paramContext.getPackageName())
      return localResources.getIdentifier(paramString1, paramString2, paramContext);
  }

  public static int a(Context paramContext, boolean paramBoolean)
  {
    float f = c(paramContext);
    if (!paramBoolean)
      return 1;
    if ((paramBoolean) && (f >= 99.0D))
      return 3;
    if ((paramBoolean) && (f < 99.0D))
      return 2;
    return 0;
  }

  private static long a(String paramString1, String paramString2, int paramInt)
  {
    return Long.parseLong(paramString1.split(paramString2)[0].trim()) * paramInt;
  }

  public static ActivityManager.RunningAppProcessInfo a(String paramString, Context paramContext)
  {
    paramContext = ((ActivityManager)paramContext.getSystemService("activity")).getRunningAppProcesses();
    if (paramContext != null)
    {
      paramContext = paramContext.iterator();
      while (paramContext.hasNext())
      {
        ActivityManager.RunningAppProcessInfo localRunningAppProcessInfo = (ActivityManager.RunningAppProcessInfo)paramContext.next();
        if (localRunningAppProcessInfo.processName.equals(paramString))
          return localRunningAppProcessInfo;
      }
    }
    return null;
  }

  public static SharedPreferences a(Context paramContext)
  {
    return paramContext.getSharedPreferences("com.crashlytics.prefs", 0);
  }

  // ERROR //
  private static String a(File paramFile, String paramString)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_2
    //   2: aconst_null
    //   3: astore 4
    //   5: aload_0
    //   6: invokevirtual 167	java/io/File:exists	()Z
    //   9: ifeq +86 -> 95
    //   12: new 169	java/io/BufferedReader
    //   15: dup
    //   16: new 171	java/io/FileReader
    //   19: dup
    //   20: aload_0
    //   21: invokespecial 174	java/io/FileReader:<init>	(Ljava/io/File;)V
    //   24: sipush 1024
    //   27: invokespecial 177	java/io/BufferedReader:<init>	(Ljava/io/Reader;I)V
    //   30: astore_3
    //   31: aload_3
    //   32: astore_2
    //   33: aload_3
    //   34: invokevirtual 180	java/io/BufferedReader:readLine	()Ljava/lang/String;
    //   37: astore 5
    //   39: aload 4
    //   41: astore_2
    //   42: aload 5
    //   44: ifnull +45 -> 89
    //   47: aload_3
    //   48: astore_2
    //   49: ldc 182
    //   51: invokestatic 188	java/util/regex/Pattern:compile	(Ljava/lang/String;)Ljava/util/regex/Pattern;
    //   54: aload 5
    //   56: iconst_2
    //   57: invokevirtual 191	java/util/regex/Pattern:split	(Ljava/lang/CharSequence;I)[Ljava/lang/String;
    //   60: astore 5
    //   62: aload_3
    //   63: astore_2
    //   64: aload 5
    //   66: arraylength
    //   67: iconst_1
    //   68: if_icmple -37 -> 31
    //   71: aload_3
    //   72: astore_2
    //   73: aload 5
    //   75: iconst_0
    //   76: aaload
    //   77: aload_1
    //   78: invokevirtual 152	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   81: ifeq -50 -> 31
    //   84: aload 5
    //   86: iconst_1
    //   87: aaload
    //   88: astore_2
    //   89: aload_3
    //   90: ldc 193
    //   92: invokestatic 196	io/fabric/sdk/android/services/b/l:a	(Ljava/io/Closeable;Ljava/lang/String;)V
    //   95: aload_2
    //   96: areturn
    //   97: astore 4
    //   99: aconst_null
    //   100: astore_1
    //   101: aload_1
    //   102: astore_2
    //   103: invokestatic 201	io/fabric/sdk/android/f:b	()Lio/fabric/sdk/android/r;
    //   106: ldc 203
    //   108: new 205	java/lang/StringBuilder
    //   111: dup
    //   112: ldc 207
    //   114: invokespecial 210	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   117: aload_0
    //   118: invokevirtual 214	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   121: invokevirtual 217	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   124: aload 4
    //   126: invokeinterface 222 4 0
    //   131: aload_1
    //   132: ldc 193
    //   134: invokestatic 196	io/fabric/sdk/android/services/b/l:a	(Ljava/io/Closeable;Ljava/lang/String;)V
    //   137: aconst_null
    //   138: areturn
    //   139: astore_0
    //   140: aconst_null
    //   141: astore_2
    //   142: aload_2
    //   143: ldc 193
    //   145: invokestatic 196	io/fabric/sdk/android/services/b/l:a	(Ljava/io/Closeable;Ljava/lang/String;)V
    //   148: aload_0
    //   149: athrow
    //   150: astore_0
    //   151: goto -9 -> 142
    //   154: astore 4
    //   156: aload_3
    //   157: astore_1
    //   158: goto -57 -> 101
    //
    // Exception table:
    //   from	to	target	type
    //   12	31	97	java/lang/Exception
    //   12	31	139	finally
    //   33	39	150	finally
    //   49	62	150	finally
    //   64	71	150	finally
    //   73	84	150	finally
    //   103	131	150	finally
    //   33	39	154	java/lang/Exception
    //   49	62	154	java/lang/Exception
    //   64	71	154	java/lang/Exception
    //   73	84	154	java/lang/Exception
  }

  public static String a(InputStream paramInputStream)
    throws IOException
  {
    paramInputStream = new Scanner(paramInputStream).useDelimiter("\\A");
    if (paramInputStream.hasNext())
      return paramInputStream.next();
    return "";
  }

  public static String a(String paramString)
  {
    return a(paramString.getBytes(), "SHA-1");
  }

  public static String a(byte[] paramArrayOfByte)
  {
    char[] arrayOfChar = new char[paramArrayOfByte.length * 2];
    int i = 0;
    while (i < paramArrayOfByte.length)
    {
      int j = paramArrayOfByte[i] & 0xFF;
      arrayOfChar[(i * 2)] = c[(j >>> 4)];
      arrayOfChar[(i * 2 + 1)] = c[(j & 0xF)];
      i += 1;
    }
    return new String(arrayOfChar);
  }

  private static String a(byte[] paramArrayOfByte, String paramString)
  {
    try
    {
      MessageDigest localMessageDigest = MessageDigest.getInstance(paramString);
      localMessageDigest.update(paramArrayOfByte);
      return a(localMessageDigest.digest());
    }
    catch (NoSuchAlgorithmException paramArrayOfByte)
    {
      f.b().c("Fabric", "Could not create hashing algorithm: " + paramString + ", returning empty string.", paramArrayOfByte);
    }
    return "";
  }

  public static String a(String[] paramArrayOfString)
  {
    Object localObject = new ArrayList();
    int i = 0;
    while (i <= 0)
    {
      String str = paramArrayOfString[0];
      if (str != null)
        ((List)localObject).add(str.replace("-", "").toLowerCase(Locale.US));
      i += 1;
    }
    Collections.sort((List)localObject);
    paramArrayOfString = new StringBuilder();
    localObject = ((List)localObject).iterator();
    while (((Iterator)localObject).hasNext())
      paramArrayOfString.append((String)((Iterator)localObject).next());
    paramArrayOfString = paramArrayOfString.toString();
    if (paramArrayOfString.length() > 0)
      return a(paramArrayOfString);
    return null;
  }

  public static void a(Context paramContext, String paramString)
  {
    if (m(paramContext))
      f.b().a("Fabric", paramString);
  }

  public static void a(Closeable paramCloseable)
  {
    if (paramCloseable != null);
    try
    {
      paramCloseable.close();
      return;
    }
    catch (RuntimeException paramCloseable)
    {
      throw paramCloseable;
    }
    catch (Exception paramCloseable)
    {
    }
  }

  public static void a(Closeable paramCloseable, String paramString)
  {
    if (paramCloseable != null);
    try
    {
      paramCloseable.close();
      return;
    }
    catch (IOException paramCloseable)
    {
      f.b().c("Fabric", paramString, paramCloseable);
    }
  }

  public static void a(Flushable paramFlushable, String paramString)
  {
    if (paramFlushable != null);
    try
    {
      paramFlushable.flush();
      return;
    }
    catch (IOException paramFlushable)
    {
      f.b().c("Fabric", paramString, paramFlushable);
    }
  }

  public static void a(InputStream paramInputStream, OutputStream paramOutputStream, byte[] paramArrayOfByte)
    throws IOException
  {
    while (true)
    {
      int i = paramInputStream.read(paramArrayOfByte);
      if (i == -1)
        break;
      paramOutputStream.write(paramArrayOfByte, 0, i);
    }
  }

  public static boolean a(Context paramContext, String paramString, boolean paramBoolean)
  {
    boolean bool = paramBoolean;
    int i;
    if (paramContext != null)
    {
      Resources localResources = paramContext.getResources();
      bool = paramBoolean;
      if (localResources != null)
      {
        i = a(paramContext, paramString, "bool");
        if (i <= 0)
          break label45;
        bool = localResources.getBoolean(i);
      }
    }
    label45: 
    do
    {
      return bool;
      i = a(paramContext, paramString, "string");
      bool = paramBoolean;
    }
    while (i <= 0);
    return Boolean.parseBoolean(paramContext.getString(i));
  }

  public static long b()
  {
    try
    {
      String str;
      if (d == -1L)
      {
        str = a(new File("/proc/meminfo"), "MemTotal");
        if (TextUtils.isEmpty(str))
          break label188;
        str = str.toUpperCase(Locale.US);
      }
      while (true)
      {
        try
        {
          if (str.endsWith("KB"))
          {
            l = a(str, "KB", 1024);
            d = l;
            l = d;
            return l;
          }
          if (str.endsWith("MB"))
          {
            l = a(str, "MB", 1048576);
            continue;
          }
          if (str.endsWith("GB"))
          {
            l = a(str, "GB", 1073741824);
            continue;
          }
          f.b().a("Fabric", "Unexpected meminfo format while computing RAM: " + str);
          l = 0L;
          continue;
        }
        catch (NumberFormatException localNumberFormatException)
        {
          f.b().c("Fabric", "Unexpected meminfo format while computing RAM: " + str, localNumberFormatException);
        }
        label188: long l = 0L;
      }
    }
    finally
    {
    }
  }

  public static long b(Context paramContext)
  {
    ActivityManager.MemoryInfo localMemoryInfo = new ActivityManager.MemoryInfo();
    ((ActivityManager)paramContext.getSystemService("activity")).getMemoryInfo(localMemoryInfo);
    return localMemoryInfo.availMem;
  }

  public static long b(String paramString)
  {
    paramString = new StatFs(paramString);
    long l = paramString.getBlockSize();
    return paramString.getBlockCount() * l - paramString.getAvailableBlocks() * l;
  }

  private static String b(InputStream paramInputStream)
  {
    MessageDigest localMessageDigest;
    try
    {
      localMessageDigest = MessageDigest.getInstance("SHA-1");
      byte[] arrayOfByte = new byte[1024];
      while (true)
      {
        int i = paramInputStream.read(arrayOfByte);
        if (i == -1)
          break;
        localMessageDigest.update(arrayOfByte, 0, i);
      }
    }
    catch (Exception paramInputStream)
    {
      f.b().c("Fabric", "Could not calculate hash for app icon.", paramInputStream);
      return "";
    }
    paramInputStream = a(localMessageDigest.digest());
    return paramInputStream;
  }

  public static void b(Context paramContext, String paramString)
  {
    if (m(paramContext))
      f.b().e("Fabric", paramString);
  }

  public static float c(Context paramContext)
  {
    paramContext = paramContext.registerReceiver(null, new IntentFilter("android.intent.action.BATTERY_CHANGED"));
    int i = paramContext.getIntExtra("level", -1);
    int j = paramContext.getIntExtra("scale", -1);
    return i / j;
  }

  public static String c()
  {
    return "D";
  }

  public static void c(Context paramContext, String paramString)
  {
    if (m(paramContext))
      f.b().f("Fabric", paramString);
  }

  public static boolean c(String paramString)
  {
    return (paramString == null) || (paramString.length() == 0);
  }

  public static String d(Context paramContext, String paramString)
  {
    int i = a(paramContext, paramString, "string");
    if (i > 0)
      return paramContext.getString(i);
    return "";
  }

  public static boolean d(Context paramContext)
  {
    if (e(paramContext))
      return false;
    return ((SensorManager)paramContext.getSystemService("sensor")).getDefaultSensor(8) != null;
  }

  public static boolean e(Context paramContext)
  {
    paramContext = Settings.Secure.getString(paramContext.getContentResolver(), "android_id");
    return ("sdk".equals(Build.PRODUCT)) || ("google_sdk".equals(Build.PRODUCT)) || (paramContext == null);
  }

  public static boolean f(Context paramContext)
  {
    boolean bool = e(paramContext);
    paramContext = Build.TAGS;
    if ((!bool) && (paramContext != null) && (paramContext.contains("test-keys")));
    do
    {
      do
        return true;
      while (new File("/system/app/Superuser.apk").exists());
      paramContext = new File("/system/xbin/su");
    }
    while ((!bool) && (paramContext.exists()));
    return false;
  }

  public static int g(Context paramContext)
  {
    int k = 0;
    if (e(paramContext));
    for (int j = 1; ; j = 0)
    {
      int i = j;
      if (f(paramContext))
        i = j | 0x2;
      if (!Debug.isDebuggerConnected())
      {
        j = k;
        if (!Debug.waitingForDebugger());
      }
      else
      {
        j = 1;
      }
      k = i;
      if (j != 0)
        k = i | 0x4;
      return k;
    }
  }

  public static boolean h(Context paramContext)
  {
    return (paramContext.getApplicationInfo().flags & 0x2) != 0;
  }

  // ERROR //
  public static String i(Context paramContext)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_3
    //   2: aload_0
    //   3: invokevirtual 63	android/content/Context:getResources	()Landroid/content/res/Resources;
    //   6: aload_0
    //   7: invokestatic 522	io/fabric/sdk/android/services/b/l:j	(Landroid/content/Context;)I
    //   10: invokevirtual 526	android/content/res/Resources:openRawResource	(I)Ljava/io/InputStream;
    //   13: astore_0
    //   14: aload_0
    //   15: astore_2
    //   16: aload_0
    //   17: invokestatic 528	io/fabric/sdk/android/services/b/l:b	(Ljava/io/InputStream;)Ljava/lang/String;
    //   20: astore 4
    //   22: aload_0
    //   23: astore_2
    //   24: aload 4
    //   26: invokestatic 530	io/fabric/sdk/android/services/b/l:c	(Ljava/lang/String;)Z
    //   29: istore_1
    //   30: iload_1
    //   31: ifeq +14 -> 45
    //   34: aload_3
    //   35: astore_2
    //   36: aload_0
    //   37: ldc_w 532
    //   40: invokestatic 196	io/fabric/sdk/android/services/b/l:a	(Ljava/io/Closeable;Ljava/lang/String;)V
    //   43: aload_2
    //   44: areturn
    //   45: aload 4
    //   47: astore_2
    //   48: goto -12 -> 36
    //   51: astore_3
    //   52: aconst_null
    //   53: astore_0
    //   54: aload_0
    //   55: astore_2
    //   56: invokestatic 201	io/fabric/sdk/android/f:b	()Lio/fabric/sdk/android/r;
    //   59: ldc 203
    //   61: ldc_w 431
    //   64: aload_3
    //   65: invokeinterface 222 4 0
    //   70: aload_0
    //   71: ldc_w 532
    //   74: invokestatic 196	io/fabric/sdk/android/services/b/l:a	(Ljava/io/Closeable;Ljava/lang/String;)V
    //   77: aconst_null
    //   78: areturn
    //   79: astore_0
    //   80: aconst_null
    //   81: astore_2
    //   82: aload_2
    //   83: ldc_w 532
    //   86: invokestatic 196	io/fabric/sdk/android/services/b/l:a	(Ljava/io/Closeable;Ljava/lang/String;)V
    //   89: aload_0
    //   90: athrow
    //   91: astore_0
    //   92: goto -10 -> 82
    //   95: astore_3
    //   96: goto -42 -> 54
    //
    // Exception table:
    //   from	to	target	type
    //   2	14	51	java/lang/Exception
    //   2	14	79	finally
    //   16	22	91	finally
    //   24	30	91	finally
    //   56	70	91	finally
    //   16	22	95	java/lang/Exception
    //   24	30	95	java/lang/Exception
  }

  public static int j(Context paramContext)
  {
    return paramContext.getApplicationContext().getApplicationInfo().icon;
  }

  public static String k(Context paramContext)
  {
    String str = null;
    int j = a(paramContext, "io.fabric.android.build_id", "string");
    int i = j;
    if (j == 0)
      i = a(paramContext, "com.crashlytics.android.build_id", "string");
    if (i != 0)
    {
      str = paramContext.getResources().getString(i);
      f.b().a("Fabric", "Build ID is: " + str);
    }
    return str;
  }

  public static boolean l(Context paramContext)
  {
    int i;
    if (paramContext.checkCallingOrSelfPermission("android.permission.ACCESS_NETWORK_STATE") == 0)
      i = 1;
    while (i != 0)
    {
      paramContext = ((ConnectivityManager)paramContext.getSystemService("connectivity")).getActiveNetworkInfo();
      if ((paramContext != null) && (paramContext.isConnectedOrConnecting()))
      {
        return true;
        i = 0;
      }
      else
      {
        return false;
      }
    }
    return true;
  }

  private static boolean m(Context paramContext)
  {
    if (b == null)
      b = Boolean.valueOf(a(paramContext, "com.crashlytics.Trace", false));
    return b.booleanValue();
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     io.fabric.sdk.android.services.b.l
 * JD-Core Version:    0.6.2
 */