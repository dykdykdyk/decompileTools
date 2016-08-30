package com.crashlytics.android.b;

import io.fabric.sdk.android.services.a.d;
import java.io.IOException;
import java.util.zip.ZipEntry;
import java.util.zip.ZipInputStream;

public final class j
  implements d<String>
{
  private static String a(ZipInputStream paramZipInputStream)
    throws IOException
  {
    Object localObject;
    do
    {
      localObject = paramZipInputStream.getNextEntry();
      if (localObject == null)
        break;
      localObject = ((ZipEntry)localObject).getName();
    }
    while (!((String)localObject).startsWith("assets/com.crashlytics.android.beta/dirfactor-device-token="));
    return ((String)localObject).substring(59, ((String)localObject).length() - 1);
    return "";
  }

  // ERROR //
  private static String b(android.content.Context paramContext)
    throws java.lang.Exception
  {
    // Byte code:
    //   0: invokestatic 61	java/lang/System:nanoTime	()J
    //   3: lstore_3
    //   4: ldc 46
    //   6: astore 7
    //   8: aconst_null
    //   9: astore 8
    //   11: aconst_null
    //   12: astore 5
    //   14: aconst_null
    //   15: astore 6
    //   17: new 18	java/util/zip/ZipInputStream
    //   20: dup
    //   21: new 63	java/io/FileInputStream
    //   24: dup
    //   25: aload_0
    //   26: invokevirtual 69	android/content/Context:getPackageManager	()Landroid/content/pm/PackageManager;
    //   29: aload_0
    //   30: invokevirtual 72	android/content/Context:getPackageName	()Ljava/lang/String;
    //   33: iconst_0
    //   34: invokevirtual 78	android/content/pm/PackageManager:getApplicationInfo	(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    //   37: getfield 84	android/content/pm/ApplicationInfo:sourceDir	Ljava/lang/String;
    //   40: invokespecial 87	java/io/FileInputStream:<init>	(Ljava/lang/String;)V
    //   43: invokespecial 90	java/util/zip/ZipInputStream:<init>	(Ljava/io/InputStream;)V
    //   46: astore_0
    //   47: aload_0
    //   48: astore 5
    //   50: aload_0
    //   51: invokestatic 92	com/crashlytics/android/b/j:a	(Ljava/util/zip/ZipInputStream;)Ljava/lang/String;
    //   54: astore 6
    //   56: aload 6
    //   58: astore 5
    //   60: aload_0
    //   61: invokevirtual 95	java/util/zip/ZipInputStream:close	()V
    //   64: invokestatic 61	java/lang/System:nanoTime	()J
    //   67: lload_3
    //   68: lsub
    //   69: l2d
    //   70: ldc2_w 96
    //   73: ddiv
    //   74: dstore_1
    //   75: invokestatic 102	io/fabric/sdk/android/f:b	()Lio/fabric/sdk/android/r;
    //   78: ldc 104
    //   80: new 106	java/lang/StringBuilder
    //   83: dup
    //   84: ldc 108
    //   86: invokespecial 109	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   89: dload_1
    //   90: invokevirtual 113	java/lang/StringBuilder:append	(D)Ljava/lang/StringBuilder;
    //   93: ldc 115
    //   95: invokevirtual 118	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   98: invokevirtual 121	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   101: invokeinterface 126 3 0
    //   106: aload 5
    //   108: areturn
    //   109: astore_0
    //   110: invokestatic 102	io/fabric/sdk/android/f:b	()Lio/fabric/sdk/android/r;
    //   113: ldc 104
    //   115: ldc 128
    //   117: aload_0
    //   118: invokeinterface 132 4 0
    //   123: goto -59 -> 64
    //   126: astore 6
    //   128: aconst_null
    //   129: astore_0
    //   130: aload_0
    //   131: astore 5
    //   133: invokestatic 102	io/fabric/sdk/android/f:b	()Lio/fabric/sdk/android/r;
    //   136: ldc 104
    //   138: ldc 134
    //   140: aload 6
    //   142: invokeinterface 132 4 0
    //   147: aload 7
    //   149: astore 5
    //   151: aload_0
    //   152: ifnull -88 -> 64
    //   155: aload_0
    //   156: invokevirtual 95	java/util/zip/ZipInputStream:close	()V
    //   159: aload 7
    //   161: astore 5
    //   163: goto -99 -> 64
    //   166: astore_0
    //   167: invokestatic 102	io/fabric/sdk/android/f:b	()Lio/fabric/sdk/android/r;
    //   170: ldc 104
    //   172: ldc 128
    //   174: aload_0
    //   175: invokeinterface 132 4 0
    //   180: aload 7
    //   182: astore 5
    //   184: goto -120 -> 64
    //   187: astore 5
    //   189: aload 6
    //   191: astore_0
    //   192: aload 5
    //   194: astore 6
    //   196: aload_0
    //   197: astore 5
    //   199: invokestatic 102	io/fabric/sdk/android/f:b	()Lio/fabric/sdk/android/r;
    //   202: ldc 104
    //   204: ldc 136
    //   206: aload 6
    //   208: invokeinterface 132 4 0
    //   213: aload 7
    //   215: astore 5
    //   217: aload_0
    //   218: ifnull -154 -> 64
    //   221: aload_0
    //   222: invokevirtual 95	java/util/zip/ZipInputStream:close	()V
    //   225: aload 7
    //   227: astore 5
    //   229: goto -165 -> 64
    //   232: astore_0
    //   233: invokestatic 102	io/fabric/sdk/android/f:b	()Lio/fabric/sdk/android/r;
    //   236: ldc 104
    //   238: ldc 128
    //   240: aload_0
    //   241: invokeinterface 132 4 0
    //   246: aload 7
    //   248: astore 5
    //   250: goto -186 -> 64
    //   253: astore 6
    //   255: aload 8
    //   257: astore_0
    //   258: aload_0
    //   259: astore 5
    //   261: invokestatic 102	io/fabric/sdk/android/f:b	()Lio/fabric/sdk/android/r;
    //   264: ldc 104
    //   266: ldc 138
    //   268: aload 6
    //   270: invokeinterface 132 4 0
    //   275: aload 7
    //   277: astore 5
    //   279: aload_0
    //   280: ifnull -216 -> 64
    //   283: aload_0
    //   284: invokevirtual 95	java/util/zip/ZipInputStream:close	()V
    //   287: aload 7
    //   289: astore 5
    //   291: goto -227 -> 64
    //   294: astore_0
    //   295: invokestatic 102	io/fabric/sdk/android/f:b	()Lio/fabric/sdk/android/r;
    //   298: ldc 104
    //   300: ldc 128
    //   302: aload_0
    //   303: invokeinterface 132 4 0
    //   308: aload 7
    //   310: astore 5
    //   312: goto -248 -> 64
    //   315: astore_0
    //   316: aload 5
    //   318: ifnull +8 -> 326
    //   321: aload 5
    //   323: invokevirtual 95	java/util/zip/ZipInputStream:close	()V
    //   326: aload_0
    //   327: athrow
    //   328: astore 5
    //   330: invokestatic 102	io/fabric/sdk/android/f:b	()Lio/fabric/sdk/android/r;
    //   333: ldc 104
    //   335: ldc 128
    //   337: aload 5
    //   339: invokeinterface 132 4 0
    //   344: goto -18 -> 326
    //   347: astore_0
    //   348: goto -32 -> 316
    //   351: astore 6
    //   353: goto -95 -> 258
    //   356: astore 6
    //   358: goto -162 -> 196
    //   361: astore 6
    //   363: goto -233 -> 130
    //
    // Exception table:
    //   from	to	target	type
    //   60	64	109	java/io/IOException
    //   17	47	126	android/content/pm/PackageManager$NameNotFoundException
    //   155	159	166	java/io/IOException
    //   17	47	187	java/io/FileNotFoundException
    //   221	225	232	java/io/IOException
    //   17	47	253	java/io/IOException
    //   283	287	294	java/io/IOException
    //   17	47	315	finally
    //   199	213	315	finally
    //   261	275	315	finally
    //   321	326	328	java/io/IOException
    //   50	56	347	finally
    //   133	147	347	finally
    //   50	56	351	java/io/IOException
    //   50	56	356	java/io/FileNotFoundException
    //   50	56	361	android/content/pm/PackageManager$NameNotFoundException
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.crashlytics.android.b.j
 * JD-Core Version:    0.6.2
 */