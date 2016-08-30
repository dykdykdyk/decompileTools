package com.baidu.android.pushservice.j;

import android.content.Context;
import android.os.Environment;
import android.provider.Settings.Secure;
import android.text.TextUtils;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.util.UUID;

public final class d
{
  public static String a(Context paramContext)
  {
    Object localObject1 = d.a.a(paramContext);
    String str2 = ((d.a)localObject1).a;
    int i;
    String str3;
    if (!((d.a)localObject1).b)
    {
      i = 1;
      str3 = c(paramContext);
      com.baidu.android.pushservice.h.a.c("DeviceId", "imei " + str2);
      com.baidu.android.pushservice.h.a.c("DeviceId", "android id = " + str3);
      if (i == 0)
        break label128;
      com.baidu.android.pushservice.h.a.c("DeviceId", "bdDeviceId-getKey: " + "");
      localObject1 = e.a(("com.baidu" + str3).getBytes(), true);
    }
    label128: Object localObject3;
    Object localObject2;
    do
    {
      return localObject1;
      i = 0;
      break;
      localObject3 = null;
      localObject2 = com.baidu.android.pushservice.util.b.a(paramContext, "com.baidu.deviceid");
      com.baidu.android.pushservice.h.a.c("DeviceId", "<<< Try to get DeviceId from new : " + (String)localObject2);
      localObject1 = localObject2;
      if (TextUtils.isEmpty((CharSequence)localObject2))
      {
        localObject2 = e.a(("com.baidu" + str2 + str3).getBytes(), true);
        String str1 = com.baidu.android.pushservice.util.b.a(paramContext, (String)localObject2);
        localObject1 = str1;
        localObject3 = localObject2;
        if (!TextUtils.isEmpty(str1))
        {
          com.baidu.android.pushservice.h.a.c("DeviceId", "<<< Get DevicedId from old : " + str1);
          com.baidu.android.pushservice.util.b.a(paramContext, "com.baidu.deviceid", str1);
          a(str2, str1);
          localObject3 = localObject2;
          localObject1 = str1;
        }
      }
      localObject2 = localObject1;
      if (TextUtils.isEmpty((CharSequence)localObject1))
      {
        localObject1 = a(str2);
        localObject2 = localObject1;
        if (!TextUtils.isEmpty((CharSequence)localObject1))
        {
          com.baidu.android.pushservice.h.a.c("DeviceId", "<<< Get DevicedId from ext : " + (String)localObject1);
          com.baidu.android.pushservice.util.b.a(paramContext, localObject3, (String)localObject1);
          com.baidu.android.pushservice.util.b.a(paramContext, "com.baidu.deviceid", (String)localObject1);
          localObject2 = localObject1;
        }
      }
      localObject1 = localObject2;
    }
    while (!TextUtils.isEmpty((CharSequence)localObject2));
    localObject1 = UUID.randomUUID().toString();
    com.baidu.android.pushservice.h.a.c("DeviceId", "uuid: " + (String)localObject1);
    localObject1 = e.a((str2 + str3 + (String)localObject1).getBytes(), true);
    com.baidu.android.pushservice.h.a.c("DeviceId", "bdDeviceId-generated: " + (String)localObject1);
    com.baidu.android.pushservice.util.b.a(paramContext, localObject3, (String)localObject1);
    com.baidu.android.pushservice.util.b.a(paramContext, "com.baidu.deviceid", (String)localObject1);
    a(str2, (String)localObject1);
    return localObject1;
  }

  // ERROR //
  private static String a(String paramString)
  {
    // Byte code:
    //   0: aload_0
    //   1: invokestatic 78	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   4: ifeq +13 -> 17
    //   7: ldc 23
    //   9: ldc 113
    //   11: invokestatic 116	com/baidu/android/pushservice/h/a:e	(Ljava/lang/String;Ljava/lang/String;)V
    //   14: ldc 50
    //   16: areturn
    //   17: ldc 50
    //   19: astore 4
    //   21: new 118	java/io/File
    //   24: dup
    //   25: invokestatic 124	android/os/Environment:getExternalStorageDirectory	()Ljava/io/File;
    //   28: ldc 126
    //   30: invokespecial 129	java/io/File:<init>	(Ljava/io/File;Ljava/lang/String;)V
    //   33: astore_1
    //   34: aconst_null
    //   35: astore_3
    //   36: aconst_null
    //   37: astore_2
    //   38: new 131	java/io/FileReader
    //   41: dup
    //   42: aload_1
    //   43: invokespecial 134	java/io/FileReader:<init>	(Ljava/io/File;)V
    //   46: astore_1
    //   47: aload_1
    //   48: astore_2
    //   49: new 136	java/io/BufferedReader
    //   52: dup
    //   53: aload_1
    //   54: invokespecial 139	java/io/BufferedReader:<init>	(Ljava/io/Reader;)V
    //   57: astore_3
    //   58: aload_1
    //   59: astore_2
    //   60: new 25	java/lang/StringBuilder
    //   63: dup
    //   64: invokespecial 102	java/lang/StringBuilder:<init>	()V
    //   67: astore 5
    //   69: aload_1
    //   70: astore_2
    //   71: aload_3
    //   72: invokevirtual 142	java/io/BufferedReader:readLine	()Ljava/lang/String;
    //   75: astore 6
    //   77: aload 6
    //   79: ifnull +75 -> 154
    //   82: aload_1
    //   83: astore_2
    //   84: aload 5
    //   86: aload 6
    //   88: invokevirtual 35	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   91: pop
    //   92: aload_1
    //   93: astore_2
    //   94: aload 5
    //   96: ldc 144
    //   98: invokevirtual 35	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   101: pop
    //   102: goto -33 -> 69
    //   105: astore_0
    //   106: aload_1
    //   107: astore_2
    //   108: ldc 23
    //   110: ldc 146
    //   112: invokestatic 44	com/baidu/android/pushservice/h/a:c	(Ljava/lang/String;Ljava/lang/String;)V
    //   115: aload_1
    //   116: ifnull -102 -> 14
    //   119: aload_1
    //   120: invokevirtual 149	java/io/FileReader:close	()V
    //   123: ldc 50
    //   125: areturn
    //   126: astore_0
    //   127: ldc 23
    //   129: new 25	java/lang/StringBuilder
    //   132: dup
    //   133: ldc 151
    //   135: invokespecial 31	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   138: aload_0
    //   139: invokevirtual 154	java/io/IOException:getMessage	()Ljava/lang/String;
    //   142: invokevirtual 35	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   145: invokevirtual 39	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   148: invokestatic 157	com/baidu/android/pushservice/h/a:d	(Ljava/lang/String;Ljava/lang/String;)V
    //   151: ldc 50
    //   153: areturn
    //   154: aload_1
    //   155: astore_2
    //   156: ldc 23
    //   158: new 25	java/lang/StringBuilder
    //   161: dup
    //   162: ldc 159
    //   164: invokespecial 31	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   167: aload 5
    //   169: invokevirtual 39	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   172: invokevirtual 35	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   175: invokevirtual 39	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   178: invokestatic 44	com/baidu/android/pushservice/h/a:c	(Ljava/lang/String;Ljava/lang/String;)V
    //   181: aload_1
    //   182: astore_2
    //   183: aload_3
    //   184: invokevirtual 160	java/io/BufferedReader:close	()V
    //   187: aload_1
    //   188: astore_2
    //   189: new 54	java/lang/String
    //   192: dup
    //   193: ldc 162
    //   195: ldc 162
    //   197: aload 5
    //   199: invokevirtual 39	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   202: invokevirtual 58	java/lang/String:getBytes	()[B
    //   205: invokestatic 167	com/baidu/android/pushservice/j/b:a	([B)[B
    //   208: invokestatic 172	com/baidu/android/pushservice/j/a:b	(Ljava/lang/String;Ljava/lang/String;[B)[B
    //   211: invokespecial 175	java/lang/String:<init>	([B)V
    //   214: ldc 177
    //   216: invokevirtual 181	java/lang/String:split	(Ljava/lang/String;)[Ljava/lang/String;
    //   219: astore 5
    //   221: aload 4
    //   223: astore_3
    //   224: aload 5
    //   226: ifnull +36 -> 262
    //   229: aload 4
    //   231: astore_3
    //   232: aload_1
    //   233: astore_2
    //   234: aload 5
    //   236: arraylength
    //   237: iconst_2
    //   238: if_icmpne +24 -> 262
    //   241: aload 4
    //   243: astore_3
    //   244: aload_1
    //   245: astore_2
    //   246: aload_0
    //   247: aload 5
    //   249: iconst_0
    //   250: aaload
    //   251: invokevirtual 185	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   254: ifeq +8 -> 262
    //   257: aload 5
    //   259: iconst_1
    //   260: aaload
    //   261: astore_3
    //   262: aload_1
    //   263: invokevirtual 149	java/io/FileReader:close	()V
    //   266: aload_3
    //   267: areturn
    //   268: astore_0
    //   269: ldc 23
    //   271: new 25	java/lang/StringBuilder
    //   274: dup
    //   275: ldc 151
    //   277: invokespecial 31	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   280: aload_0
    //   281: invokevirtual 154	java/io/IOException:getMessage	()Ljava/lang/String;
    //   284: invokevirtual 35	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   287: invokevirtual 39	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   290: invokestatic 157	com/baidu/android/pushservice/h/a:d	(Ljava/lang/String;Ljava/lang/String;)V
    //   293: aload_3
    //   294: areturn
    //   295: astore_0
    //   296: aload_2
    //   297: astore_1
    //   298: aload_0
    //   299: astore_2
    //   300: aload_1
    //   301: astore_0
    //   302: ldc 23
    //   304: ldc 187
    //   306: aload_2
    //   307: invokestatic 190	com/baidu/android/pushservice/h/a:a	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   310: aload_1
    //   311: ifnull -297 -> 14
    //   314: aload_1
    //   315: invokevirtual 149	java/io/FileReader:close	()V
    //   318: ldc 50
    //   320: areturn
    //   321: astore_0
    //   322: ldc 23
    //   324: new 25	java/lang/StringBuilder
    //   327: dup
    //   328: ldc 151
    //   330: invokespecial 31	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   333: aload_0
    //   334: invokevirtual 154	java/io/IOException:getMessage	()Ljava/lang/String;
    //   337: invokevirtual 35	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   340: invokevirtual 39	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   343: invokestatic 157	com/baidu/android/pushservice/h/a:d	(Ljava/lang/String;Ljava/lang/String;)V
    //   346: ldc 50
    //   348: areturn
    //   349: astore_2
    //   350: aload_3
    //   351: astore_1
    //   352: aload_1
    //   353: astore_0
    //   354: ldc 23
    //   356: ldc 192
    //   358: aload_2
    //   359: invokestatic 190	com/baidu/android/pushservice/h/a:a	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   362: aload_1
    //   363: ifnull -349 -> 14
    //   366: aload_1
    //   367: invokevirtual 149	java/io/FileReader:close	()V
    //   370: ldc 50
    //   372: areturn
    //   373: astore_0
    //   374: ldc 23
    //   376: new 25	java/lang/StringBuilder
    //   379: dup
    //   380: ldc 151
    //   382: invokespecial 31	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   385: aload_0
    //   386: invokevirtual 154	java/io/IOException:getMessage	()Ljava/lang/String;
    //   389: invokevirtual 35	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   392: invokevirtual 39	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   395: invokestatic 157	com/baidu/android/pushservice/h/a:d	(Ljava/lang/String;Ljava/lang/String;)V
    //   398: ldc 50
    //   400: areturn
    //   401: astore_0
    //   402: aconst_null
    //   403: astore_2
    //   404: aload_2
    //   405: ifnull +7 -> 412
    //   408: aload_2
    //   409: invokevirtual 149	java/io/FileReader:close	()V
    //   412: aload_0
    //   413: athrow
    //   414: astore_1
    //   415: ldc 23
    //   417: new 25	java/lang/StringBuilder
    //   420: dup
    //   421: ldc 151
    //   423: invokespecial 31	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   426: aload_1
    //   427: invokevirtual 154	java/io/IOException:getMessage	()Ljava/lang/String;
    //   430: invokevirtual 35	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   433: invokevirtual 39	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   436: invokestatic 157	com/baidu/android/pushservice/h/a:d	(Ljava/lang/String;Ljava/lang/String;)V
    //   439: goto -27 -> 412
    //   442: astore_0
    //   443: goto -39 -> 404
    //   446: astore_1
    //   447: aload_0
    //   448: astore_2
    //   449: aload_1
    //   450: astore_0
    //   451: goto -47 -> 404
    //   454: astore_2
    //   455: goto -103 -> 352
    //   458: astore_2
    //   459: goto -159 -> 300
    //   462: astore_0
    //   463: aconst_null
    //   464: astore_1
    //   465: goto -359 -> 106
    //
    // Exception table:
    //   from	to	target	type
    //   49	58	105	java/io/FileNotFoundException
    //   60	69	105	java/io/FileNotFoundException
    //   71	77	105	java/io/FileNotFoundException
    //   84	92	105	java/io/FileNotFoundException
    //   94	102	105	java/io/FileNotFoundException
    //   156	181	105	java/io/FileNotFoundException
    //   183	187	105	java/io/FileNotFoundException
    //   189	221	105	java/io/FileNotFoundException
    //   234	241	105	java/io/FileNotFoundException
    //   246	257	105	java/io/FileNotFoundException
    //   119	123	126	java/io/IOException
    //   262	266	268	java/io/IOException
    //   38	47	295	java/io/IOException
    //   314	318	321	java/io/IOException
    //   38	47	349	java/lang/Exception
    //   366	370	373	java/io/IOException
    //   38	47	401	finally
    //   408	412	414	java/io/IOException
    //   49	58	442	finally
    //   60	69	442	finally
    //   71	77	442	finally
    //   84	92	442	finally
    //   94	102	442	finally
    //   108	115	442	finally
    //   156	181	442	finally
    //   183	187	442	finally
    //   189	221	442	finally
    //   234	241	442	finally
    //   246	257	442	finally
    //   302	310	446	finally
    //   354	362	446	finally
    //   49	58	454	java/lang/Exception
    //   60	69	454	java/lang/Exception
    //   71	77	454	java/lang/Exception
    //   84	92	454	java/lang/Exception
    //   94	102	454	java/lang/Exception
    //   156	181	454	java/lang/Exception
    //   183	187	454	java/lang/Exception
    //   189	221	454	java/lang/Exception
    //   234	241	454	java/lang/Exception
    //   246	257	454	java/lang/Exception
    //   49	58	458	java/io/IOException
    //   60	69	458	java/io/IOException
    //   71	77	458	java/io/IOException
    //   84	92	458	java/io/IOException
    //   94	102	458	java/io/IOException
    //   156	181	458	java/io/IOException
    //   183	187	458	java/io/IOException
    //   189	221	458	java/io/IOException
    //   234	241	458	java/io/IOException
    //   246	257	458	java/io/IOException
    //   38	47	462	java/io/FileNotFoundException
  }

  private static void a(String paramString1, String paramString2)
  {
    if (TextUtils.isEmpty(paramString1))
    {
      com.baidu.android.pushservice.h.a.e("DeviceId", "IMEI is null while writing ext!");
      return;
    }
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append(paramString1);
    localStringBuilder.append("=");
    localStringBuilder.append(paramString2);
    paramString1 = new File(Environment.getExternalStorageDirectory(), "baidu/.cuid");
    try
    {
      new File(paramString1.getParent()).mkdirs();
      paramString1 = new FileWriter(paramString1, false);
      paramString2 = b.a(a.a("30212102dicudiab", "30212102dicudiab", localStringBuilder.toString().getBytes()), "utf-8");
      com.baidu.android.pushservice.h.a.c("DeviceId", ">>> Write encoded ：\r\n" + paramString2);
      paramString1.write(paramString2);
      paramString1.flush();
      paramString1.close();
      return;
    }
    catch (IOException paramString1)
    {
      com.baidu.android.pushservice.h.a.a("DeviceId", "Write sdcard backup fail!\r\n", paramString1);
      return;
    }
    catch (Exception paramString1)
    {
      com.baidu.android.pushservice.h.a.a("DeviceId", "Encode sdcard backup fail!\r\n", paramString1);
    }
  }

  public static String b(Context paramContext)
  {
    return d.a.a(paramContext).a;
  }

  public static String c(Context paramContext)
  {
    String str = Settings.Secure.getString(paramContext.getContentResolver(), "android_id");
    paramContext = str;
    if (TextUtils.isEmpty(str))
      paramContext = "";
    return paramContext;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.baidu.android.pushservice.j.d
 * JD-Core Version:    0.6.2
 */