package com.baidu.android.pushservice;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.text.TextUtils;
import com.baidu.android.pushservice.util.i;
import com.baidu.android.pushservice.util.l;
import com.baidu.android.pushservice.util.m;
import java.util.HashMap;

public class PushSettings
{
  private static int a = -1;

  public static String a(Context paramContext)
  {
    return com.baidu.android.pushservice.util.b.a(paramContext, "com.baidu.pushservice.channel_id");
  }

  // ERROR //
  private static HashMap<String, String> a()
    throws java.io.FileNotFoundException, java.io.StreamCorruptedException, java.io.IOException, java.io.OptionalDataException, java.lang.ClassNotFoundException
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 6
    //   3: new 37	java/io/File
    //   6: dup
    //   7: invokestatic 43	android/os/Environment:getExternalStorageDirectory	()Ljava/io/File;
    //   10: invokevirtual 47	java/io/File:getAbsolutePath	()Ljava/lang/String;
    //   13: ldc 49
    //   15: invokespecial 52	java/io/File:<init>	(Ljava/lang/String;Ljava/lang/String;)V
    //   18: astore_1
    //   19: aload_1
    //   20: invokevirtual 56	java/io/File:exists	()Z
    //   23: ifne +8 -> 31
    //   26: aload_1
    //   27: invokevirtual 59	java/io/File:mkdirs	()Z
    //   30: pop
    //   31: new 37	java/io/File
    //   34: dup
    //   35: aload_1
    //   36: ldc 61
    //   38: invokespecial 64	java/io/File:<init>	(Ljava/io/File;Ljava/lang/String;)V
    //   41: astore_1
    //   42: aload_1
    //   43: invokevirtual 56	java/io/File:exists	()Z
    //   46: istore_0
    //   47: iload_0
    //   48: ifne +20 -> 68
    //   51: iconst_2
    //   52: anewarray 66	java/io/Closeable
    //   55: dup
    //   56: iconst_0
    //   57: aconst_null
    //   58: aastore
    //   59: dup
    //   60: iconst_1
    //   61: aconst_null
    //   62: aastore
    //   63: invokestatic 71	com/baidu/android/pushservice/f/c:a	([Ljava/io/Closeable;)V
    //   66: aconst_null
    //   67: areturn
    //   68: new 73	java/io/FileInputStream
    //   71: dup
    //   72: aload_1
    //   73: invokespecial 76	java/io/FileInputStream:<init>	(Ljava/io/File;)V
    //   76: astore_3
    //   77: new 78	java/io/ObjectInputStream
    //   80: dup
    //   81: aload_3
    //   82: invokespecial 81	java/io/ObjectInputStream:<init>	(Ljava/io/InputStream;)V
    //   85: astore_2
    //   86: aload_2
    //   87: astore 5
    //   89: aload_3
    //   90: astore 4
    //   92: new 83	java/util/HashMap
    //   95: dup
    //   96: invokespecial 84	java/util/HashMap:<init>	()V
    //   99: astore_1
    //   100: aload_2
    //   101: astore 5
    //   103: aload_3
    //   104: astore 4
    //   106: aload_2
    //   107: invokevirtual 88	java/io/ObjectInputStream:readObject	()Ljava/lang/Object;
    //   110: checkcast 83	java/util/HashMap
    //   113: astore 6
    //   115: iconst_2
    //   116: anewarray 66	java/io/Closeable
    //   119: dup
    //   120: iconst_0
    //   121: aload_2
    //   122: aastore
    //   123: dup
    //   124: iconst_1
    //   125: aload_3
    //   126: aastore
    //   127: invokestatic 71	com/baidu/android/pushservice/f/c:a	([Ljava/io/Closeable;)V
    //   130: aload 6
    //   132: areturn
    //   133: astore_1
    //   134: aconst_null
    //   135: astore_2
    //   136: aconst_null
    //   137: astore_3
    //   138: aload_2
    //   139: astore 5
    //   141: aload_3
    //   142: astore 4
    //   144: ldc 90
    //   146: aload_1
    //   147: invokestatic 95	com/baidu/android/pushservice/h/a:a	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   150: iconst_2
    //   151: anewarray 66	java/io/Closeable
    //   154: dup
    //   155: iconst_0
    //   156: aload_2
    //   157: aastore
    //   158: dup
    //   159: iconst_1
    //   160: aload_3
    //   161: aastore
    //   162: invokestatic 71	com/baidu/android/pushservice/f/c:a	([Ljava/io/Closeable;)V
    //   165: aload 6
    //   167: areturn
    //   168: astore_1
    //   169: aconst_null
    //   170: astore 5
    //   172: aconst_null
    //   173: astore_3
    //   174: iconst_2
    //   175: anewarray 66	java/io/Closeable
    //   178: dup
    //   179: iconst_0
    //   180: aload 5
    //   182: aastore
    //   183: dup
    //   184: iconst_1
    //   185: aload_3
    //   186: aastore
    //   187: invokestatic 71	com/baidu/android/pushservice/f/c:a	([Ljava/io/Closeable;)V
    //   190: aload_1
    //   191: athrow
    //   192: astore_1
    //   193: aconst_null
    //   194: astore 5
    //   196: goto -22 -> 174
    //   199: astore_1
    //   200: aload 4
    //   202: astore_3
    //   203: goto -29 -> 174
    //   206: astore_1
    //   207: aconst_null
    //   208: astore_2
    //   209: goto -71 -> 138
    //   212: astore_1
    //   213: goto -75 -> 138
    //   216: astore 4
    //   218: aload_1
    //   219: astore 6
    //   221: aload 4
    //   223: astore_1
    //   224: goto -86 -> 138
    //
    // Exception table:
    //   from	to	target	type
    //   3	31	133	java/lang/Exception
    //   31	47	133	java/lang/Exception
    //   68	77	133	java/lang/Exception
    //   3	31	168	finally
    //   31	47	168	finally
    //   68	77	168	finally
    //   77	86	192	finally
    //   92	100	199	finally
    //   106	115	199	finally
    //   144	150	199	finally
    //   77	86	206	java/lang/Exception
    //   92	100	212	java/lang/Exception
    //   106	115	216	java/lang/Exception
  }

  public static void a(Context paramContext, int paramInt)
  {
    i.a(paramContext, "com.baidu.pushservice.cur_period", paramInt);
  }

  public static void a(Context paramContext, long paramLong)
  {
    if (paramContext == null)
    {
      com.baidu.android.pushservice.h.a.d("PushSettings", "setLastSendStatisticTime mContext == null");
      return;
    }
    i.a(paramContext, "com.baidu.pushservice.cst", paramLong);
  }

  protected static void a(Context paramContext, String paramString)
  {
    com.baidu.android.pushservice.util.b.a(paramContext, "com.baidu.pushservice.channel_id", paramString);
  }

  public static void a(Context paramContext, String paramString1, int paramInt, String paramString2)
  {
    if (paramContext == null)
      com.baidu.android.pushservice.h.a.e("PushSettings", "setApiInfo mContext == null");
    while (true)
    {
      return;
      if (paramInt == 9)
        try
        {
          paramString2 = a();
          if ((paramString2 == null) || (!paramString2.containsKey("com.baidu.pushservice" + paramString1)))
            continue;
          paramString2.remove("com.baidu.pushservice" + paramString1);
          a(paramString2);
          com.baidu.android.pushservice.util.b.a(paramContext, "com.baidu.pushservice" + paramString1, "");
          return;
        }
        catch (Exception paramContext)
        {
          com.baidu.android.pushservice.h.a.c("PushSettings", "set appInfo exception");
          return;
        }
      paramString2 = paramInt + paramString2;
      try
      {
        str = com.baidu.android.pushservice.j.b.a(com.baidu.android.pushservice.j.a.a("2011121211143000", "9876543210123456", paramString2.getBytes()), "utf-8");
        if (TextUtils.isEmpty(str))
          continue;
        paramString2 = null;
      }
      catch (Exception paramString2)
      {
        try
        {
          Object localObject = a();
          paramString2 = (String)localObject;
          localObject = paramString2;
          if (paramString2 == null)
            localObject = new HashMap();
          if (!((HashMap)localObject).containsKey("com.baidu.pushservice" + paramString1))
          {
            ((HashMap)localObject).put("com.baidu.pushservice" + paramString1, str);
            a((HashMap)localObject);
          }
          com.baidu.android.pushservice.util.b.a(paramContext, "com.baidu.pushservice" + paramString1, str);
          return;
          paramString2 = paramString2;
          String str = "";
          com.baidu.android.pushservice.h.a.b("PushSettings", "setAppInfo exception");
        }
        catch (Exception localException)
        {
          while (true)
            com.baidu.android.pushservice.h.a.b("PushSettings", "set AppInfo exception" + localException.toString());
        }
      }
    }
  }

  public static void a(Context paramContext, boolean paramBoolean)
  {
    int i = 0;
    if (paramContext == null)
      com.baidu.android.pushservice.h.a.d("PushSettings", "setLbsEnabled mContext == null");
    do
    {
      return;
      if (TextUtils.isEmpty(paramContext.getPackageName()))
      {
        com.baidu.android.pushservice.h.a.d("PushSettings", "mContext.getPackageName() == null");
        return;
      }
      Object localObject = i.a(paramContext, "com.baidu.pushservice.le");
      if (!TextUtils.isEmpty((CharSequence)localObject))
      {
        StringBuilder localStringBuilder = new StringBuilder();
        localObject = ((String)localObject).trim().split(",");
        int m = localObject.length;
        int j = 0;
        while (j < m)
        {
          String str = localObject[j];
          if (str.equals(paramContext.getPackageName()))
          {
            i = 1;
            int k = 1;
            if (paramBoolean)
              i = k;
          }
          else
          {
            localStringBuilder.append(str + ",");
          }
          j += 1;
        }
        if (i == 0)
          localStringBuilder.append(paramContext.getPackageName() + ",");
        i.a(paramContext, "com.baidu.pushservice.le", localStringBuilder.toString());
        return;
      }
    }
    while (!paramBoolean);
    i.a(paramContext, "com.baidu.pushservice.le", paramContext.getPackageName() + ",");
  }

  // ERROR //
  private static void a(HashMap<String, String> paramHashMap)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 4
    //   3: aconst_null
    //   4: astore_3
    //   5: invokestatic 43	android/os/Environment:getExternalStorageDirectory	()Ljava/io/File;
    //   8: invokevirtual 47	java/io/File:getAbsolutePath	()Ljava/lang/String;
    //   11: astore_1
    //   12: new 37	java/io/File
    //   15: dup
    //   16: aload_1
    //   17: ldc 49
    //   19: invokespecial 52	java/io/File:<init>	(Ljava/lang/String;Ljava/lang/String;)V
    //   22: astore_2
    //   23: aload_2
    //   24: invokevirtual 56	java/io/File:exists	()Z
    //   27: ifne +8 -> 35
    //   30: aload_2
    //   31: invokevirtual 59	java/io/File:mkdirs	()Z
    //   34: pop
    //   35: new 233	java/io/FileOutputStream
    //   38: dup
    //   39: new 37	java/io/File
    //   42: dup
    //   43: aload_1
    //   44: ldc 235
    //   46: invokespecial 52	java/io/File:<init>	(Ljava/lang/String;Ljava/lang/String;)V
    //   49: invokespecial 236	java/io/FileOutputStream:<init>	(Ljava/io/File;)V
    //   52: astore_1
    //   53: new 238	java/io/ObjectOutputStream
    //   56: dup
    //   57: aload_1
    //   58: invokespecial 241	java/io/ObjectOutputStream:<init>	(Ljava/io/OutputStream;)V
    //   61: astore_2
    //   62: aload_2
    //   63: aload_0
    //   64: invokevirtual 245	java/io/ObjectOutputStream:writeObject	(Ljava/lang/Object;)V
    //   67: aload_2
    //   68: invokevirtual 248	java/io/ObjectOutputStream:close	()V
    //   71: aload_1
    //   72: invokevirtual 249	java/io/FileOutputStream:close	()V
    //   75: return
    //   76: astore_0
    //   77: ldc 90
    //   79: aload_0
    //   80: invokestatic 95	com/baidu/android/pushservice/h/a:a	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   83: goto -12 -> 71
    //   86: astore_0
    //   87: ldc 90
    //   89: aload_0
    //   90: invokestatic 95	com/baidu/android/pushservice/h/a:a	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   93: return
    //   94: astore_2
    //   95: aconst_null
    //   96: astore_0
    //   97: aload_3
    //   98: astore_1
    //   99: ldc 90
    //   101: aload_2
    //   102: invokestatic 95	com/baidu/android/pushservice/h/a:a	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   105: aload_1
    //   106: ifnull +7 -> 113
    //   109: aload_1
    //   110: invokevirtual 248	java/io/ObjectOutputStream:close	()V
    //   113: aload_0
    //   114: ifnull -39 -> 75
    //   117: aload_0
    //   118: invokevirtual 249	java/io/FileOutputStream:close	()V
    //   121: return
    //   122: astore_0
    //   123: ldc 90
    //   125: aload_0
    //   126: invokestatic 95	com/baidu/android/pushservice/h/a:a	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   129: return
    //   130: astore_1
    //   131: ldc 90
    //   133: aload_1
    //   134: invokestatic 95	com/baidu/android/pushservice/h/a:a	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   137: goto -24 -> 113
    //   140: astore_0
    //   141: aconst_null
    //   142: astore_1
    //   143: aload 4
    //   145: astore_2
    //   146: aload_2
    //   147: ifnull +7 -> 154
    //   150: aload_2
    //   151: invokevirtual 248	java/io/ObjectOutputStream:close	()V
    //   154: aload_1
    //   155: ifnull +7 -> 162
    //   158: aload_1
    //   159: invokevirtual 249	java/io/FileOutputStream:close	()V
    //   162: aload_0
    //   163: athrow
    //   164: astore_2
    //   165: ldc 90
    //   167: aload_2
    //   168: invokestatic 95	com/baidu/android/pushservice/h/a:a	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   171: goto -17 -> 154
    //   174: astore_1
    //   175: ldc 90
    //   177: aload_1
    //   178: invokestatic 95	com/baidu/android/pushservice/h/a:a	(Ljava/lang/String;Ljava/lang/Throwable;)V
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
    //   5	35	94	java/lang/Exception
    //   35	53	94	java/lang/Exception
    //   117	121	122	java/lang/Exception
    //   109	113	130	java/lang/Exception
    //   5	35	140	finally
    //   35	53	140	finally
    //   150	154	164	java/lang/Exception
    //   158	162	174	java/lang/Exception
    //   53	62	184	finally
    //   62	67	191	finally
    //   99	105	195	finally
    //   53	62	207	java/lang/Exception
    //   62	67	215	java/lang/Exception
  }

  public static void b(Context paramContext, int paramInt)
  {
    if (paramContext == null)
    {
      com.baidu.android.pushservice.h.a.d("PushSettings", "setStatisticSendDisabled mContext == null");
      return;
    }
    i.a(paramContext, "com.baidu.pushservice.sd", paramInt);
  }

  public static void b(Context paramContext, long paramLong)
  {
    if (paramContext == null)
    {
      com.baidu.android.pushservice.h.a.d("PushSettings", "setLastSendStatisticTime mContext == null");
      return;
    }
    i.a(paramContext, "com.baidu.pushservice.st", paramLong);
  }

  public static void b(Context paramContext, String paramString)
  {
    if (paramContext == null)
      com.baidu.android.pushservice.h.a.d("PushSettings", "removeUninstalledAppLbsSwitch mContext == null");
    do
    {
      do
        return;
      while (TextUtils.isEmpty(paramString));
      localObject = i.a(paramContext, "com.baidu.pushservice.le");
    }
    while (TextUtils.isEmpty((CharSequence)localObject));
    StringBuilder localStringBuilder = new StringBuilder();
    Object localObject = ((String)localObject).trim().split(",");
    int j = localObject.length;
    int i = 0;
    while (i < j)
    {
      String str = localObject[i];
      if (!str.equals(paramString))
        localStringBuilder.append(str + ",");
      i += 1;
    }
    i.a(paramContext, "com.baidu.pushservice.le", localStringBuilder.toString());
  }

  private static void b(Context paramContext, boolean paramBoolean)
  {
    while (true)
    {
      String str1;
      try
      {
        String str2 = paramContext.getPackageName();
        String str3 = m.v(paramContext);
        str1 = "com.baidu.android.pushservice.action.OPENDEBUGMODE";
        if (!TextUtils.isEmpty(str3))
        {
          if (!str2.equals(str3))
            break label54;
          return;
          l.a(paramContext, new Intent(str1));
          return;
        }
      }
      catch (Exception paramContext)
      {
        com.baidu.android.pushservice.h.a.a("PushSettings", paramContext);
      }
      return;
      label54: if (!paramBoolean)
        str1 = "com.baidu.android.pushservice.action.CLOSEDEBUGMODE";
    }
  }

  public static boolean b(Context paramContext)
  {
    if (paramContext == null);
    do
    {
      return false;
      if (a == -1)
        a = i.d(paramContext, "com.baidu.android.pushservice.PushSettings.debug_mode", -1);
    }
    while (a != 1);
    return true;
  }

  public static int c(Context paramContext)
  {
    if (paramContext == null)
      com.baidu.android.pushservice.h.a.e("PushSettings", "getCurPeriod mContext == null");
    int i;
    do
    {
      return 0;
      i = i.b(paramContext, "com.baidu.pushservice.cur_period", 0);
    }
    while (i < 0);
    return i;
  }

  public static void c(Context paramContext, int paramInt)
  {
    if (paramContext == null)
    {
      com.baidu.android.pushservice.h.a.d("PushSettings", "setCurPeriod mContext == null");
      return;
    }
    i.a(paramContext, "com.baidu.pushservice.lsi", paramInt * 1000);
  }

  public static long d(Context paramContext)
  {
    if (paramContext == null)
    {
      com.baidu.android.pushservice.h.a.e("PushSettings", "getLastSendStatisticTime mContext == null");
      return 0L;
    }
    return i.b(paramContext, "com.baidu.pushservice.cst");
  }

  public static long e(Context paramContext)
  {
    long l2 = i.b(paramContext, "com.baidu.pushservice.st");
    long l1 = l2;
    if (l2 <= 0L)
      l1 = 43200000L;
    return l1;
  }

  public static void enableDebugMode(Context paramContext, boolean paramBoolean)
  {
    if (paramBoolean)
      i.c(paramContext, "com.baidu.android.pushservice.PushSettings.debug_mode", 1);
    while (true)
    {
      b(paramContext, paramBoolean);
      return;
      i.c(paramContext, "com.baidu.android.pushservice.PushSettings.debug_mode", 0);
    }
  }

  public static boolean f(Context paramContext)
  {
    return i.b(paramContext, "com.baidu.pushservice.sd", 0) == 1;
  }

  public static int g(Context paramContext)
  {
    int i;
    if (paramContext == null)
    {
      com.baidu.android.pushservice.h.a.e("PushSettings", "getLbsSendInterval mContext == null");
      i = 0;
    }
    int j;
    do
    {
      return i;
      j = i.b(paramContext, "com.baidu.pushservice.lsi", -1);
      i = j;
    }
    while (j >= 0);
    return 1800000;
  }

  public static boolean h(Context paramContext)
  {
    return !TextUtils.isEmpty(i.a(paramContext, "com.baidu.pushservice.le"));
  }

  public static boolean i(Context paramContext)
  {
    return TextUtils.equals(i.a(paramContext, "com.baidu.pushservice.lms"), "off");
  }

  public static void j(Context paramContext)
  {
    if (paramContext == null)
      com.baidu.android.pushservice.h.a.d("PushSettings", "tofms mContext == null");
    i.a(paramContext, "com.baidu.pushservice.lms", "off");
  }

  public static void k(Context paramContext)
  {
    if (paramContext == null)
      com.baidu.android.pushservice.h.a.d("PushSettings", "toms mContext == null");
    i.a(paramContext, "com.baidu.pushservice.lms", "");
  }

  public static void l(Context paramContext)
  {
    if (paramContext == null)
      com.baidu.android.pushservice.h.a.d("PushSettings", "refreshLbsSwitchInfo mContext == null");
    Object localObject;
    do
    {
      return;
      localObject = i.a(paramContext, "com.baidu.pushservice.le");
    }
    while (TextUtils.isEmpty((CharSequence)localObject));
    StringBuilder localStringBuilder = new StringBuilder();
    String[] arrayOfString = ((String)localObject).trim().split(",");
    PackageManager localPackageManager = paramContext.getPackageManager();
    int j = arrayOfString.length;
    int i = 0;
    while (true)
      if (i < j)
      {
        String str = arrayOfString[i];
        localObject = null;
        try
        {
          PackageInfo localPackageInfo = localPackageManager.getPackageInfo(str, 0);
          localObject = localPackageInfo;
          if (localObject != null)
            localStringBuilder.append(str + ",");
          i += 1;
        }
        catch (PackageManager.NameNotFoundException localNameNotFoundException)
        {
          while (true)
            com.baidu.android.pushservice.h.a.d("PushSettings", com.baidu.android.pushservice.h.a.a(localNameNotFoundException));
        }
      }
    i.a(paramContext, "com.baidu.pushservice.le", localStringBuilder.toString());
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.baidu.android.pushservice.PushSettings
 * JD-Core Version:    0.6.2
 */