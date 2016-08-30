package com.baidu.android.pushservice.util;

import android.annotation.SuppressLint;
import android.app.ActivityManager;
import android.app.ActivityManager.RunningServiceInfo;
import android.app.AlarmManager;
import android.app.PendingIntent;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.content.pm.ActivityInfo;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.pm.ProviderInfo;
import android.content.pm.ResolveInfo;
import android.content.pm.ServiceInfo;
import android.content.pm.Signature;
import android.net.NetworkInfo;
import android.net.NetworkInfo.State;
import android.os.Bundle;
import android.os.Environment;
import android.os.Parcelable;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.WindowManager;
import com.baidu.android.pushservice.c.h;
import com.baidu.android.pushservice.j.c;
import com.baidu.android.pushservice.j.d;
import com.baidu.android.pushservice.j.e;
import com.baidu.android.pushservice.jni.PushSocket;
import com.baidu.android.pushservice.message.PublicMsg;
import java.io.File;
import java.io.FileOutputStream;
import java.io.FileWriter;
import java.io.IOException;
import java.io.PrintStream;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.io.UnsupportedEncodingException;
import java.math.BigInteger;
import java.net.InetAddress;
import java.net.URLEncoder;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import org.json.JSONObject;

@SuppressLint({"WorldReadableFiles"})
public final class m
{
  private static final String[] a = { "android.permission.INTERNET", "android.permission.READ_PHONE_STATE", "android.permission.ACCESS_NETWORK_STATE", "android.permission.WRITE_SETTINGS", "android.permission.VIBRATE", "android.permission.WRITE_EXTERNAL_STORAGE", "android.permission.ACCESS_COARSE_LOCATION", "android.permission.ACCESS_WIFI_STATE" };
  private static int b = -1;
  private static boolean c = false;

  private static boolean A(Context paramContext)
  {
    try
    {
      Object localObject1 = paramContext.getPackageManager();
      Object localObject2 = new ComponentName(paramContext, "com.baidu.android.pushservice.util.PushADProvider");
      new ProviderInfo();
      localObject1 = ((PackageManager)localObject1).getProviderInfo((ComponentName)localObject2, 128);
      localObject2 = ((ProviderInfo)localObject1).name;
      com.baidu.android.pushservice.h.b.c("Utility", "provider name  = " + (String)localObject2 + "  export  = " + ((ProviderInfo)localObject1).exported, paramContext.getApplicationContext());
      if (TextUtils.isEmpty((CharSequence)localObject2))
      {
        com.baidu.android.pushservice.h.b.b("Utility", "com.baidu.android.pushservice.util.PushADProvider did not declared ", paramContext.getApplicationContext());
        return false;
      }
      if (!((ProviderInfo)localObject1).exported)
      {
        com.baidu.android.pushservice.h.b.b("Utility", "com.baidu.android.pushservice.util.PushADProvider exported declared wrong ", paramContext.getApplicationContext());
        return false;
      }
    }
    catch (Exception localException)
    {
      com.baidu.android.pushservice.h.b.b("Utility", "error : " + localException.getMessage(), paramContext.getApplicationContext());
      return false;
    }
    return true;
  }

  private static boolean B(Context paramContext)
  {
    if (b == -1)
      if (!r(paramContext, "android.permission.WRITE_EXTERNAL_STORAGE"))
        break label30;
    label30: for (int i = 0; ; i = 1)
    {
      b = i;
      if (b != 0)
        break;
      return true;
    }
    return false;
  }

  public static ComponentName a(Context paramContext, Intent paramIntent, String paramString)
  {
    String str2 = v(paramContext);
    if (TextUtils.isEmpty(str2))
      return null;
    Parcelable localParcelable = paramIntent.getParcelableExtra("ad_msg");
    String str1 = "";
    if (localParcelable != null);
    while (true)
    {
      try
      {
        if ((localParcelable instanceof PublicMsg))
        {
          int i = ((PublicMsg)localParcelable).mAdvertiseStyle;
          str1 = String.valueOf(i);
          paramIntent.setClassName(str2, "com.baidu.android.pushservice.PushService");
          paramIntent.setAction("com.baidu.android.pushservice.action.adnotification.ADSHOW");
          paramIntent.putExtra("action_type", paramString);
          paramIntent.putExtra("advertisestyle", str1);
          com.baidu.android.pushservice.h.a.c("Utility", "CLICK  intent  =" + paramIntent.toString() + "  intent_extra = " + paramIntent.getExtras());
          return paramContext.startService(paramIntent);
        }
      }
      catch (Exception localException)
      {
        com.baidu.android.pushservice.h.a.a("Utility", "sendAdvertiseActionIntent>>", localException);
        continue;
      }
      str1 = "";
    }
  }

  public static PackageInfo a(Context paramContext, String paramString)
  {
    try
    {
      paramContext = paramContext.getPackageManager();
      if (paramContext == null)
        return null;
      paramContext = paramContext.getPackageInfo(paramString, 64);
      return paramContext;
    }
    catch (Exception paramContext)
    {
    }
    return null;
  }

  public static com.baidu.android.pushservice.i.m a(com.baidu.android.pushservice.i.m paramm, Context paramContext, String paramString)
  {
    PackageInfo localPackageInfo = a(paramContext, paramString);
    if (localPackageInfo != null)
    {
      paramm.e(localPackageInfo.applicationInfo.loadLabel(paramContext.getPackageManager()).toString());
      paramm.g(localPackageInfo.versionName);
      paramm.a(localPackageInfo.versionCode);
      paramm.f(l(paramContext, paramString));
      paramm.b(k(paramContext, paramString));
    }
    return paramm;
  }

  public static String a(long paramLong)
  {
    StringBuffer localStringBuffer = new StringBuffer();
    long l4 = System.currentTimeMillis() - paramLong;
    long l1 = ()Math.ceil(l4 * 1.0D / 1000.0D);
    long l2 = ()Math.ceil((float)(l4 / 60L) / 1000.0F);
    long l3 = ()Math.ceil((float)(l4 / 60L / 60L) / 1000.0F);
    l4 = ()Math.ceil((float)(l4 / 24L / 60L / 60L) / 1000.0F);
    if (l4 - 1L > 3L)
      localStringBuffer.append(new SimpleDateFormat("MM月dd日").format(new Date(paramLong)));
    while (true)
    {
      return localStringBuffer.toString();
      if (l4 - 1L > 0L)
        localStringBuffer.append(l4 + "天前");
      else if (l3 - 1L > 0L)
      {
        if (l3 >= 24L)
          localStringBuffer.append("1天前");
        else
          localStringBuffer.append(l3 + "小时前");
      }
      else if (l2 - 1L > 0L)
      {
        if (l2 == 60L)
          localStringBuffer.append("1小时前");
        else
          localStringBuffer.append(l2 + "分钟前");
      }
      else if (l1 - 1L > 0L)
      {
        if (l1 == 60L)
          localStringBuffer.append("1分钟前");
        else
          localStringBuffer.append(l1 + "秒前");
      }
      else
        localStringBuffer.append("刚刚");
    }
  }

  public static String a(Context paramContext, String paramString1, String paramString2)
  {
    if (paramContext == null)
      com.baidu.android.pushservice.h.a.b("Utility", "getMetaData context == null");
    while (true)
    {
      return null;
      try
      {
        paramContext = paramContext.getPackageManager();
        if (paramContext == null)
          continue;
        paramContext = paramContext.getApplicationInfo(paramString1, 128);
        if ((paramContext == null) || (paramContext.metaData == null))
          continue;
        return paramContext.metaData.getString(paramString2);
      }
      catch (Exception paramContext)
      {
        while (true)
        {
          com.baidu.android.pushservice.h.a.a("getMetaDataString", "--- " + paramString1 + " GetMetaData Exception:\r\n", paramContext);
          paramContext = null;
        }
      }
    }
  }

  public static String a(Throwable paramThrowable)
  {
    StringWriter localStringWriter = new StringWriter();
    PrintWriter localPrintWriter = new PrintWriter(localStringWriter, true);
    paramThrowable.printStackTrace(localPrintWriter);
    localPrintWriter.flush();
    localStringWriter.flush();
    return localStringWriter.toString();
  }

  public static void a(Context paramContext, int paramInt, String paramString1, String paramString2, String paramString3, short paramShort)
  {
    String str = v(paramContext);
    if (TextUtils.isEmpty(str))
      return;
    Intent localIntent = new Intent();
    localIntent.setClassName(str, "com.baidu.android.pushservice.PushService");
    localIntent.setAction("com.baidu.android.pushservice.action.setadswitch.ADFAILED");
    localIntent.putExtra("ad_status", paramInt);
    localIntent.putExtra("app_id", paramString1);
    localIntent.putExtra("channel_id", paramString2);
    localIntent.putExtra("cuid", paramString3);
    localIntent.putExtra("sdkversion", paramShort);
    com.baidu.android.pushservice.h.a.c("Utility", "CLICK  intent  =" + localIntent.toString() + "  intent_extra = " + localIntent.getExtras());
    paramContext.startService(localIntent);
  }

  public static void a(Context paramContext, long paramLong)
  {
    com.baidu.android.pushservice.h.a.c("Utility", ">>> setAlarmForRestart");
    paramContext = paramContext.getApplicationContext();
    Intent localIntent = l.c(paramContext);
    localIntent.setClassName(paramContext.getPackageName(), d(paramContext, paramContext.getPackageName(), localIntent.getAction()));
    a(paramContext, localIntent, paramLong);
  }

  public static void a(Context paramContext, Intent paramIntent, long paramLong)
  {
    com.baidu.android.pushservice.h.a.c("Utility", ">>> setAlarmForSendInent : \r\n" + paramIntent);
    paramIntent = PendingIntent.getBroadcast(paramContext, 0, paramIntent, 268435456);
    paramContext = (AlarmManager)paramContext.getSystemService("alarm");
    paramContext.cancel(paramIntent);
    paramContext.set(3, SystemClock.elapsedRealtime() + paramLong, paramIntent);
  }

  public static void a(Context paramContext, Intent paramIntent, String paramString1, String paramString2)
  {
    paramIntent.setFlags(32);
    if (k(paramContext, paramString2) >= 32)
    {
      if (!TextUtils.isEmpty(paramString1))
        paramIntent.setAction(paramString1);
      if (!TextUtils.isEmpty(paramString2))
      {
        paramIntent.setPackage(paramString2);
        paramIntent.setClassName(paramString2, "com.baidu.android.pushservice.CommandService");
      }
      paramIntent.putExtra("command_type", "reflect_receiver");
      try
      {
        ComponentName localComponentName = paramContext.startService(paramIntent);
        if (localComponentName != null)
          return;
      }
      catch (Exception localException)
      {
        com.baidu.android.pushservice.h.a.e("Utility", "error " + localException.getMessage());
      }
    }
    if (!TextUtils.isEmpty(paramString1))
      paramIntent.setAction(paramString1);
    if (!TextUtils.isEmpty(paramString2))
      paramIntent.setPackage(paramString2);
    paramString1 = d(paramContext, paramString2, paramString1);
    if (!TextUtils.isEmpty(paramString1))
      paramIntent.setClassName(paramString2, paramString1);
    paramContext.sendBroadcast(paramIntent);
  }

  public static void a(Context paramContext, String paramString1, String paramString2, String paramString3, String paramString4, int paramInt, String paramString5)
  {
    String str = v(paramContext);
    if (TextUtils.isEmpty(str))
      return;
    Intent localIntent = new Intent();
    localIntent.setClassName(str, "com.baidu.android.pushservice.PushService");
    localIntent.setAction("com.baidu.android.pushservice.action.ADACKERROR");
    localIntent.putExtra("app_id", paramString1);
    localIntent.putExtra("channel_id", paramString2);
    localIntent.putExtra("cuid", paramString3);
    localIntent.putExtra("ad_id", paramString4);
    localIntent.putExtra("error_code", paramInt);
    localIntent.putExtra("error_msg", paramString5);
    com.baidu.android.pushservice.h.a.c("Utility", "CLICK  intent  =" + localIntent.toString() + "  intent_extra = " + localIntent.getExtras());
    paramContext.startService(localIntent);
  }

  public static void a(Context paramContext, boolean paramBoolean1, boolean paramBoolean2)
  {
    com.baidu.android.pushservice.h.b.a("Utility", paramContext.getPackageName() + ": updateServiceInfo isForce = " + paramBoolean1 + ",isSend = " + paramBoolean2, paramContext.getApplicationContext());
    Object localObject = paramContext.getSharedPreferences("pst", 0);
    int i = d(paramContext, paramContext.getPackageName());
    SharedPreferences.Editor localEditor;
    if ((((SharedPreferences)localObject).getInt("pr_app_v", 0) < i) || (paramBoolean1))
    {
      localEditor = paramContext.getSharedPreferences(paramContext.getPackageName() + ".push_sync", 5).edit();
      if (!c(paramContext))
        break label198;
      localEditor.putLong("priority2", 0L);
    }
    while (true)
    {
      localEditor.putInt("version2", com.baidu.android.pushservice.a.a());
      localEditor.commit();
      localObject = ((SharedPreferences)localObject).edit();
      ((SharedPreferences.Editor)localObject).putInt("pr_app_v", i);
      ((SharedPreferences.Editor)localObject).commit();
      if (paramBoolean2)
        l.d(paramContext);
      return;
      label198: localEditor.putLong("priority2", j(paramContext));
    }
  }

  public static void a(String paramString, Context paramContext)
  {
    do
      try
      {
        boolean bool = B(paramContext);
        if (!bool);
        while (true)
        {
          return;
          if (com.baidu.android.pushservice.a.b() <= 0)
            break;
          b(paramString, paramContext);
        }
      }
      finally
      {
      }
    while (!com.baidu.android.pushservice.a.a(paramContext));
    paramContext = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(new Date());
    paramString = paramContext + " " + paramString + "\n\r";
    while (true)
    {
      int i;
      try
      {
        Object localObject1 = Environment.getExternalStorageDirectory().getAbsolutePath();
        Object localObject2 = new File((String)localObject1, "baidu/pushservice/files");
        if (!((File)localObject2).exists())
          ((File)localObject2).mkdirs();
        paramContext = new SimpleDateFormat("yyyyMMdd");
        Date localDate = new Date();
        String str1 = paramContext.format(localDate);
        localObject1 = new File((String)localObject1, "baidu/pushservice/files/msg" + str1 + ".log");
        if (!((File)localObject1).exists())
        {
          localObject2 = ((File)localObject2).listFiles();
          int j = localObject2.length;
          i = 0;
          if (i < j)
          {
            str1 = localObject2[i];
            String str2 = str1.getName();
            if ((!str2.startsWith("msg")) || (str2.length() <= 0) || ((int)Math.abs((paramContext.parse(str2.substring(3, 11)).getTime() - localDate.getTime()) / 86400000L) < 7))
              break label348;
            str1.delete();
            break label348;
          }
        }
        paramContext = new FileWriter((File)localObject1, true);
        paramContext.write(paramString);
        paramContext.close();
      }
      catch (Exception paramString)
      {
        com.baidu.android.pushservice.h.a.e("Utility", "error : " + paramString.getMessage());
      }
      break;
      label348: i += 1;
    }
  }

  private static void a(String paramString1, String paramString2)
  {
    int i = 0;
    try
    {
      String str2 = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss", Locale.getDefault()).format(new Date());
      String str1 = new String();
      if (str2.length() > 0)
        str1 = str2.substring(0, 4).concat(str2.substring(5, 7)).concat(str2.substring(8, 10));
      paramString2 = str2 + " " + paramString2 + "\n\r";
      try
      {
        str2 = Environment.getExternalStorageDirectory().getAbsolutePath();
        Object localObject1 = new File(str2, "baidu/pushservice/files");
        if (!((File)localObject1).exists())
          ((File)localObject1).mkdirs();
        while (true)
        {
          paramString1 = new FileOutputStream(new File(str2, "baidu/pushservice/files/" + paramString1 + str1 + ".log"), true);
          paramString1.write(paramString2.getBytes());
          paramString1.close();
          return;
          SimpleDateFormat localSimpleDateFormat = new SimpleDateFormat("yyyyMMdd", Locale.getDefault());
          localObject1 = ((File)localObject1).listFiles();
          int j = localObject1.length;
          while (i < j)
          {
            Object localObject2 = localObject1[i];
            if ((localObject2.getName().startsWith(paramString1)) && (Integer.parseInt(str1) - Integer.parseInt(localSimpleDateFormat.format(Long.valueOf(localObject2.lastModified()))) >= 7))
              localObject2.delete();
            i += 1;
          }
        }
      }
      catch (Exception paramString1)
      {
        while (true)
          com.baidu.android.pushservice.h.a.e("Utility", "error " + paramString1.getMessage());
      }
    }
    finally
    {
    }
    throw paramString1;
  }

  // ERROR //
  public static void a(java.util.HashMap<String, Integer> paramHashMap)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 4
    //   3: aconst_null
    //   4: astore_3
    //   5: new 543	java/io/File
    //   8: dup
    //   9: invokestatic 541	android/os/Environment:getExternalStorageDirectory	()Ljava/io/File;
    //   12: invokevirtual 546	java/io/File:getAbsolutePath	()Ljava/lang/String;
    //   15: ldc_w 655
    //   18: invokespecial 550	java/io/File:<init>	(Ljava/lang/String;Ljava/lang/String;)V
    //   21: astore_1
    //   22: aload_1
    //   23: invokevirtual 553	java/io/File:exists	()Z
    //   26: ifne +8 -> 34
    //   29: aload_1
    //   30: invokevirtual 556	java/io/File:mkdirs	()Z
    //   33: pop
    //   34: new 624	java/io/FileOutputStream
    //   37: dup
    //   38: new 543	java/io/File
    //   41: dup
    //   42: aload_1
    //   43: ldc_w 657
    //   46: invokespecial 660	java/io/File:<init>	(Ljava/io/File;Ljava/lang/String;)V
    //   49: invokespecial 663	java/io/FileOutputStream:<init>	(Ljava/io/File;)V
    //   52: astore_1
    //   53: new 665	java/io/ObjectOutputStream
    //   56: dup
    //   57: aload_1
    //   58: invokespecial 668	java/io/ObjectOutputStream:<init>	(Ljava/io/OutputStream;)V
    //   61: astore_2
    //   62: aload_2
    //   63: aload_0
    //   64: invokevirtual 672	java/io/ObjectOutputStream:writeObject	(Ljava/lang/Object;)V
    //   67: aload_2
    //   68: invokevirtual 673	java/io/ObjectOutputStream:close	()V
    //   71: aload_1
    //   72: invokevirtual 635	java/io/FileOutputStream:close	()V
    //   75: return
    //   76: astore_0
    //   77: ldc 74
    //   79: aload_0
    //   80: invokestatic 676	com/baidu/android/pushservice/h/a:a	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   83: goto -12 -> 71
    //   86: astore_0
    //   87: ldc 74
    //   89: aload_0
    //   90: invokestatic 676	com/baidu/android/pushservice/h/a:a	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   93: return
    //   94: astore_2
    //   95: aconst_null
    //   96: astore_0
    //   97: aload_3
    //   98: astore_1
    //   99: ldc 74
    //   101: aload_2
    //   102: invokestatic 676	com/baidu/android/pushservice/h/a:a	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   105: aload_1
    //   106: ifnull +7 -> 113
    //   109: aload_1
    //   110: invokevirtual 673	java/io/ObjectOutputStream:close	()V
    //   113: aload_0
    //   114: ifnull -39 -> 75
    //   117: aload_0
    //   118: invokevirtual 635	java/io/FileOutputStream:close	()V
    //   121: return
    //   122: astore_0
    //   123: ldc 74
    //   125: aload_0
    //   126: invokestatic 676	com/baidu/android/pushservice/h/a:a	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   129: return
    //   130: astore_1
    //   131: ldc 74
    //   133: aload_1
    //   134: invokestatic 676	com/baidu/android/pushservice/h/a:a	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   137: goto -24 -> 113
    //   140: astore_0
    //   141: aconst_null
    //   142: astore_1
    //   143: aload 4
    //   145: astore_2
    //   146: aload_2
    //   147: ifnull +7 -> 154
    //   150: aload_2
    //   151: invokevirtual 673	java/io/ObjectOutputStream:close	()V
    //   154: aload_1
    //   155: ifnull +7 -> 162
    //   158: aload_1
    //   159: invokevirtual 635	java/io/FileOutputStream:close	()V
    //   162: aload_0
    //   163: athrow
    //   164: astore_2
    //   165: ldc 74
    //   167: aload_2
    //   168: invokestatic 676	com/baidu/android/pushservice/h/a:a	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   171: goto -17 -> 154
    //   174: astore_1
    //   175: ldc 74
    //   177: aload_1
    //   178: invokestatic 676	com/baidu/android/pushservice/h/a:a	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   181: goto -19 -> 162
    //   184: astore_0
    //   185: aload 4
    //   187: astore_2
    //   188: goto -42 -> 146
    //   191: astore_0
    //   192: goto -46 -> 146
    //   195: astore_2
    //   196: aload_0
    //   197: astore_3
    //   198: aload_2
    //   199: astore_0
    //   200: aload_1
    //   201: astore_2
    //   202: aload_3
    //   203: astore_1
    //   204: goto -58 -> 146
    //   207: astore_2
    //   208: aload_1
    //   209: astore_0
    //   210: aload_3
    //   211: astore_1
    //   212: goto -113 -> 99
    //   215: astore 4
    //   217: aload_2
    //   218: astore_0
    //   219: aload_1
    //   220: astore_3
    //   221: aload 4
    //   223: astore_2
    //   224: aload_0
    //   225: astore_1
    //   226: aload_3
    //   227: astore_0
    //   228: goto -129 -> 99
    //
    // Exception table:
    //   from	to	target	type
    //   67	71	76	java/lang/Exception
    //   71	75	86	java/lang/Exception
    //   5	34	94	java/lang/Exception
    //   34	53	94	java/lang/Exception
    //   117	121	122	java/lang/Exception
    //   109	113	130	java/lang/Exception
    //   5	34	140	finally
    //   34	53	140	finally
    //   150	154	164	java/lang/Exception
    //   158	162	174	java/lang/Exception
    //   53	62	184	finally
    //   62	67	191	finally
    //   99	105	195	finally
    //   53	62	207	java/lang/Exception
    //   62	67	215	java/lang/Exception
  }

  public static boolean a()
  {
    return Environment.getExternalStorageState().equals("mounted");
  }

  private static boolean a(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    int i = Calendar.getInstance(Locale.CHINA).get(11);
    int j = Calendar.getInstance(Locale.CHINA).get(12);
    if (paramInt1 < paramInt3)
    {
      if ((paramInt1 < i) && (i < paramInt3));
      while (((i == paramInt1) && (j >= paramInt2)) || ((i == paramInt3) && (j <= paramInt4)))
        return true;
    }
    label121: 
    do
    {
      do
      {
        return false;
        if (paramInt1 <= paramInt3)
          break label121;
        if (((i > paramInt1) && (i < 24)) || (i < paramInt3) || ((i == paramInt1) && (j >= paramInt2)))
          break;
      }
      while ((i != paramInt3) || (j > paramInt4));
      return true;
    }
    while ((paramInt1 != i) || (j < paramInt2) || (paramInt4 < j));
    return true;
  }

  @SuppressLint({"SdCardPath"})
  public static boolean a(Context paramContext)
  {
    File localFile = new File("/data/data/root");
    try
    {
      localFile.createNewFile();
      if (localFile.exists())
        localFile.delete();
      return true;
    }
    catch (IOException localIOException)
    {
      while ((a(paramContext, "com.noshufou.android.su") != null) || (a(paramContext, "com.miui.uac") != null));
    }
    return false;
  }

  private static boolean a(Context paramContext, String paramString1, String paramString2, boolean paramBoolean)
  {
    paramString1 = new Intent(paramString1);
    paramString1.setPackage(paramContext.getPackageName());
    try
    {
      Object localObject = paramContext.getPackageManager();
      if (localObject == null)
        return false;
      if (paramBoolean)
      {
        paramContext = ((PackageManager)localObject).queryBroadcastReceivers(paramString1, 544);
        if (paramContext.size() <= 0)
          return false;
        paramContext = paramContext.iterator();
        do
          if (!paramContext.hasNext())
            break;
        while (!paramString2.equals(((ResolveInfo)paramContext.next()).activityInfo.name));
        return true;
      }
      paramString1 = ((PackageManager)localObject).queryIntentServices(paramString1, 544);
      if (paramString1.size() <= 0)
        return false;
      paramString1 = paramString1.iterator();
      while (paramString1.hasNext())
      {
        localObject = (ResolveInfo)paramString1.next();
        if (paramString2.equals(((ResolveInfo)localObject).serviceInfo.name))
        {
          int i = v(paramContext, paramString2);
          if (!((ResolveInfo)localObject).serviceInfo.exported)
            return false;
          if (i != 1)
          {
            if (i == 0)
            {
              paramBoolean = ((ResolveInfo)localObject).serviceInfo.enabled;
              if (!paramBoolean)
                break;
            }
          }
          else
            return true;
        }
      }
    }
    catch (Exception paramContext)
    {
      com.baidu.android.pushservice.h.a.e("Utility", "error  " + paramContext.getMessage());
    }
    return false;
  }

  public static boolean a(Context paramContext, String paramString, boolean paramBoolean)
  {
    if (!PushSocket.a())
    {
      com.baidu.android.pushservice.h.b.b("Utility", "check socket library failed", paramContext.getApplicationContext());
      return false;
    }
    if (!b(paramContext, paramBoolean))
    {
      com.baidu.android.pushservice.h.b.b("Utility", "check SDK AndroidManifest failed", paramContext.getApplicationContext());
      return false;
    }
    if (!a(paramString))
    {
      com.baidu.android.pushservice.h.b.b("Utility", "check Apikey failed", paramContext.getApplicationContext());
      return false;
    }
    if (!l(paramContext))
    {
      com.baidu.android.pushservice.h.b.b("Utility", "check SelfConfiged Reciver failed", paramContext.getApplicationContext());
      return false;
    }
    if (!m(paramContext))
    {
      com.baidu.android.pushservice.h.b.b("Utility", "check CommandService Enable failed", paramContext.getApplicationContext());
      return false;
    }
    if ((paramBoolean) && (!A(paramContext)))
    {
      com.baidu.android.pushservice.h.b.b("Utility", "check ContentProvider Enable failed", paramContext.getApplicationContext());
      return false;
    }
    return true;
  }

  static boolean a(Context paramContext, boolean paramBoolean)
  {
    try
    {
      PackageManager localPackageManager = paramContext.getPackageManager();
      if (localPackageManager == null)
        return false;
      paramContext = localPackageManager.getPackageInfo(paramContext.getPackageName(), 4096).requestedPermissions;
      if (paramContext == null)
      {
        com.baidu.android.pushservice.h.a.e("Utility", "Permissions Push-SDK need are not exist !");
        return false;
      }
    }
    catch (Exception paramContext)
    {
      com.baidu.android.pushservice.h.a.e("Utility", "error " + paramContext.getMessage());
      return false;
    }
    if ((paramBoolean) && (!a("android.permission.EXPAND_STATUS_BAR", paramContext)))
    {
      com.baidu.android.pushservice.h.a.e("Utility", "android.permission.EXPAND_STATUS_BAR permission Push-SDK  EXPAND_STATUS_BAR need is not exist !");
      return false;
    }
    while (true)
    {
      int i;
      if (i < a.length)
      {
        if (!a(a[i], paramContext))
        {
          com.baidu.android.pushservice.h.a.e("Utility", a[i] + " permission Push-SDK need is not exist !");
          return false;
        }
        i += 1;
      }
      else
      {
        return true;
        i = 0;
      }
    }
  }

  public static boolean a(String paramString)
  {
    if ((TextUtils.isEmpty(paramString)) || (paramString.contains(" ")))
    {
      com.baidu.android.pushservice.h.a.d("Utility", "api_key incorrect ");
      return false;
    }
    return true;
  }

  static boolean a(String paramString, String[] paramArrayOfString)
  {
    boolean bool2 = false;
    int i = 0;
    while (true)
    {
      boolean bool1 = bool2;
      if (i < paramArrayOfString.length)
      {
        if (paramString.equals(paramArrayOfString[i]))
          bool1 = true;
      }
      else
        return bool1;
      i += 1;
    }
  }

  public static byte[] a(byte[] paramArrayOfByte1, byte[] paramArrayOfByte2)
  {
    byte[] arrayOfByte = new byte[paramArrayOfByte1.length + paramArrayOfByte2.length];
    System.arraycopy(paramArrayOfByte1, 0, arrayOfByte, 0, paramArrayOfByte1.length);
    System.arraycopy(paramArrayOfByte2, 0, arrayOfByte, paramArrayOfByte1.length, paramArrayOfByte2.length);
    return arrayOfByte;
  }

  public static ComponentName b(Context paramContext, Intent paramIntent, String paramString1, String paramString2)
  {
    paramIntent.setFlags(32);
    ComponentName localComponentName = null;
    if (k(paramContext, paramString2) >= 36)
    {
      if (!TextUtils.isEmpty(paramString1))
        paramIntent.setAction(paramString1);
      if (!TextUtils.isEmpty(paramString2))
        paramIntent.setClassName(paramString2, "com.baidu.android.pushservice.CommandService");
      paramIntent.putExtra("command_type", "reflect_receiver");
    }
    try
    {
      localComponentName = paramContext.startService(paramIntent);
      return localComponentName;
    }
    catch (Exception paramContext)
    {
      com.baidu.android.pushservice.h.a.e("Utility", "error " + paramContext.getMessage());
    }
    return null;
  }

  public static String b(String paramString)
  {
    if (!TextUtils.isDigitsOnly(paramString))
      return "0";
    paramString = new BigInteger(paramString);
    if (!paramString.and(new BigInteger("0800000000000000", 16)).equals(BigInteger.ZERO))
    {
      System.out.println("encode =  1");
      paramString = paramString.xor(new BigInteger("22727017042830095"));
    }
    for (paramString = paramString.and(new BigInteger("000000ff00000000", 16)).shiftLeft(16).add(paramString.and(new BigInteger("000000000000ffff", 16)).shiftLeft(32)).add(paramString.and(new BigInteger("00ffff0000000000", 16)).shiftRight(24).and(new BigInteger("00000000ffff0000", 16))).add(paramString.and(new BigInteger("00000000ffff0000", 16)).shiftRight(16)).add(paramString.and(new BigInteger("ff00000000000000", 16))); ; paramString = paramString.and(new BigInteger("00ff0000", 16)).shiftLeft(8).add(paramString.and(new BigInteger("000000ff", 16)).shiftLeft(16)).add(paramString.and(new BigInteger("ff000000", 16)).shiftRight(16).and(new BigInteger("0000ff00", 16))).add(paramString.and(new BigInteger("0000ff00", 16)).shiftRight(8)))
    {
      return paramString.toString();
      paramString = paramString.xor(new BigInteger("282335"));
    }
  }

  // ERROR //
  public static java.util.HashMap<String, Integer> b()
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_3
    //   2: new 543	java/io/File
    //   5: dup
    //   6: invokestatic 541	android/os/Environment:getExternalStorageDirectory	()Ljava/io/File;
    //   9: invokevirtual 546	java/io/File:getAbsolutePath	()Ljava/lang/String;
    //   12: ldc_w 655
    //   15: invokespecial 550	java/io/File:<init>	(Ljava/lang/String;Ljava/lang/String;)V
    //   18: astore_0
    //   19: aload_0
    //   20: invokevirtual 553	java/io/File:exists	()Z
    //   23: ifne +5 -> 28
    //   26: aconst_null
    //   27: areturn
    //   28: new 543	java/io/File
    //   31: dup
    //   32: aload_0
    //   33: ldc_w 657
    //   36: invokespecial 660	java/io/File:<init>	(Ljava/io/File;Ljava/lang/String;)V
    //   39: astore_0
    //   40: aload_0
    //   41: invokevirtual 553	java/io/File:exists	()Z
    //   44: ifeq +198 -> 242
    //   47: new 895	java/io/FileInputStream
    //   50: dup
    //   51: aload_0
    //   52: invokespecial 896	java/io/FileInputStream:<init>	(Ljava/io/File;)V
    //   55: astore_1
    //   56: new 898	java/io/ObjectInputStream
    //   59: dup
    //   60: aload_1
    //   61: invokespecial 901	java/io/ObjectInputStream:<init>	(Ljava/io/InputStream;)V
    //   64: astore_0
    //   65: aload_0
    //   66: astore_3
    //   67: aload_1
    //   68: astore_2
    //   69: aload_0
    //   70: invokevirtual 904	java/io/ObjectInputStream:readObject	()Ljava/lang/Object;
    //   73: checkcast 906	java/util/HashMap
    //   76: astore 4
    //   78: aload_0
    //   79: invokevirtual 907	java/io/ObjectInputStream:close	()V
    //   82: aload_1
    //   83: invokevirtual 908	java/io/FileInputStream:close	()V
    //   86: aload 4
    //   88: astore_0
    //   89: aload_0
    //   90: areturn
    //   91: astore_0
    //   92: ldc 74
    //   94: aload_0
    //   95: invokestatic 676	com/baidu/android/pushservice/h/a:a	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   98: goto -16 -> 82
    //   101: astore_0
    //   102: ldc 74
    //   104: aload_0
    //   105: invokestatic 676	com/baidu/android/pushservice/h/a:a	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   108: aload 4
    //   110: astore_0
    //   111: goto -22 -> 89
    //   114: astore 4
    //   116: aconst_null
    //   117: astore_0
    //   118: aconst_null
    //   119: astore_1
    //   120: aload_0
    //   121: astore_3
    //   122: aload_1
    //   123: astore_2
    //   124: ldc 74
    //   126: aload 4
    //   128: invokestatic 676	com/baidu/android/pushservice/h/a:a	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   131: aload_0
    //   132: ifnull +7 -> 139
    //   135: aload_0
    //   136: invokevirtual 907	java/io/ObjectInputStream:close	()V
    //   139: aload_1
    //   140: ifnull +97 -> 237
    //   143: aload_1
    //   144: invokevirtual 908	java/io/FileInputStream:close	()V
    //   147: aconst_null
    //   148: astore_0
    //   149: goto -60 -> 89
    //   152: astore_0
    //   153: ldc 74
    //   155: aload_0
    //   156: invokestatic 676	com/baidu/android/pushservice/h/a:a	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   159: goto -20 -> 139
    //   162: astore_0
    //   163: ldc 74
    //   165: aload_0
    //   166: invokestatic 676	com/baidu/android/pushservice/h/a:a	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   169: aconst_null
    //   170: astore_0
    //   171: goto -82 -> 89
    //   174: astore_0
    //   175: aconst_null
    //   176: astore_1
    //   177: aload_3
    //   178: ifnull +7 -> 185
    //   181: aload_3
    //   182: invokevirtual 907	java/io/ObjectInputStream:close	()V
    //   185: aload_1
    //   186: ifnull +7 -> 193
    //   189: aload_1
    //   190: invokevirtual 908	java/io/FileInputStream:close	()V
    //   193: aload_0
    //   194: athrow
    //   195: astore_2
    //   196: ldc 74
    //   198: aload_2
    //   199: invokestatic 676	com/baidu/android/pushservice/h/a:a	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   202: goto -17 -> 185
    //   205: astore_1
    //   206: ldc 74
    //   208: aload_1
    //   209: invokestatic 676	com/baidu/android/pushservice/h/a:a	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   212: goto -19 -> 193
    //   215: astore_0
    //   216: goto -39 -> 177
    //   219: astore_0
    //   220: aload_2
    //   221: astore_1
    //   222: goto -45 -> 177
    //   225: astore 4
    //   227: aconst_null
    //   228: astore_0
    //   229: goto -109 -> 120
    //   232: astore 4
    //   234: goto -114 -> 120
    //   237: aconst_null
    //   238: astore_0
    //   239: goto -150 -> 89
    //   242: aconst_null
    //   243: areturn
    //
    // Exception table:
    //   from	to	target	type
    //   78	82	91	java/lang/Exception
    //   82	86	101	java/lang/Exception
    //   2	26	114	java/lang/Exception
    //   28	56	114	java/lang/Exception
    //   135	139	152	java/lang/Exception
    //   143	147	162	java/lang/Exception
    //   2	26	174	finally
    //   28	56	174	finally
    //   181	185	195	java/lang/Exception
    //   189	193	205	java/lang/Exception
    //   56	65	215	finally
    //   69	78	219	finally
    //   124	131	219	finally
    //   56	65	225	java/lang/Exception
    //   69	78	232	java/lang/Exception
  }

  private static void b(String paramString, Context paramContext)
  {
    if (paramContext != null)
    {
      String str1;
      String str2;
      int i;
      try
      {
        str1 = "samonitor" + d.a(paramContext);
        str2 = s(paramContext);
        i = t(paramContext);
        if (c)
          break label154;
        Object localObject = q(paramContext);
        paramContext = new StringBuffer();
        localObject = ((ArrayList)localObject).iterator();
        while (((Iterator)localObject).hasNext())
        {
          String str3 = (String)((Iterator)localObject).next();
          paramContext.append(str3 + ";");
        }
      }
      finally
      {
      }
      a(str1, "#AllPackagesUsingPush:" + paramContext.toString());
      c = true;
      label154: a(str1, "#IMEI:" + null + "#networkType:" + str2 + "#mobileType:" + i + "#" + paramString);
    }
  }

  public static boolean b(Context paramContext, String paramString)
  {
    try
    {
      paramContext = paramContext.getPackageManager();
      if (paramContext == null)
        return false;
      int i = paramContext.getApplicationInfo(paramString, 0).flags;
      if ((i & 0x1) != 0)
        return true;
    }
    catch (Exception paramContext)
    {
      com.baidu.android.pushservice.h.a.e("Utility", "error " + paramContext.getMessage());
    }
    return false;
  }

  public static boolean b(Context paramContext, String paramString1, String paramString2)
  {
    try
    {
      paramContext = paramContext.getPackageManager();
      if (paramContext == null)
        return false;
      paramContext = paramContext.getApplicationInfo(paramString1, 128);
      if ((paramContext != null) && (paramContext.metaData != null))
        return paramContext.metaData.getBoolean(paramString2);
    }
    catch (Exception paramContext)
    {
      while (true)
      {
        com.baidu.android.pushservice.h.a.a("getMetaDataBoolean", "--- " + paramString1 + " GetMetaData Exception:\r\n", paramContext);
        paramContext = null;
      }
    }
    return false;
  }

  public static boolean b(Context paramContext, boolean paramBoolean)
  {
    com.baidu.android.pushservice.h.a.c("Utility", "check PushService AndroidManifest declearation !");
    if (!a(paramContext, paramBoolean));
    while ((!c(paramContext, paramBoolean)) || (!z(paramContext)))
      return false;
    return true;
  }

  public static int[] b(Context paramContext)
  {
    DisplayMetrics localDisplayMetrics = new DisplayMetrics();
    ((WindowManager)paramContext.getSystemService("window")).getDefaultDisplay().getMetrics(localDisplayMetrics);
    return new int[] { localDisplayMetrics.heightPixels, localDisplayMetrics.widthPixels };
  }

  public static int c(String paramString)
  {
    try
    {
      l = Long.parseLong(paramString);
      return (int)l;
    }
    catch (Exception localException)
    {
      long l;
      String str = paramString;
      try
      {
        if (paramString.length() > 0)
          str = paramString.substring(1);
        l = Long.parseLong(str);
        return (int)l;
      }
      catch (Exception paramString)
      {
        com.baidu.android.pushservice.h.a.d("Utility", "exception " + paramString.getMessage());
      }
    }
    return 0;
  }

  public static long c()
  {
    try
    {
      Calendar localCalendar = Calendar.getInstance();
      localCalendar.set(11, 0);
      localCalendar.set(12, 0);
      localCalendar.set(13, 0);
      localCalendar.set(14, 0);
      long l = localCalendar.getTime().getTime();
      return l;
    }
    catch (Exception localException)
    {
      com.baidu.android.pushservice.h.a.e("Utility", "error " + localException.getMessage());
    }
    return 0L;
  }

  public static String c(Context paramContext, String paramString1, String paramString2)
  {
    paramContext = c.a(paramContext);
    if ((TextUtils.isEmpty(paramContext)) || (TextUtils.isEmpty(paramString1)) || (TextUtils.isEmpty(paramString2)))
      return "";
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append(paramContext).append("#");
    localStringBuilder.append(paramString2).append("#");
    localStringBuilder.append(paramString1);
    paramContext = localStringBuilder.toString();
    if (!TextUtils.isEmpty(paramContext));
    while (true)
      try
      {
        paramString1 = new String(com.baidu.android.pushservice.j.b.a(paramContext.getBytes(), "utf-8"));
        paramContext = paramString1;
        try
        {
          paramContext = URLEncoder.encode(paramContext, "utf-8");
          com.baidu.android.pushservice.h.a.c("Utility", "+++++++++++++++++++++ push token is " + paramContext);
          return paramContext;
        }
        catch (UnsupportedEncodingException paramContext)
        {
          com.baidu.android.pushservice.h.a.e("Utility", "error " + paramContext.getMessage());
          return "";
        }
      }
      catch (Exception paramString1)
      {
        com.baidu.android.pushservice.h.a.e("Utility", "error = " + paramString1.getMessage());
      }
  }

  public static boolean c(Context paramContext)
  {
    String str = com.baidu.android.pushservice.a.c(paramContext);
    boolean bool;
    if ("enabled".equals(str))
      bool = false;
    while (true)
    {
      com.baidu.android.pushservice.h.a.b("Utility", "--- isDisableService : " + bool);
      return bool;
      if ("disabled".equals(str))
        bool = true;
      else
        bool = b(paramContext, paramContext.getPackageName(), "DisableService");
    }
  }

  public static boolean c(Context paramContext, String paramString)
  {
    if ((paramContext == null) || (TextUtils.isEmpty(paramString)))
      return false;
    try
    {
      paramContext.getPackageManager().getApplicationInfo(paramString, 8192);
      return true;
    }
    catch (Exception paramContext)
    {
    }
    return false;
  }

  private static boolean c(Context paramContext, boolean paramBoolean)
  {
    if (paramBoolean)
    {
      if (!a(paramContext, "com.baidu.android.pushservice.action.advertise.notification.SHOW", "com.baidu.android.pushservice.PushServiceReceiver", true))
      {
        com.baidu.android.pushservice.h.a.e("Utility", "com.baidu.android.pushservice.PushServiceReceiver did not declaredcom.baidu.android.pushservice.action.advertise.notification.SHOW");
        return false;
      }
      if (!a(paramContext, "com.baidu.android.pushservice.action.adnotification.ADCLICK", "com.baidu.android.pushservice.PushServiceReceiver", true))
      {
        com.baidu.android.pushservice.h.a.e("Utility", "com.baidu.android.pushservice.PushServiceReceiver did not declaredcom.baidu.android.pushservice.action.adnotification.ADCLICK");
        return false;
      }
      if (!a(paramContext, "com.baidu.android.pushservice.action.adnotification.ADDELETE", "com.baidu.android.pushservice.PushServiceReceiver", true))
      {
        com.baidu.android.pushservice.h.a.e("Utility", "com.baidu.android.pushservice.PushServiceReceiver did not declaredcom.baidu.android.pushservice.action.adnotification.ADDELETE");
        return false;
      }
    }
    if (!a(paramContext, "com.baidu.android.pushservice.action.notification.SHOW", "com.baidu.android.pushservice.PushServiceReceiver", true))
    {
      com.baidu.android.pushservice.h.a.e("Utility", "com.baidu.android.pushservice.PushServiceReceiver did not declaredcom.baidu.android.pushservice.action.notification.SHOW");
      return false;
    }
    if (!a(paramContext, "android.net.conn.CONNECTIVITY_CHANGE", "com.baidu.android.pushservice.PushServiceReceiver", true))
    {
      com.baidu.android.pushservice.h.a.e("Utility", "com.baidu.android.pushservice.PushServiceReceiver did not declaredandroid.net.conn.CONNECTIVITY_CHANGE");
      return false;
    }
    if (!a(paramContext, "com.baidu.android.pushservice.action.BIND_SYNC", "com.baidu.android.pushservice.RegistrationReceiver", true))
    {
      com.baidu.android.pushservice.h.a.e("Utility", "com.baidu.android.pushservice.RegistrationReceiver did not declaredcom.baidu.android.pushservice.action.BIND_SYNC");
      return false;
    }
    if (!a(paramContext, "com.baidu.android.pushservice.action.METHOD", "com.baidu.android.pushservice.RegistrationReceiver", true))
    {
      com.baidu.android.pushservice.h.a.e("Utility", "com.baidu.android.pushservice.PushServiceReceiver did not declaredcom.baidu.android.pushservice.action.notification.SHOW");
      return false;
    }
    return true;
  }

  public static int d(Context paramContext, String paramString)
  {
    paramContext = a(paramContext, paramString);
    if (paramContext != null)
      return paramContext.versionCode;
    return 0;
  }

  // ERROR //
  private static int d(String paramString)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 5
    //   3: aconst_null
    //   4: astore 4
    //   6: invokestatic 1078	java/lang/Runtime:getRuntime	()Ljava/lang/Runtime;
    //   9: new 76	java/lang/StringBuilder
    //   12: dup
    //   13: ldc_w 1080
    //   16: invokespecial 81	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   19: aload_0
    //   20: invokevirtual 85	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   23: invokevirtual 97	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   26: invokevirtual 1084	java/lang/Runtime:exec	(Ljava/lang/String;)Ljava/lang/Process;
    //   29: astore 6
    //   31: aload 6
    //   33: astore 4
    //   35: new 1086	java/io/BufferedReader
    //   38: dup
    //   39: new 1088	java/io/InputStreamReader
    //   42: dup
    //   43: aload 4
    //   45: invokevirtual 1094	java/lang/Process:getInputStream	()Ljava/io/InputStream;
    //   48: invokespecial 1095	java/io/InputStreamReader:<init>	(Ljava/io/InputStream;)V
    //   51: invokespecial 1098	java/io/BufferedReader:<init>	(Ljava/io/Reader;)V
    //   54: astore 6
    //   56: new 17	java/lang/String
    //   59: dup
    //   60: invokespecial 619	java/lang/String:<init>	()V
    //   63: pop
    //   64: iconst_0
    //   65: istore_1
    //   66: aload 6
    //   68: invokevirtual 1101	java/io/BufferedReader:readLine	()Ljava/lang/String;
    //   71: astore 5
    //   73: aload 5
    //   75: ifnull +68 -> 143
    //   78: iload_1
    //   79: iconst_1
    //   80: iadd
    //   81: istore_2
    //   82: aload 5
    //   84: new 76	java/lang/StringBuilder
    //   87: dup
    //   88: ldc_w 1103
    //   91: invokespecial 81	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   94: aload_0
    //   95: invokevirtual 85	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   98: invokevirtual 97	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   101: invokevirtual 813	java/lang/String:contains	(Ljava/lang/CharSequence;)Z
    //   104: istore_3
    //   105: iload_3
    //   106: ifeq +30 -> 136
    //   109: aload 6
    //   111: invokevirtual 1104	java/io/BufferedReader:close	()V
    //   114: aload 4
    //   116: ifnull +8 -> 124
    //   119: aload 4
    //   121: invokevirtual 1107	java/lang/Process:destroy	()V
    //   124: iconst_0
    //   125: ireturn
    //   126: astore_0
    //   127: ldc 74
    //   129: aload_0
    //   130: invokestatic 676	com/baidu/android/pushservice/h/a:a	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   133: goto -19 -> 114
    //   136: iload_2
    //   137: istore_1
    //   138: iload_2
    //   139: iconst_3
    //   140: if_icmple -74 -> 66
    //   143: aload 6
    //   145: invokevirtual 1104	java/io/BufferedReader:close	()V
    //   148: aload 4
    //   150: ifnull +8 -> 158
    //   153: aload 4
    //   155: invokevirtual 1107	java/lang/Process:destroy	()V
    //   158: iconst_m1
    //   159: ireturn
    //   160: astore_0
    //   161: ldc 74
    //   163: aload_0
    //   164: invokestatic 676	com/baidu/android/pushservice/h/a:a	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   167: goto -19 -> 148
    //   170: astore 5
    //   172: aconst_null
    //   173: astore_0
    //   174: ldc 74
    //   176: aload 5
    //   178: invokestatic 676	com/baidu/android/pushservice/h/a:a	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   181: aload_0
    //   182: ifnull +7 -> 189
    //   185: aload_0
    //   186: invokevirtual 1104	java/io/BufferedReader:close	()V
    //   189: aload 4
    //   191: ifnull +8 -> 199
    //   194: aload 4
    //   196: invokevirtual 1107	java/lang/Process:destroy	()V
    //   199: iconst_1
    //   200: ireturn
    //   201: astore_0
    //   202: ldc 74
    //   204: aload_0
    //   205: invokestatic 676	com/baidu/android/pushservice/h/a:a	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   208: goto -19 -> 189
    //   211: astore_0
    //   212: aconst_null
    //   213: astore 4
    //   215: aload 5
    //   217: ifnull +8 -> 225
    //   220: aload 5
    //   222: invokevirtual 1104	java/io/BufferedReader:close	()V
    //   225: aload 4
    //   227: ifnull +8 -> 235
    //   230: aload 4
    //   232: invokevirtual 1107	java/lang/Process:destroy	()V
    //   235: aload_0
    //   236: athrow
    //   237: astore 5
    //   239: ldc 74
    //   241: aload 5
    //   243: invokestatic 676	com/baidu/android/pushservice/h/a:a	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   246: goto -21 -> 225
    //   249: astore_0
    //   250: goto -35 -> 215
    //   253: astore_0
    //   254: aload 6
    //   256: astore 5
    //   258: goto -43 -> 215
    //   261: astore 6
    //   263: aload_0
    //   264: astore 5
    //   266: aload 6
    //   268: astore_0
    //   269: goto -54 -> 215
    //   272: astore 5
    //   274: aconst_null
    //   275: astore_0
    //   276: goto -102 -> 174
    //   279: astore 5
    //   281: aload 6
    //   283: astore_0
    //   284: goto -110 -> 174
    //
    // Exception table:
    //   from	to	target	type
    //   109	114	126	java/lang/Exception
    //   143	148	160	java/lang/Exception
    //   6	31	170	java/lang/Exception
    //   185	189	201	java/lang/Exception
    //   6	31	211	finally
    //   220	225	237	java/lang/Exception
    //   35	56	249	finally
    //   56	64	253	finally
    //   66	73	253	finally
    //   82	105	253	finally
    //   174	181	261	finally
    //   35	56	272	java/lang/Exception
    //   56	64	279	java/lang/Exception
    //   66	73	279	java/lang/Exception
    //   82	105	279	java/lang/Exception
  }

  public static Intent d(Context paramContext)
  {
    Intent localIntent = new Intent("com.baidu.android.pushservice.action.METHOD");
    localIntent.addFlags(32);
    localIntent.putExtra("app", PendingIntent.getBroadcast(paramContext, 0, new Intent(), 0));
    localIntent.putExtra("pkg_name", paramContext.getPackageName());
    localIntent.putExtra("method_version", "V2");
    return localIntent;
  }

  public static String d(Context paramContext, String paramString1, String paramString2)
  {
    if ((TextUtils.isEmpty(paramString1)) || (TextUtils.isEmpty(paramString2)));
    while (true)
    {
      return null;
      paramString2 = new Intent(paramString2);
      paramString2.setPackage(paramString1);
      try
      {
        paramContext = paramContext.getPackageManager();
        if (paramContext == null)
          continue;
        paramContext = paramContext.queryBroadcastReceivers(paramString2, 544);
        if ((paramContext == null) || (paramContext.size() <= 0))
          continue;
        return ((ResolveInfo)paramContext.get(0)).activityInfo.name;
      }
      catch (Exception paramContext)
      {
        while (true)
        {
          com.baidu.android.pushservice.h.a.e("Utility", "error  " + paramContext.getMessage());
          paramContext = null;
        }
      }
    }
  }

  public static Intent e(Context paramContext)
  {
    paramContext = new Intent("com.baidu.android.pushservice.action.METHOD");
    paramContext.addFlags(32);
    paramContext.putExtra("method_version", "V2");
    return paramContext;
  }

  private static String e(String paramString)
  {
    String str2 = "";
    String str1 = paramString;
    try
    {
      if (paramString.startsWith("http://"))
        str1 = paramString.replace("http://", "");
      InetAddress[] arrayOfInetAddress = InetAddress.getAllByName(str1);
      str1 = str2;
      if (arrayOfInetAddress != null)
      {
        str1 = str2;
        if (arrayOfInetAddress.length > 0)
        {
          int j = arrayOfInetAddress.length;
          int i = 0;
          paramString = str2;
          while (i < j)
          {
            str1 = arrayOfInetAddress[i];
            paramString = paramString + ":" + str1.getHostAddress();
            i += 1;
          }
          str1 = paramString;
          if (paramString.length() > 1)
            str1 = paramString.substring(1);
        }
      }
      return str1;
    }
    catch (Exception paramString)
    {
    }
    return "";
  }

  public static boolean e(Context paramContext, String paramString)
  {
    try
    {
      paramContext = paramContext.getPackageManager();
      if (paramContext == null)
        return false;
      paramContext = paramContext.getApplicationInfo(paramString, 128);
      if ((paramContext != null) && (paramContext.metaData != null))
        return paramContext.metaData.getBoolean("IsBaiduApp");
    }
    catch (Exception paramContext)
    {
      while (true)
      {
        com.baidu.android.pushservice.h.a.a("isBaiduApp", "--- " + paramString + " GetMetaData Exception:\r\n", paramContext);
        paramContext = null;
      }
    }
    return false;
  }

  public static Intent f(Context paramContext)
  {
    if (paramContext == null)
      return null;
    Intent localIntent = new Intent("com.baidu.android.pushservice.action.METHOD");
    localIntent.addFlags(32);
    localIntent.putExtra("app", PendingIntent.getBroadcast(paramContext, 0, new Intent(), 0));
    localIntent.putExtra("method_version", "V2");
    return localIntent;
  }

  public static void f(Context paramContext, String paramString)
  {
    Intent localIntent = l.c(paramContext);
    localIntent.putExtra("method", "pushservice_restart_v2");
    if ((!TextUtils.isEmpty(paramString)) && (paramString.equals(u(paramContext))))
      localIntent.putExtra("priority2", 9223372036854775807L);
    while (true)
    {
      if (paramString != null)
        localIntent.setPackage(paramString);
      paramContext.sendBroadcast(localIntent);
      com.baidu.android.pushservice.a.a(paramContext, false);
      return;
      localIntent.putExtra("priority2", k(paramContext));
    }
  }

  public static long g(Context paramContext, String paramString)
  {
    if ((paramContext == null) || (TextUtils.isEmpty(paramString)));
    while (true)
    {
      return 0L;
      try
      {
        paramContext = s(paramContext, paramString);
        if (paramContext != null)
        {
          paramContext = paramContext.getSharedPreferences(paramString + ".push_sync", 5);
          if (paramContext != null)
          {
            long l = paramContext.getLong("priority2", 0L);
            return l;
          }
        }
      }
      catch (Exception paramContext)
      {
        com.baidu.android.pushservice.h.a.e("Utility", "create packagecontext exception: " + paramContext.getMessage());
      }
    }
    return 0L;
  }

  public static Intent g(Context paramContext)
  {
    return d(paramContext);
  }

  public static void h(Context paramContext)
  {
    a(paramContext, false, false);
  }

  public static boolean h(Context paramContext, String paramString)
  {
    Object localObject1 = new Intent("com.baidu.android.pushservice.action.PUSH_SERVICE");
    ((Intent)localObject1).setPackage(paramString);
    try
    {
      paramContext = paramContext.getPackageManager();
      if (paramContext == null)
        return false;
    }
    catch (Exception localException1)
    {
      try
      {
        localObject1 = paramContext.queryIntentServices((Intent)localObject1, 544);
        label41: int i = 0;
        while (true)
        {
          if (i >= ((List)localObject1).size())
            break label195;
          if (("com.baidu.android.pushservice.PushService".equals(((ResolveInfo)((List)localObject1).get(i)).serviceInfo.name)) && (((ResolveInfo)((List)localObject1).get(i)).serviceInfo.exported))
          {
            bool = ((ResolveInfo)((List)localObject1).get(i)).serviceInfo.enabled;
            i = paramContext.getComponentEnabledSetting(new ComponentName(paramString, "com.baidu.android.pushservice.PushService"));
            if ((i != 1) && ((i != 0) || (!bool)))
              break;
            return true;
            localException1 = localException1;
            paramContext = null;
            com.baidu.android.pushservice.h.a.e("Utility", "error " + localException1.getMessage());
            Object localObject2 = null;
            break label41;
          }
          i += 1;
        }
      }
      catch (Exception localException2)
      {
        while (true)
        {
          continue;
          label195: boolean bool = false;
        }
      }
    }
  }

  public static void i(Context paramContext)
  {
    com.baidu.android.pushservice.h.a.c("Utility", ">>> setAlarmForPeriodRestart");
    a(paramContext, 300000L);
  }

  public static boolean i(Context paramContext, String paramString)
  {
    ResolveInfo localResolveInfo2 = null;
    Object localObject1 = new Intent("com.baidu.android.pushservice.action.notification.CLICK");
    ((Intent)localObject1).setPackage(paramContext.getPackageName());
    try
    {
      paramString = paramContext.getPackageManager();
      if (paramString == null)
        return false;
    }
    catch (Exception localException1)
    {
      try
      {
        Object localObject2;
        for (localObject1 = paramString.queryBroadcastReceivers((Intent)localObject1, 544); ((List)localObject1).size() > 0; localObject2 = null)
        {
          localObject1 = ((List)localObject1).iterator();
          if (!((Iterator)localObject1).hasNext())
            break label207;
          localResolveInfo2 = (ResolveInfo)((Iterator)localObject1).next();
          localObject1 = localResolveInfo2.activityInfo.name;
          bool = localResolveInfo2.activityInfo.enabled;
          if ((!a(paramContext, "com.baidu.android.pushservice.action.MESSAGE", (String)localObject1, true)) || (!a(paramContext, "com.baidu.android.pushservice.action.RECEIVE", (String)localObject1, true)))
            break;
          int i = paramString.getComponentEnabledSetting(new ComponentName(paramContext.getPackageName(), (String)localObject1));
          if ((i != 1) && ((i != 0) || (!bool)))
            break;
          return true;
          localException1 = localException1;
          paramString = null;
          com.baidu.android.pushservice.h.a.e("Utility", "error  " + localException1.getMessage());
        }
      }
      catch (Exception localException2)
      {
        while (true)
        {
          continue;
          label207: boolean bool = false;
          ResolveInfo localResolveInfo1 = localResolveInfo2;
        }
      }
    }
  }

  public static long j(Context paramContext)
  {
    int i = 5;
    long l1 = com.baidu.android.pushservice.a.a();
    int j = com.baidu.android.pushservice.a.b();
    if (j > 0)
      if (j <= 5)
        break label145;
    while (true)
    {
      return i + ((l1 << 4) + 10L);
      long l2 = l1 << 2;
      l1 = l2;
      if (e(paramContext, paramContext.getPackageName()))
      {
        com.baidu.android.pushservice.h.a.c("Utility", "--- get " + paramContext + " PriorityVersion, baidu app");
        l1 = l2 + 1L;
      }
      l2 = l1 << 1;
      l1 = l2;
      if (b(paramContext, paramContext.getPackageName()))
      {
        com.baidu.android.pushservice.h.a.c("Utility", "--- get " + paramContext + " PriorityVersion, system app");
        l1 = l2 + 1L;
      }
      return (l1 << 1) + n(paramContext);
      label145: i = j;
    }
  }

  public static boolean j(Context paramContext, String paramString)
  {
    boolean bool = true;
    try
    {
      if (paramContext.getSharedPreferences(paramContext.getPackageName() + ".push_sync", 5).getInt("version2", 0) < 29)
        return true;
      paramString = new ComponentName(paramContext, "com.baidu.android.pushservice.CommandService");
      paramContext = paramContext.getPackageManager();
      new ServiceInfo();
      paramContext = paramContext.getServiceInfo(paramString, 128);
      if (TextUtils.isEmpty(paramContext.name))
      {
        com.baidu.android.pushservice.h.a.e("Utility", "com.baidu.android.pushservice.CommandService did not declared ");
        return false;
      }
      if (!paramContext.exported)
      {
        com.baidu.android.pushservice.h.a.e("Utility", "com.baidu.android.pushservice.CommandService  exported declared wrong");
        return false;
      }
    }
    catch (Exception paramContext)
    {
      com.baidu.android.pushservice.h.a.e("Utility", "error " + paramContext.getMessage());
      bool = false;
    }
    return bool;
  }

  public static int k(Context paramContext, String paramString)
  {
    Object localObject = null;
    try
    {
      paramContext = s(paramContext, paramString).getSharedPreferences(paramString + ".push_sync", 5);
      if (paramContext == null)
      {
        com.baidu.android.pushservice.h.a.d("Utility", "App:" + paramString + " doesn't init Version!");
        return 0;
      }
    }
    catch (Exception paramContext)
    {
      while (true)
      {
        com.baidu.android.pushservice.h.a.e("Utility", "error : " + paramContext.getMessage());
        paramContext = localObject;
      }
      int i = paramContext.getInt("version2", 0);
      if (i > 0)
        return i;
    }
    return paramContext.getInt("version", 0);
  }

  public static long k(Context paramContext)
  {
    return paramContext.getSharedPreferences(paramContext.getPackageName() + ".push_sync", 5).getLong("priority2", 0L);
  }

  public static String l(Context paramContext, String paramString)
  {
    if (TextUtils.isEmpty(paramString))
      return "";
    return a(paramContext, paramString, "BaiduPush_CHANNEL");
  }

  static boolean l(Context paramContext)
  {
    return i(paramContext, paramContext.getPackageName());
  }

  static boolean m(Context paramContext)
  {
    return j(paramContext, paramContext.getPackageName());
  }

  public static boolean m(Context paramContext, String paramString)
  {
    return a(paramContext, paramString) != null;
  }

  static int n(Context paramContext)
  {
    int j = 0;
    if (a(paramContext, "android.intent.action.USER_PRESENT", "com.baidu.android.pushservice.PushServiceReceiver", true))
      j = 1;
    int i = j;
    if (a(paramContext, "android.intent.action.MEDIA_MOUNTED", "com.baidu.android.pushservice.PushServiceReceiver", true))
      i = j + 1;
    j = i;
    if (a(paramContext, "android.intent.action.ACTION_POWER_CONNECTED", "com.baidu.android.pushservice.PushServiceReceiver", true))
      j = i + 1;
    i = j;
    if (a(paramContext, "android.intent.action.ACTION_POWER_DISCONNECTED", "com.baidu.android.pushservice.PushServiceReceiver", true))
      i = j + 1;
    return i;
  }

  // ERROR //
  public static String n(Context paramContext, String paramString)
  {
    // Byte code:
    //   0: aload_0
    //   1: invokevirtual 101	android/content/Context:getApplicationContext	()Landroid/content/Context;
    //   4: invokestatic 1248	com/baidu/android/pushservice/util/m:o	(Landroid/content/Context;)Ljava/util/List;
    //   7: astore 6
    //   9: aload 6
    //   11: invokeinterface 727 1 0
    //   16: iconst_1
    //   17: if_icmpgt +8 -> 25
    //   20: aload_0
    //   21: invokevirtual 387	android/content/Context:getPackageName	()Ljava/lang/String;
    //   24: areturn
    //   25: aload_0
    //   26: new 76	java/lang/StringBuilder
    //   29: dup
    //   30: invokespecial 292	java/lang/StringBuilder:<init>	()V
    //   33: aload_0
    //   34: invokevirtual 387	android/content/Context:getPackageName	()Ljava/lang/String;
    //   37: invokevirtual 85	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   40: ldc_w 482
    //   43: invokevirtual 85	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   46: invokevirtual 97	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   49: iconst_5
    //   50: invokevirtual 470	android/content/Context:getSharedPreferences	(Ljava/lang/String;I)Landroid/content/SharedPreferences;
    //   53: pop
    //   54: aload_0
    //   55: ldc_w 1250
    //   58: invokestatic 1254	com/baidu/android/pushservice/util/b:a	(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    //   61: astore 9
    //   63: aload 6
    //   65: invokeinterface 731 1 0
    //   70: astore 10
    //   72: lconst_0
    //   73: lstore_2
    //   74: aload 10
    //   76: invokeinterface 736 1 0
    //   81: ifeq +290 -> 371
    //   84: aload 10
    //   86: invokeinterface 740 1 0
    //   91: checkcast 742	android/content/pm/ResolveInfo
    //   94: getfield 746	android/content/pm/ResolveInfo:activityInfo	Landroid/content/pm/ActivityInfo;
    //   97: getfield 1257	android/content/pm/ActivityInfo:packageName	Ljava/lang/String;
    //   100: astore 7
    //   102: aload_0
    //   103: aload 7
    //   105: invokestatic 1166	com/baidu/android/pushservice/util/m:s	(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Context;
    //   108: astore 6
    //   110: aload 6
    //   112: new 76	java/lang/StringBuilder
    //   115: dup
    //   116: invokespecial 292	java/lang/StringBuilder:<init>	()V
    //   119: aload 7
    //   121: invokevirtual 85	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   124: ldc_w 482
    //   127: invokevirtual 85	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   130: invokevirtual 97	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   133: iconst_5
    //   134: invokevirtual 470	android/content/Context:getSharedPreferences	(Ljava/lang/String;I)Landroid/content/SharedPreferences;
    //   137: astore 8
    //   139: aload 8
    //   141: ifnonnull +72 -> 213
    //   144: ldc 74
    //   146: new 76	java/lang/StringBuilder
    //   149: dup
    //   150: ldc_w 1224
    //   153: invokespecial 81	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   156: aload 7
    //   158: invokevirtual 85	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   161: ldc_w 1226
    //   164: invokevirtual 85	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   167: invokevirtual 97	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   170: invokestatic 817	com/baidu/android/pushservice/h/a:d	(Ljava/lang/String;Ljava/lang/String;)V
    //   173: goto -99 -> 74
    //   176: astore 8
    //   178: aconst_null
    //   179: astore 6
    //   181: ldc 74
    //   183: new 76	java/lang/StringBuilder
    //   186: dup
    //   187: ldc_w 1172
    //   190: invokespecial 81	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   193: aload 8
    //   195: invokevirtual 123	java/lang/Exception:getMessage	()Ljava/lang/String;
    //   198: invokevirtual 85	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   201: invokevirtual 97	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   204: invokestatic 444	com/baidu/android/pushservice/h/a:e	(Ljava/lang/String;Ljava/lang/String;)V
    //   207: aconst_null
    //   208: astore 8
    //   210: goto -71 -> 139
    //   213: aload 8
    //   215: ldc_w 490
    //   218: lconst_0
    //   219: invokeinterface 1170 4 0
    //   224: lstore 4
    //   226: lload 4
    //   228: lload_2
    //   229: lcmp
    //   230: ifle +105 -> 335
    //   233: ldc 74
    //   235: new 76	java/lang/StringBuilder
    //   238: dup
    //   239: ldc_w 1259
    //   242: invokespecial 81	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   245: aload 7
    //   247: invokevirtual 85	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   250: ldc_w 1261
    //   253: invokevirtual 85	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   256: lload 4
    //   258: invokevirtual 295	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   261: ldc_w 1263
    //   264: invokevirtual 85	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   267: aload_1
    //   268: invokevirtual 85	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   271: ldc_w 1261
    //   274: invokevirtual 85	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   277: lload_2
    //   278: invokevirtual 295	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   281: invokevirtual 97	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   284: invokestatic 188	com/baidu/android/pushservice/h/a:c	(Ljava/lang/String;Ljava/lang/String;)V
    //   287: aload 6
    //   289: aload 7
    //   291: invokestatic 1265	com/baidu/android/pushservice/util/m:h	(Landroid/content/Context;Ljava/lang/String;)Z
    //   294: ifeq +12 -> 306
    //   297: lload 4
    //   299: lstore_2
    //   300: aload 7
    //   302: astore_1
    //   303: goto -229 -> 74
    //   306: ldc 74
    //   308: new 76	java/lang/StringBuilder
    //   311: dup
    //   312: invokespecial 292	java/lang/StringBuilder:<init>	()V
    //   315: aload 7
    //   317: invokevirtual 85	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   320: ldc_w 1267
    //   323: invokevirtual 85	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   326: invokevirtual 97	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   329: invokestatic 188	com/baidu/android/pushservice/h/a:c	(Ljava/lang/String;Ljava/lang/String;)V
    //   332: goto -258 -> 74
    //   335: lload 4
    //   337: lload_2
    //   338: lcmp
    //   339: ifne +61 -> 400
    //   342: aload 7
    //   344: aload 9
    //   346: invokevirtual 687	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   349: ifeq +51 -> 400
    //   352: aload 6
    //   354: aload 7
    //   356: invokestatic 1265	com/baidu/android/pushservice/util/m:h	(Landroid/content/Context;Ljava/lang/String;)Z
    //   359: ifeq +41 -> 400
    //   362: aload 7
    //   364: astore_1
    //   365: lload 4
    //   367: lstore_2
    //   368: goto -294 -> 74
    //   371: ldc 74
    //   373: new 76	java/lang/StringBuilder
    //   376: dup
    //   377: ldc_w 1269
    //   380: invokespecial 81	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   383: aload_1
    //   384: invokevirtual 85	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   387: invokevirtual 97	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   390: invokestatic 188	com/baidu/android/pushservice/h/a:c	(Ljava/lang/String;Ljava/lang/String;)V
    //   393: aload_1
    //   394: areturn
    //   395: astore 8
    //   397: goto -216 -> 181
    //   400: goto -32 -> 368
    //
    // Exception table:
    //   from	to	target	type
    //   102	110	176	java/lang/Exception
    //   110	139	395	java/lang/Exception
  }

  public static List<ResolveInfo> o(Context paramContext)
  {
    ArrayList localArrayList = new ArrayList();
    Intent localIntent = new Intent("com.baidu.android.pushservice.action.BIND_SYNC");
    try
    {
      paramContext = paramContext.getPackageManager();
      if (paramContext == null)
        return null;
      paramContext = paramContext.queryBroadcastReceivers(localIntent, 544);
      return paramContext;
    }
    catch (Exception paramContext)
    {
      com.baidu.android.pushservice.h.a.e("Utility", "error  " + paramContext.getMessage());
    }
    return localArrayList;
  }

  public static boolean o(Context paramContext, String paramString)
  {
    boolean bool2 = false;
    if ((paramContext == null) || (TextUtils.isEmpty(paramString)))
    {
      com.baidu.android.pushservice.h.a.c("Utility", "isNoDisturb parameters illegal : false");
      return false;
    }
    paramContext = k.d(paramContext, paramString);
    boolean bool1 = bool2;
    if (paramContext != null)
    {
      bool1 = bool2;
      if (4 == paramContext.length)
        bool1 = a(paramContext[0], paramContext[1], paramContext[2], paramContext[3]);
    }
    com.baidu.android.pushservice.h.a.c("Utility", "isNoDisturb :" + bool1);
    return bool1;
  }

  public static String p(Context paramContext)
  {
    paramContext = d.a(paramContext);
    return e.a(("com.baidu.pushservice.singelinstancev2" + paramContext).getBytes(), false);
  }

  public static String p(Context paramContext, String paramString)
  {
    try
    {
      paramContext = paramContext.getPackageManager();
      if (paramContext == null)
        return null;
      paramContext = e.a(paramContext.getPackageInfo(paramString, 64).signatures[0].toByteArray(), false);
      return paramContext;
    }
    catch (PackageManager.NameNotFoundException paramContext)
    {
      com.baidu.android.pushservice.h.a.e("Utility", " packageName not found: " + paramString);
      return null;
    }
    catch (Exception paramContext)
    {
      com.baidu.android.pushservice.h.a.e("Utility", "error " + paramContext.getMessage());
    }
    return null;
  }

  public static ArrayList<String> q(Context paramContext)
  {
    Object localObject = o(paramContext.getApplicationContext());
    paramContext = new ArrayList();
    localObject = ((List)localObject).iterator();
    while (((Iterator)localObject).hasNext())
    {
      ResolveInfo localResolveInfo = (ResolveInfo)((Iterator)localObject).next();
      if (!paramContext.contains(localResolveInfo.activityInfo.packageName))
        paramContext.add(localResolveInfo.activityInfo.packageName);
    }
    return paramContext;
  }

  public static boolean q(Context paramContext, String paramString)
  {
    String str2 = i.a(paramContext, "com.baidu.android.pushservice.MESSAGE_IDS_RECEIVED");
    if (TextUtils.isEmpty(str2));
    while (true)
    {
      i.a(paramContext, "com.baidu.android.pushservice.MESSAGE_IDS_RECEIVED", paramString);
      return false;
      if (str2.contains(paramString))
        return true;
      String str1 = str2;
      if (str2.length() > 1000)
        str1 = str2.substring(500);
      paramString = str1 + ":" + paramString;
    }
  }

  public static List<String> r(Context paramContext)
  {
    ArrayList localArrayList = new ArrayList();
    try
    {
      Object localObject = (ActivityManager)paramContext.getSystemService("activity");
      if (localObject == null)
        com.baidu.android.pushservice.h.a.e("Utility", "ActivityManager is null !!!");
      localObject = ((ActivityManager)localObject).getRunningServices(500);
      if ((localObject == null) || (((List)localObject).isEmpty()))
        com.baidu.android.pushservice.h.a.e("Utility", "runnServs is null !!!");
      localObject = ((List)localObject).iterator();
      while (((Iterator)localObject).hasNext())
      {
        ActivityManager.RunningServiceInfo localRunningServiceInfo = (ActivityManager.RunningServiceInfo)((Iterator)localObject).next();
        if (localRunningServiceInfo.service.getClassName().contains("com.baidu.android.pushservice.PushService"))
          localArrayList.add(localRunningServiceInfo.service.getPackageName());
      }
    }
    catch (Exception localException)
    {
      a(com.baidu.android.pushservice.h.a.a(localException), paramContext);
    }
    return localArrayList;
  }

  public static boolean r(Context paramContext, String paramString)
  {
    return paramContext.getPackageManager().checkPermission(paramString, paramContext.getPackageName()) == 0;
  }

  public static Context s(Context paramContext, String paramString)
  {
    Context localContext = null;
    if (!TextUtils.isEmpty(paramString));
    try
    {
      localContext = paramContext.createPackageContext(paramString, 2);
      return localContext;
    }
    catch (Exception paramContext)
    {
      com.baidu.android.pushservice.h.a.a("Utility", paramContext);
    }
    return null;
  }

  public static String s(Context paramContext)
  {
    Object localObject = g.c(paramContext);
    if ((localObject != null) && (((NetworkInfo)localObject).isConnected()) && (((NetworkInfo)localObject).getState() == NetworkInfo.State.CONNECTED))
    {
      if (((NetworkInfo)localObject).getTypeName().equals("WIFI"))
        localObject = ((NetworkInfo)localObject).getTypeName();
      do
      {
        return localObject;
        paramContext = null;
        if (((NetworkInfo)localObject).getExtraInfo() != null)
          paramContext = ((NetworkInfo)localObject).getExtraInfo().toLowerCase();
        localObject = paramContext;
      }
      while (!TextUtils.isEmpty(paramContext));
      return "unknown";
    }
    return "unknown";
  }

  public static int t(Context paramContext)
  {
    String str = "";
    Object localObject = str;
    NetworkInfo localNetworkInfo;
    if (paramContext != null)
    {
      localNetworkInfo = g.c(paramContext);
      localObject = str;
      if (localNetworkInfo != null)
      {
        localObject = str;
        if (localNetworkInfo.isConnectedOrConnecting())
        {
          if (!localNetworkInfo.getTypeName().toLowerCase().equals("wifi"))
            break label61;
          localObject = "WF";
        }
      }
    }
    while (((String)localObject).equals("WF"))
    {
      return 1;
      label61: paramContext = "2G";
      localObject = paramContext;
      switch (localNetworkInfo.getSubtype())
      {
      case 1:
      case 2:
      case 4:
      case 11:
      default:
        localObject = paramContext;
        break;
      case 3:
        localObject = "3G";
        break;
      case 7:
        localObject = "3G";
        break;
      case 5:
        localObject = "3G";
        break;
      case 6:
        localObject = "3G";
        break;
      case 8:
        localObject = "3G";
        break;
      case 10:
        localObject = "3G";
        break;
      case 9:
        localObject = "3G";
        break;
      case 14:
        localObject = "3G";
        break;
      case 12:
        localObject = "3G";
        break;
      case 15:
        localObject = "3G";
        break;
      case 13:
        localObject = "4G";
      }
    }
    if (((String)localObject).equals("2G"))
      return 2;
    if (((String)localObject).equals("3G"))
      return 3;
    if (((String)localObject).equals("4G"))
      return 4;
    return 0;
  }

  public static String t(Context paramContext, String paramString)
  {
    try
    {
      long l = a(paramContext, paramString).firstInstallTime;
      return String.valueOf(l);
    }
    catch (Exception paramContext)
    {
      com.baidu.android.pushservice.h.a.a("Utility", paramContext);
    }
    return "";
  }

  public static String u(Context paramContext)
  {
    String str = b.a(paramContext, "com.baidu.push.cur_pkg");
    if (m(paramContext, str))
    {
      if (h(paramContext, str))
        return str;
      com.baidu.android.pushservice.h.a.c("Utility", "The Highest priority Service: " + str + " is disabled,Maybe use setComponentEnabledSetting method");
    }
    return null;
  }

  public static boolean u(Context paramContext, String paramString)
  {
    Object localObject = com.baidu.android.pushservice.c.b.a(paramContext).a;
    if ((localObject != null) && (!((ArrayList)localObject).isEmpty()))
    {
      localObject = ((ArrayList)localObject).iterator();
      do
        if (!((Iterator)localObject).hasNext())
          break;
      while (!paramString.equals(((h)((Iterator)localObject).next()).c()));
    }
    for (boolean bool1 = true; ; bool1 = false)
    {
      boolean bool2 = bool1;
      if (!bool1)
      {
        paramContext = com.baidu.android.pushservice.c.b.a(n.a(paramContext, paramContext.getPackageName() + ".push_sync", "r_v2"));
        bool2 = bool1;
        if (!TextUtils.isEmpty(paramContext))
        {
          bool2 = bool1;
          if (paramContext.contains(paramString))
          {
            paramContext = paramContext.replace(" ", "");
            bool2 = bool1;
            if (paramContext.charAt(paramContext.indexOf(paramString) + paramString.length()) == ',')
              bool2 = true;
          }
        }
      }
      return bool2;
    }
  }

  private static int v(Context paramContext, String paramString)
  {
    return paramContext.getPackageManager().getComponentEnabledSetting(new ComponentName(paramContext.getPackageName(), paramString));
  }

  public static String v(Context paramContext)
  {
    return n(paramContext, paramContext.getPackageName());
  }

  // ERROR //
  public static long w(Context paramContext)
  {
    // Byte code:
    //   0: aload_0
    //   1: invokevirtual 387	android/content/Context:getPackageName	()Ljava/lang/String;
    //   4: astore 5
    //   6: aload_0
    //   7: invokevirtual 101	android/content/Context:getApplicationContext	()Landroid/content/Context;
    //   10: invokestatic 1248	com/baidu/android/pushservice/util/m:o	(Landroid/content/Context;)Ljava/util/List;
    //   13: astore 6
    //   15: aload 6
    //   17: invokeinterface 727 1 0
    //   22: iconst_1
    //   23: if_icmpgt +5 -> 28
    //   26: lconst_0
    //   27: lreturn
    //   28: aload_0
    //   29: new 76	java/lang/StringBuilder
    //   32: dup
    //   33: invokespecial 292	java/lang/StringBuilder:<init>	()V
    //   36: aload_0
    //   37: invokevirtual 387	android/content/Context:getPackageName	()Ljava/lang/String;
    //   40: invokevirtual 85	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   43: ldc_w 482
    //   46: invokevirtual 85	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   49: invokevirtual 97	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   52: iconst_5
    //   53: invokevirtual 470	android/content/Context:getSharedPreferences	(Ljava/lang/String;I)Landroid/content/SharedPreferences;
    //   56: ldc_w 490
    //   59: lconst_0
    //   60: invokeinterface 1170 4 0
    //   65: lstore_1
    //   66: aload_0
    //   67: ldc_w 1250
    //   70: invokestatic 1254	com/baidu/android/pushservice/util/b:a	(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    //   73: astore 9
    //   75: aload 6
    //   77: invokeinterface 731 1 0
    //   82: astore 10
    //   84: aload 10
    //   86: invokeinterface 736 1 0
    //   91: ifeq +287 -> 378
    //   94: aload 10
    //   96: invokeinterface 740 1 0
    //   101: checkcast 742	android/content/pm/ResolveInfo
    //   104: getfield 746	android/content/pm/ResolveInfo:activityInfo	Landroid/content/pm/ActivityInfo;
    //   107: getfield 1257	android/content/pm/ActivityInfo:packageName	Ljava/lang/String;
    //   110: astore 7
    //   112: aload_0
    //   113: aload 7
    //   115: invokestatic 1166	com/baidu/android/pushservice/util/m:s	(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Context;
    //   118: astore 6
    //   120: aload 6
    //   122: new 76	java/lang/StringBuilder
    //   125: dup
    //   126: invokespecial 292	java/lang/StringBuilder:<init>	()V
    //   129: aload 7
    //   131: invokevirtual 85	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   134: ldc_w 482
    //   137: invokevirtual 85	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   140: invokevirtual 97	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   143: iconst_5
    //   144: invokevirtual 470	android/content/Context:getSharedPreferences	(Ljava/lang/String;I)Landroid/content/SharedPreferences;
    //   147: astore 8
    //   149: aload 8
    //   151: ifnonnull +72 -> 223
    //   154: ldc 74
    //   156: new 76	java/lang/StringBuilder
    //   159: dup
    //   160: ldc_w 1224
    //   163: invokespecial 81	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   166: aload 7
    //   168: invokevirtual 85	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   171: ldc_w 1226
    //   174: invokevirtual 85	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   177: invokevirtual 97	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   180: invokestatic 817	com/baidu/android/pushservice/h/a:d	(Ljava/lang/String;Ljava/lang/String;)V
    //   183: goto -99 -> 84
    //   186: astore 8
    //   188: aconst_null
    //   189: astore 6
    //   191: ldc 74
    //   193: new 76	java/lang/StringBuilder
    //   196: dup
    //   197: ldc_w 1172
    //   200: invokespecial 81	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   203: aload 8
    //   205: invokevirtual 123	java/lang/Exception:getMessage	()Ljava/lang/String;
    //   208: invokevirtual 85	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   211: invokevirtual 97	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   214: invokestatic 817	com/baidu/android/pushservice/h/a:d	(Ljava/lang/String;Ljava/lang/String;)V
    //   217: aconst_null
    //   218: astore 8
    //   220: goto -71 -> 149
    //   223: aload 8
    //   225: ldc_w 490
    //   228: lconst_0
    //   229: invokeinterface 1170 4 0
    //   234: lstore_3
    //   235: lload_3
    //   236: lload_1
    //   237: lcmp
    //   238: ifle +105 -> 343
    //   241: ldc 74
    //   243: new 76	java/lang/StringBuilder
    //   246: dup
    //   247: ldc_w 1259
    //   250: invokespecial 81	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   253: aload 7
    //   255: invokevirtual 85	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   258: ldc_w 1261
    //   261: invokevirtual 85	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   264: lload_3
    //   265: invokevirtual 295	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   268: ldc_w 1263
    //   271: invokevirtual 85	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   274: aload 5
    //   276: invokevirtual 85	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   279: ldc_w 1261
    //   282: invokevirtual 85	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   285: lload_1
    //   286: invokevirtual 295	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   289: invokevirtual 97	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   292: invokestatic 188	com/baidu/android/pushservice/h/a:c	(Ljava/lang/String;Ljava/lang/String;)V
    //   295: aload 6
    //   297: aload 7
    //   299: invokestatic 1265	com/baidu/android/pushservice/util/m:h	(Landroid/content/Context;Ljava/lang/String;)Z
    //   302: ifeq +12 -> 314
    //   305: lload_3
    //   306: lstore_1
    //   307: aload 7
    //   309: astore 5
    //   311: goto -227 -> 84
    //   314: ldc 74
    //   316: new 76	java/lang/StringBuilder
    //   319: dup
    //   320: invokespecial 292	java/lang/StringBuilder:<init>	()V
    //   323: aload 7
    //   325: invokevirtual 85	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   328: ldc_w 1267
    //   331: invokevirtual 85	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   334: invokevirtual 97	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   337: invokestatic 188	com/baidu/android/pushservice/h/a:c	(Ljava/lang/String;Ljava/lang/String;)V
    //   340: goto -256 -> 84
    //   343: lload_3
    //   344: lload_1
    //   345: lcmp
    //   346: ifne +72 -> 418
    //   349: aload 7
    //   351: aload 9
    //   353: invokevirtual 687	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   356: ifeq +62 -> 418
    //   359: aload 6
    //   361: aload 7
    //   363: invokestatic 1265	com/baidu/android/pushservice/util/m:h	(Landroid/content/Context;Ljava/lang/String;)Z
    //   366: ifeq +52 -> 418
    //   369: aload 7
    //   371: astore 5
    //   373: lload_3
    //   374: lstore_1
    //   375: goto -291 -> 84
    //   378: ldc 74
    //   380: new 76	java/lang/StringBuilder
    //   383: dup
    //   384: ldc_w 1269
    //   387: invokespecial 81	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   390: aload 5
    //   392: invokevirtual 85	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   395: ldc_w 1447
    //   398: invokevirtual 85	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   401: lload_1
    //   402: invokevirtual 295	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   405: invokevirtual 97	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   408: invokestatic 188	com/baidu/android/pushservice/h/a:c	(Ljava/lang/String;Ljava/lang/String;)V
    //   411: lload_1
    //   412: lreturn
    //   413: astore 8
    //   415: goto -224 -> 191
    //   418: goto -43 -> 375
    //
    // Exception table:
    //   from	to	target	type
    //   112	120	186	java/lang/Exception
    //   120	149	413	java/lang/Exception
  }

  public static String x(Context paramContext)
  {
    int k = 1;
    if (com.baidu.android.pushservice.f.a.b(paramContext));
    for (int i = 0; ; i = 1)
    {
      paramContext = g.c(paramContext);
      int j = k;
      if (paramContext != null)
      {
        j = k;
        if (paramContext.isAvailable())
          j = 0;
      }
      k = d("220.181.112.244");
      int m = d("202.108.23.105");
      int n = d("202.108.23.109");
      paramContext = new JSONObject();
      try
      {
        paramContext.put("frontia_avail", i);
        paramContext.put("network_avail", j);
        paramContext.put("baidu_avail", k);
        paramContext.put("sa_avail", m);
        paramContext.put("logic_avail", n);
        return paramContext.toString();
      }
      catch (Exception localException)
      {
        while (true)
          com.baidu.android.pushservice.h.a.a("Utility", localException);
      }
    }
  }

  public static String y(Context paramContext)
  {
    String str1 = e("www.baidu.com");
    String str2 = e("sa.tuisong.baidu.com");
    String str3 = e("api.tuisong.baidu.com");
    paramContext = new JSONObject();
    try
    {
      paramContext.put("baidu_ip", str1);
      paramContext.put("sa_ip", str2);
      paramContext.put("logic_ip", str3);
      if (com.baidu.android.pushservice.a.b() > 0)
        com.baidu.android.pushservice.h.a.c("Utility", "getNetworkInfo json: " + paramContext.toString());
      return paramContext.toString();
    }
    catch (Exception localException)
    {
      while (true)
        com.baidu.android.pushservice.h.a.a("Utility", localException);
    }
  }

  private static boolean z(Context paramContext)
  {
    return a(paramContext, "com.baidu.android.pushservice.action.PUSH_SERVICE", "com.baidu.android.pushservice.PushService", false);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.baidu.android.pushservice.util.m
 * JD-Core Version:    0.6.2
 */