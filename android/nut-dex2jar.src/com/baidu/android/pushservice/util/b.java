package com.baidu.android.pushservice.util;

import android.content.Context;
import android.provider.Settings.System;
import org.json.JSONObject;

public class b
{
  private static final Object a = new Object();

  // ERROR //
  public static String a(Context paramContext, String paramString)
  {
    // Byte code:
    //   0: aload_0
    //   1: ifnonnull +8 -> 9
    //   4: ldc 19
    //   6: astore_3
    //   7: aload_3
    //   8: areturn
    //   9: aconst_null
    //   10: astore_2
    //   11: aload_0
    //   12: invokevirtual 25	android/content/Context:getContentResolver	()Landroid/content/ContentResolver;
    //   15: aload_1
    //   16: invokestatic 31	android/provider/Settings$System:getString	(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    //   19: astore_3
    //   20: aload_3
    //   21: astore_2
    //   22: aload_2
    //   23: astore_3
    //   24: aload_2
    //   25: invokestatic 37	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   28: ifeq -21 -> 7
    //   31: aload_0
    //   32: aload_1
    //   33: invokestatic 41	com/baidu/android/pushservice/util/b:b	(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;
    //   36: astore_3
    //   37: aload_3
    //   38: ifnull +51 -> 89
    //   41: aload_3
    //   42: instanceof 43
    //   45: ifeq +44 -> 89
    //   48: aload_3
    //   49: invokestatic 47	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   52: astore_3
    //   53: aload_3
    //   54: areturn
    //   55: astore_3
    //   56: ldc 49
    //   58: new 51	java/lang/StringBuilder
    //   61: dup
    //   62: ldc 53
    //   64: invokespecial 56	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   67: aload_1
    //   68: invokevirtual 60	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   71: ldc 62
    //   73: invokevirtual 60	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   76: invokevirtual 66	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   79: aload_0
    //   80: invokevirtual 70	android/content/Context:getApplicationContext	()Landroid/content/Context;
    //   83: invokestatic 75	com/baidu/android/pushservice/h/b:b	(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    //   86: goto -64 -> 22
    //   89: ldc 49
    //   91: ldc 77
    //   93: invokestatic 83	com/baidu/android/pushservice/h/a:e	(Ljava/lang/String;Ljava/lang/String;)V
    //   96: aload_2
    //   97: areturn
    //   98: astore_3
    //   99: ldc 49
    //   101: new 51	java/lang/StringBuilder
    //   104: dup
    //   105: ldc 85
    //   107: invokespecial 56	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   110: aload_1
    //   111: invokevirtual 60	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   114: ldc 87
    //   116: invokevirtual 60	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   119: invokevirtual 66	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   122: aload_0
    //   123: invokevirtual 70	android/content/Context:getApplicationContext	()Landroid/content/Context;
    //   126: invokestatic 75	com/baidu/android/pushservice/h/b:b	(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    //   129: aload_2
    //   130: areturn
    //
    // Exception table:
    //   from	to	target	type
    //   11	20	55	java/lang/Exception
    //   31	37	98	java/lang/Exception
    //   41	53	98	java/lang/Exception
    //   89	96	98	java/lang/Exception
  }

  // ERROR //
  private static JSONObject a(Context paramContext)
  {
    // Byte code:
    //   0: new 92	org/json/JSONObject
    //   3: dup
    //   4: invokespecial 93	org/json/JSONObject:<init>	()V
    //   7: astore_3
    //   8: aconst_null
    //   9: astore_2
    //   10: aconst_null
    //   11: astore 4
    //   13: aload_2
    //   14: astore_1
    //   15: new 95	java/io/File
    //   18: dup
    //   19: invokestatic 101	android/os/Environment:getExternalStorageDirectory	()Ljava/io/File;
    //   22: ldc 103
    //   24: invokespecial 106	java/io/File:<init>	(Ljava/io/File;Ljava/lang/String;)V
    //   27: astore 5
    //   29: aload_2
    //   30: astore_1
    //   31: aload 5
    //   33: invokevirtual 110	java/io/File:exists	()Z
    //   36: ifne +11 -> 47
    //   39: aload_2
    //   40: astore_1
    //   41: aload 5
    //   43: invokevirtual 113	java/io/File:mkdirs	()Z
    //   46: pop
    //   47: aload_2
    //   48: astore_1
    //   49: new 95	java/io/File
    //   52: dup
    //   53: aload 5
    //   55: ldc 115
    //   57: invokespecial 106	java/io/File:<init>	(Ljava/io/File;Ljava/lang/String;)V
    //   60: astore 5
    //   62: aload_2
    //   63: astore_1
    //   64: aload 5
    //   66: invokevirtual 110	java/io/File:exists	()Z
    //   69: ifeq +165 -> 234
    //   72: aload_2
    //   73: astore_1
    //   74: new 117	java/io/FileInputStream
    //   77: dup
    //   78: aload 5
    //   80: invokespecial 120	java/io/FileInputStream:<init>	(Ljava/io/File;)V
    //   83: astore_2
    //   84: aload_2
    //   85: invokevirtual 124	java/io/FileInputStream:available	()I
    //   88: newarray byte
    //   90: astore_1
    //   91: aload_2
    //   92: aload_1
    //   93: invokevirtual 128	java/io/FileInputStream:read	([B)I
    //   96: pop
    //   97: new 92	org/json/JSONObject
    //   100: dup
    //   101: aload_0
    //   102: ldc 19
    //   104: new 43	java/lang/String
    //   107: dup
    //   108: aload_1
    //   109: ldc 130
    //   111: invokespecial 133	java/lang/String:<init>	([BLjava/lang/String;)V
    //   114: invokestatic 139	com/baidu/android/pushservice/jni/BaiduAppSSOJni:getDecrypted	(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   117: invokespecial 140	org/json/JSONObject:<init>	(Ljava/lang/String;)V
    //   120: astore_1
    //   121: aload_1
    //   122: astore_0
    //   123: aload_0
    //   124: astore_1
    //   125: aload_2
    //   126: ifnull +9 -> 135
    //   129: aload_2
    //   130: invokevirtual 143	java/io/FileInputStream:close	()V
    //   133: aload_0
    //   134: astore_1
    //   135: aload_1
    //   136: areturn
    //   137: astore_1
    //   138: ldc 49
    //   140: aload_1
    //   141: invokestatic 146	com/baidu/android/pushservice/h/a:a	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   144: aload_0
    //   145: areturn
    //   146: astore_1
    //   147: aload 4
    //   149: astore_2
    //   150: aload_1
    //   151: astore 4
    //   153: aload_2
    //   154: astore_1
    //   155: ldc 49
    //   157: new 51	java/lang/StringBuilder
    //   160: dup
    //   161: ldc 148
    //   163: invokespecial 56	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   166: aload 4
    //   168: invokevirtual 151	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   171: invokevirtual 66	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   174: aload_0
    //   175: invokevirtual 70	android/content/Context:getApplicationContext	()Landroid/content/Context;
    //   178: invokestatic 75	com/baidu/android/pushservice/h/b:b	(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    //   181: aload_3
    //   182: astore_1
    //   183: aload_2
    //   184: ifnull -49 -> 135
    //   187: aload_2
    //   188: invokevirtual 143	java/io/FileInputStream:close	()V
    //   191: aload_3
    //   192: areturn
    //   193: astore_0
    //   194: ldc 49
    //   196: aload_0
    //   197: invokestatic 146	com/baidu/android/pushservice/h/a:a	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   200: aload_3
    //   201: areturn
    //   202: astore_0
    //   203: aload_1
    //   204: ifnull +7 -> 211
    //   207: aload_1
    //   208: invokevirtual 143	java/io/FileInputStream:close	()V
    //   211: aload_0
    //   212: athrow
    //   213: astore_1
    //   214: ldc 49
    //   216: aload_1
    //   217: invokestatic 146	com/baidu/android/pushservice/h/a:a	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   220: goto -9 -> 211
    //   223: astore_0
    //   224: aload_2
    //   225: astore_1
    //   226: goto -23 -> 203
    //   229: astore 4
    //   231: goto -78 -> 153
    //   234: aconst_null
    //   235: astore_2
    //   236: aload_3
    //   237: astore_0
    //   238: goto -115 -> 123
    //
    // Exception table:
    //   from	to	target	type
    //   129	133	137	java/io/IOException
    //   15	29	146	java/lang/Exception
    //   31	39	146	java/lang/Exception
    //   41	47	146	java/lang/Exception
    //   49	62	146	java/lang/Exception
    //   64	72	146	java/lang/Exception
    //   74	84	146	java/lang/Exception
    //   187	191	193	java/io/IOException
    //   15	29	202	finally
    //   31	39	202	finally
    //   41	47	202	finally
    //   49	62	202	finally
    //   64	72	202	finally
    //   74	84	202	finally
    //   155	181	202	finally
    //   207	211	213	java/io/IOException
    //   84	121	223	finally
    //   84	121	229	java/lang/Exception
  }

  public static void a(Context paramContext, String paramString, int paramInt)
  {
    if (paramContext == null);
    while (true)
    {
      return;
      int i = 0;
      try
      {
        boolean bool = Settings.System.putInt(paramContext.getContentResolver(), paramString, paramInt);
        i = bool;
        if (i != 0)
          continue;
        a(paramContext, paramString, Integer.valueOf(paramInt));
        return;
      }
      catch (Exception localException)
      {
        while (true)
          com.baidu.android.pushservice.h.b.b("CommonParams", "putInt " + paramString + " Exception. ", paramContext.getApplicationContext());
      }
    }
  }

  public static void a(Context paramContext, String paramString1, String paramString2)
  {
    if (paramContext == null);
    while (true)
    {
      return;
      int i = 0;
      try
      {
        boolean bool = Settings.System.putString(paramContext.getContentResolver(), paramString1, paramString2);
        i = bool;
        if (i != 0)
          continue;
        a(paramContext, paramString1, paramString2);
        return;
      }
      catch (Exception localException)
      {
        while (true)
          com.baidu.android.pushservice.h.b.b("CommonParams", "putString " + paramString1 + " Exception. ", paramContext.getApplicationContext());
      }
    }
  }

  // ERROR //
  private static boolean a(Context paramContext, String paramString, Object paramObject)
  {
    // Byte code:
    //   0: aload_0
    //   1: ldc 175
    //   3: invokestatic 181	com/baidu/android/pushservice/util/m:r	(Landroid/content/Context;Ljava/lang/String;)Z
    //   6: ifeq +294 -> 300
    //   9: getstatic 13	com/baidu/android/pushservice/util/b:a	Ljava/lang/Object;
    //   12: astore 7
    //   14: aload 7
    //   16: monitorenter
    //   17: aload_0
    //   18: invokestatic 183	com/baidu/android/pushservice/util/b:a	(Landroid/content/Context;)Lorg/json/JSONObject;
    //   21: astore 8
    //   23: aload 8
    //   25: aload_1
    //   26: invokevirtual 187	org/json/JSONObject:opt	(Ljava/lang/String;)Ljava/lang/Object;
    //   29: astore 4
    //   31: aconst_null
    //   32: astore 6
    //   34: aconst_null
    //   35: astore 5
    //   37: aload 4
    //   39: ifnull +10 -> 49
    //   42: aload 8
    //   44: aload_1
    //   45: invokevirtual 190	org/json/JSONObject:remove	(Ljava/lang/String;)Ljava/lang/Object;
    //   48: pop
    //   49: aload 6
    //   51: astore 4
    //   53: aload 8
    //   55: aload_1
    //   56: aload_2
    //   57: invokevirtual 194	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   60: pop
    //   61: aload 6
    //   63: astore 4
    //   65: new 95	java/io/File
    //   68: dup
    //   69: invokestatic 101	android/os/Environment:getExternalStorageDirectory	()Ljava/io/File;
    //   72: ldc 103
    //   74: invokespecial 106	java/io/File:<init>	(Ljava/io/File;Ljava/lang/String;)V
    //   77: astore_1
    //   78: aload 6
    //   80: astore 4
    //   82: aload_1
    //   83: invokevirtual 110	java/io/File:exists	()Z
    //   86: ifne +12 -> 98
    //   89: aload 6
    //   91: astore 4
    //   93: aload_1
    //   94: invokevirtual 113	java/io/File:mkdirs	()Z
    //   97: pop
    //   98: aload 6
    //   100: astore 4
    //   102: new 95	java/io/File
    //   105: dup
    //   106: aload_1
    //   107: ldc 115
    //   109: invokespecial 106	java/io/File:<init>	(Ljava/io/File;Ljava/lang/String;)V
    //   112: astore_1
    //   113: aload 6
    //   115: astore 4
    //   117: aload_0
    //   118: ldc 19
    //   120: aload 8
    //   122: invokevirtual 195	org/json/JSONObject:toString	()Ljava/lang/String;
    //   125: invokestatic 198	com/baidu/android/pushservice/jni/BaiduAppSSOJni:getEncrypted	(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   128: astore_2
    //   129: aload 6
    //   131: astore 4
    //   133: aload_2
    //   134: invokestatic 37	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   137: istore_3
    //   138: iload_3
    //   139: ifeq +8 -> 147
    //   142: aload 7
    //   144: monitorexit
    //   145: iconst_0
    //   146: ireturn
    //   147: aload 6
    //   149: astore 4
    //   151: aload_1
    //   152: invokevirtual 110	java/io/File:exists	()Z
    //   155: ifeq +12 -> 167
    //   158: aload 6
    //   160: astore 4
    //   162: aload_1
    //   163: invokevirtual 201	java/io/File:delete	()Z
    //   166: pop
    //   167: aload 6
    //   169: astore 4
    //   171: aload_1
    //   172: invokevirtual 204	java/io/File:createNewFile	()Z
    //   175: pop
    //   176: aload 6
    //   178: astore 4
    //   180: new 206	java/io/FileOutputStream
    //   183: dup
    //   184: aload_1
    //   185: invokespecial 207	java/io/FileOutputStream:<init>	(Ljava/io/File;)V
    //   188: astore_1
    //   189: aload_1
    //   190: aload_2
    //   191: invokevirtual 211	java/lang/String:getBytes	()[B
    //   194: invokevirtual 215	java/io/FileOutputStream:write	([B)V
    //   197: aload_1
    //   198: invokevirtual 216	java/io/FileOutputStream:close	()V
    //   201: aload 7
    //   203: monitorexit
    //   204: iconst_1
    //   205: ireturn
    //   206: astore_0
    //   207: ldc 49
    //   209: aload_0
    //   210: invokestatic 146	com/baidu/android/pushservice/h/a:a	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   213: goto -12 -> 201
    //   216: astore_0
    //   217: aload 7
    //   219: monitorexit
    //   220: aload_0
    //   221: athrow
    //   222: astore_2
    //   223: aload 5
    //   225: astore_1
    //   226: aload_1
    //   227: astore 4
    //   229: ldc 49
    //   231: new 51	java/lang/StringBuilder
    //   234: dup
    //   235: ldc 218
    //   237: invokespecial 56	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   240: aload_2
    //   241: invokevirtual 151	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   244: invokevirtual 66	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   247: aload_0
    //   248: invokevirtual 70	android/content/Context:getApplicationContext	()Landroid/content/Context;
    //   251: invokestatic 75	com/baidu/android/pushservice/h/b:b	(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    //   254: aload_1
    //   255: ifnull +7 -> 262
    //   258: aload_1
    //   259: invokevirtual 216	java/io/FileOutputStream:close	()V
    //   262: aload 7
    //   264: monitorexit
    //   265: iconst_0
    //   266: ireturn
    //   267: astore_0
    //   268: ldc 49
    //   270: aload_0
    //   271: invokestatic 146	com/baidu/android/pushservice/h/a:a	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   274: goto -12 -> 262
    //   277: astore_0
    //   278: aload 4
    //   280: ifnull +8 -> 288
    //   283: aload 4
    //   285: invokevirtual 216	java/io/FileOutputStream:close	()V
    //   288: aload_0
    //   289: athrow
    //   290: astore_1
    //   291: ldc 49
    //   293: aload_1
    //   294: invokestatic 146	com/baidu/android/pushservice/h/a:a	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   297: goto -9 -> 288
    //   300: ldc 49
    //   302: ldc 220
    //   304: aload_0
    //   305: invokevirtual 70	android/content/Context:getApplicationContext	()Landroid/content/Context;
    //   308: invokestatic 75	com/baidu/android/pushservice/h/b:b	(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    //   311: iconst_0
    //   312: ireturn
    //   313: astore_0
    //   314: aload_1
    //   315: astore 4
    //   317: goto -39 -> 278
    //   320: astore_2
    //   321: goto -95 -> 226
    //
    // Exception table:
    //   from	to	target	type
    //   197	201	206	java/io/IOException
    //   17	31	216	finally
    //   42	49	216	finally
    //   142	145	216	finally
    //   197	201	216	finally
    //   201	204	216	finally
    //   207	213	216	finally
    //   217	220	216	finally
    //   258	262	216	finally
    //   262	265	216	finally
    //   268	274	216	finally
    //   283	288	216	finally
    //   288	290	216	finally
    //   291	297	216	finally
    //   53	61	222	java/lang/Exception
    //   65	78	222	java/lang/Exception
    //   82	89	222	java/lang/Exception
    //   93	98	222	java/lang/Exception
    //   102	113	222	java/lang/Exception
    //   117	129	222	java/lang/Exception
    //   133	138	222	java/lang/Exception
    //   151	158	222	java/lang/Exception
    //   162	167	222	java/lang/Exception
    //   171	176	222	java/lang/Exception
    //   180	189	222	java/lang/Exception
    //   258	262	267	java/io/IOException
    //   53	61	277	finally
    //   65	78	277	finally
    //   82	89	277	finally
    //   93	98	277	finally
    //   102	113	277	finally
    //   117	129	277	finally
    //   133	138	277	finally
    //   151	158	277	finally
    //   162	167	277	finally
    //   171	176	277	finally
    //   180	189	277	finally
    //   229	254	277	finally
    //   283	288	290	java/io/IOException
    //   189	197	313	finally
    //   189	197	320	java/lang/Exception
  }

  private static Object b(Context paramContext, String paramString)
  {
    if (m.r(paramContext, "android.permission.WRITE_EXTERNAL_STORAGE"))
      synchronized (a)
      {
        paramContext = a(paramContext).opt(paramString);
        return paramContext;
      }
    com.baidu.android.pushservice.h.b.b("CommonParams", "write permission not granted", paramContext.getApplicationContext());
    return null;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.baidu.android.pushservice.util.b
 * JD-Core Version:    0.6.2
 */