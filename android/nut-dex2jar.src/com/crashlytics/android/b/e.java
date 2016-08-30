package com.crashlytics.android.b;

import android.annotation.TargetApi;
import android.content.Context;
import android.os.Build.VERSION;
import android.text.TextUtils;
import io.fabric.sdk.android.f;
import io.fabric.sdk.android.o;
import io.fabric.sdk.android.r;
import io.fabric.sdk.android.services.b.s;
import io.fabric.sdk.android.services.b.x;
import io.fabric.sdk.android.services.b.y;
import java.util.HashMap;
import java.util.Map;

public final class e extends o<Boolean>
  implements s
{
  private final io.fabric.sdk.android.services.a.b<String> a = new io.fabric.sdk.android.services.a.b();
  private final j b = new j();
  private l c;

  // ERROR //
  private static f a(Context paramContext)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_1
    //   2: aload_0
    //   3: invokevirtual 40	android/content/Context:getAssets	()Landroid/content/res/AssetManager;
    //   6: ldc 42
    //   8: invokevirtual 48	android/content/res/AssetManager:open	(Ljava/lang/String;)Ljava/io/InputStream;
    //   11: astore_0
    //   12: aload_0
    //   13: ifnull +249 -> 262
    //   16: new 50	java/util/Properties
    //   19: dup
    //   20: invokespecial 51	java/util/Properties:<init>	()V
    //   23: astore_1
    //   24: aload_1
    //   25: aload_0
    //   26: invokevirtual 55	java/util/Properties:load	(Ljava/io/InputStream;)V
    //   29: new 57	com/crashlytics/android/b/f
    //   32: dup
    //   33: aload_1
    //   34: ldc 59
    //   36: invokevirtual 63	java/util/Properties:getProperty	(Ljava/lang/String;)Ljava/lang/String;
    //   39: aload_1
    //   40: ldc 65
    //   42: invokevirtual 63	java/util/Properties:getProperty	(Ljava/lang/String;)Ljava/lang/String;
    //   45: aload_1
    //   46: ldc 67
    //   48: invokevirtual 63	java/util/Properties:getProperty	(Ljava/lang/String;)Ljava/lang/String;
    //   51: aload_1
    //   52: ldc 69
    //   54: invokevirtual 63	java/util/Properties:getProperty	(Ljava/lang/String;)Ljava/lang/String;
    //   57: invokespecial 72	com/crashlytics/android/b/f:<init>	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    //   60: astore_2
    //   61: invokestatic 77	io/fabric/sdk/android/f:b	()Lio/fabric/sdk/android/r;
    //   64: ldc 79
    //   66: new 81	java/lang/StringBuilder
    //   69: dup
    //   70: invokespecial 82	java/lang/StringBuilder:<init>	()V
    //   73: aload_2
    //   74: getfield 86	com/crashlytics/android/b/f:d	Ljava/lang/String;
    //   77: invokevirtual 90	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   80: ldc 92
    //   82: invokevirtual 90	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   85: aload_2
    //   86: getfield 94	com/crashlytics/android/b/f:b	Ljava/lang/String;
    //   89: invokevirtual 90	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   92: ldc 96
    //   94: invokevirtual 90	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   97: aload_2
    //   98: getfield 98	com/crashlytics/android/b/f:a	Ljava/lang/String;
    //   101: invokevirtual 90	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   104: ldc 100
    //   106: invokevirtual 90	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   109: aload_2
    //   110: getfield 102	com/crashlytics/android/b/f:c	Ljava/lang/String;
    //   113: invokevirtual 90	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   116: invokevirtual 106	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   119: invokeinterface 111 3 0
    //   124: aload_2
    //   125: astore_1
    //   126: aload_1
    //   127: astore_2
    //   128: aload_0
    //   129: ifnull +9 -> 138
    //   132: aload_0
    //   133: invokevirtual 116	java/io/InputStream:close	()V
    //   136: aload_1
    //   137: astore_2
    //   138: aload_2
    //   139: areturn
    //   140: astore_0
    //   141: invokestatic 77	io/fabric/sdk/android/f:b	()Lio/fabric/sdk/android/r;
    //   144: ldc 79
    //   146: ldc 118
    //   148: aload_0
    //   149: invokeinterface 121 4 0
    //   154: aload_1
    //   155: areturn
    //   156: astore_2
    //   157: aconst_null
    //   158: astore_0
    //   159: invokestatic 77	io/fabric/sdk/android/f:b	()Lio/fabric/sdk/android/r;
    //   162: ldc 79
    //   164: ldc 123
    //   166: aload_2
    //   167: invokeinterface 121 4 0
    //   172: aload_0
    //   173: astore_2
    //   174: aload_1
    //   175: ifnull -37 -> 138
    //   178: aload_1
    //   179: invokevirtual 116	java/io/InputStream:close	()V
    //   182: aload_0
    //   183: areturn
    //   184: astore_1
    //   185: invokestatic 77	io/fabric/sdk/android/f:b	()Lio/fabric/sdk/android/r;
    //   188: ldc 79
    //   190: ldc 118
    //   192: aload_1
    //   193: invokeinterface 121 4 0
    //   198: aload_0
    //   199: areturn
    //   200: astore_1
    //   201: aconst_null
    //   202: astore_0
    //   203: aload_0
    //   204: ifnull +7 -> 211
    //   207: aload_0
    //   208: invokevirtual 116	java/io/InputStream:close	()V
    //   211: aload_1
    //   212: athrow
    //   213: astore_0
    //   214: invokestatic 77	io/fabric/sdk/android/f:b	()Lio/fabric/sdk/android/r;
    //   217: ldc 79
    //   219: ldc 118
    //   221: aload_0
    //   222: invokeinterface 121 4 0
    //   227: goto -16 -> 211
    //   230: astore_1
    //   231: goto -28 -> 203
    //   234: astore_2
    //   235: aload_1
    //   236: astore_0
    //   237: aload_2
    //   238: astore_1
    //   239: goto -36 -> 203
    //   242: astore_2
    //   243: aconst_null
    //   244: astore_3
    //   245: aload_0
    //   246: astore_1
    //   247: aload_3
    //   248: astore_0
    //   249: goto -90 -> 159
    //   252: astore_3
    //   253: aload_0
    //   254: astore_1
    //   255: aload_2
    //   256: astore_0
    //   257: aload_3
    //   258: astore_2
    //   259: goto -100 -> 159
    //   262: aconst_null
    //   263: astore_1
    //   264: goto -138 -> 126
    //
    // Exception table:
    //   from	to	target	type
    //   132	136	140	java/io/IOException
    //   2	12	156	java/lang/Exception
    //   178	182	184	java/io/IOException
    //   2	12	200	finally
    //   207	211	213	java/io/IOException
    //   16	61	230	finally
    //   61	124	230	finally
    //   159	172	234	finally
    //   16	61	242	java/lang/Exception
    //   61	124	252	java/lang/Exception
  }

  private String a(Context paramContext, String paramString)
  {
    boolean bool;
    if (Build.VERSION.SDK_INT < 11)
      if (paramString == null)
        bool = true;
    while (bool)
    {
      f.b().a("Beta", "App was possibly installed by Beta. Getting device token");
      try
      {
        paramContext = (String)this.a.a(paramContext, this.b);
        bool = "".equals(paramContext);
        if (bool)
          paramContext = null;
        return paramContext;
        bool = false;
        continue;
        bool = "io.crash.air".equals(paramString);
      }
      catch (Exception paramContext)
      {
        f.b().c("Beta", "Failed to load the Beta device token", paramContext);
        return null;
      }
    }
    f.b().a("Beta", "App was not installed by Beta. Skipping device token");
    return null;
  }

  public final String a()
  {
    return "1.1.4.92";
  }

  public final String b()
  {
    return "com.crashlytics.sdk.android:beta";
  }

  @TargetApi(14)
  protected final boolean c_()
  {
    this.q.getApplicationContext();
    if (Build.VERSION.SDK_INT >= 14);
    for (Object localObject = new b(this.o.d, this.o.c); ; localObject = new k())
    {
      this.c = ((l)localObject);
      return true;
    }
  }

  public final Map<y, String> e()
  {
    String str = this.s.e();
    str = a(this.q, str);
    HashMap localHashMap = new HashMap();
    if (!TextUtils.isEmpty(str))
      localHashMap.put(y.c, str);
    return localHashMap;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.crashlytics.android.b.e
 * JD-Core Version:    0.6.2
 */