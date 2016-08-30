package com.baidu.android.pushservice.message.a;

import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.os.Build.VERSION;
import android.text.TextUtils;
import com.baidu.android.pushservice.PushSettings;
import com.baidu.android.pushservice.j.b;
import com.baidu.android.pushservice.j.f;
import com.baidu.android.pushservice.util.g;
import com.baidu.android.pushservice.util.h;
import com.baidu.android.pushservice.util.i;
import com.baidu.android.pushservice.util.l;
import com.baidu.android.pushservice.util.m;
import java.util.ArrayList;
import java.util.Iterator;
import org.json.JSONArray;
import org.json.JSONObject;

public class d extends c
{
  private static final String b = d.class.getSimpleName();

  public d(Context paramContext)
  {
    super(paramContext);
  }

  public static void a(Context paramContext)
  {
    long l2 = i.b(paramContext, "com.baidu.pushservice.internal.bind.LATEST_TIME");
    com.baidu.android.pushservice.h.a.c(b, "lastTime from SP is: " + l2);
    long l1 = System.currentTimeMillis();
    com.baidu.android.pushservice.h.a.c(b, "System currentTimeMillis is: " + l1);
    l2 = l1 - l2;
    com.baidu.android.pushservice.h.a.c(b, "curIntervalTime is: " + l2);
    if ((g.a(paramContext)) && (l2 > 259200000L))
      new Thread(new d.1(l1, paramContext)).start();
  }

  private void a(String paramString1, String paramString2, Context paramContext)
  {
    Intent localIntent = new Intent("com.baidu.android.pushservice.action.METHOD");
    localIntent.addFlags(32);
    localIntent.putExtra("method_version", "V2");
    localIntent.putExtra("secret_key", paramString1);
    localIntent.putExtra("pkg_name", paramString2);
    localIntent.putExtra("is_baidu_internal_bind", "true");
    localIntent.putExtra("method", "method_bind");
    localIntent.putExtra("bind_name", Build.MODEL);
    localIntent.putExtra("bind_status", 0);
    localIntent.putExtra("push_sdk_version", com.baidu.android.pushservice.a.a());
    localIntent.setFlags(localIntent.getFlags() | 0x20);
    if (Build.VERSION.SDK_INT >= 19)
    {
      if (!h.a(paramContext))
        break label152;
      localIntent.putExtra("bind_notify_status", "1");
    }
    while (true)
    {
      com.baidu.android.pushservice.h.a.c(b, "a internal bind intent send");
      l.a(paramContext, localIntent);
      return;
      label152: localIntent.putExtra("bind_notify_status", "0");
    }
  }

  private static String c(Context paramContext)
  {
    Object localObject = m.q(paramContext);
    JSONArray localJSONArray;
    if (!((ArrayList)localObject).isEmpty())
    {
      localJSONArray = new JSONArray();
      localObject = ((ArrayList)localObject).iterator();
      while (((Iterator)localObject).hasNext())
      {
        String str1 = (String)((Iterator)localObject).next();
        if (m.u(paramContext, str1))
        {
          com.baidu.android.pushservice.h.a.c(b, str1 + " is Already Binded App.");
        }
        else
        {
          Context localContext = m.s(paramContext, str1);
          String str2 = m.t(localContext, str1);
          String str3 = m.a(localContext, str1, "bp_reg_key");
          com.baidu.android.pushservice.h.a.c(b, str1 + "->Manifest bp_reg_key corresponding apiKey is " + str3);
          if (!TextUtils.isEmpty(str3))
            try
            {
              JSONObject localJSONObject = new JSONObject();
              localJSONObject.put("packagename", str1);
              localJSONObject.put("apikey", str3);
              localJSONObject.put("installtime", str2);
              localJSONObject.put("pkgMD5info", m.p(localContext, str1));
              localJSONArray.put(localJSONObject);
            }
            catch (Exception localException)
            {
              com.baidu.android.pushservice.h.a.a(b, localException);
            }
        }
      }
      if (localJSONArray.length() <= 0);
    }
    for (paramContext = localJSONArray.toString(); ; paramContext = null)
    {
      com.baidu.android.pushservice.h.a.c(b, "All can internal bind app info bindApps: " + paramContext);
      return paramContext;
    }
  }

  private static String d(Context paramContext)
    throws Exception
  {
    String str1 = c(paramContext);
    if (TextUtils.isEmpty(str1))
      throw new Exception("NO INTERNAL BIND APP INFOS！");
    JSONObject localJSONObject = new JSONObject();
    String str2 = PushSettings.a(paramContext);
    paramContext = com.baidu.android.pushservice.j.c.a(paramContext);
    localJSONObject.put("channel_id", str2);
    localJSONObject.put("cuid", paramContext);
    localJSONObject.put("aksinfo", str1);
    return b.a(f.a(localJSONObject.toString().getBytes(), "MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQC/7VlVn9LIrZ71PL2RZMbK/Yxc\r\ndb046w/cXVylxS7ouPY06namZUFVhdbUnNRJzmGUZlzs3jUbvMO3l+4c9cw/n9aQ\r\nrm/brgaRDeZbeSrQYRZv60xzJIimuFFxsRM+ku6/dAyYmXiQXlRbgvFQ0MsVng4j\r\nv+cXhtTis2Kbwb8mQwIDAQAB\r\n", 1024), "utf-8");
  }

  // ERROR //
  public int a(String paramString1, String paramString2, int paramInt, byte[] paramArrayOfByte1, byte[] paramArrayOfByte2)
  {
    // Byte code:
    //   0: iconst_0
    //   1: istore 8
    //   3: iconst_0
    //   4: istore 10
    //   6: iconst_0
    //   7: istore 9
    //   9: getstatic 16	com/baidu/android/pushservice/message/a/d:b	Ljava/lang/String;
    //   12: new 31	java/lang/StringBuilder
    //   15: dup
    //   16: ldc_w 295
    //   19: invokespecial 36	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   22: aload_1
    //   23: invokevirtual 203	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   26: ldc_w 297
    //   29: invokevirtual 203	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   32: aload_2
    //   33: invokevirtual 203	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   36: ldc_w 299
    //   39: invokevirtual 203	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   42: iload_3
    //   43: invokevirtual 302	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   46: ldc_w 304
    //   49: invokevirtual 203	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   52: aload 4
    //   54: invokevirtual 307	java/lang/Object:toString	()Ljava/lang/String;
    //   57: invokevirtual 203	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   60: ldc_w 309
    //   63: invokevirtual 203	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   66: aload 5
    //   68: invokevirtual 312	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   71: invokevirtual 43	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   74: invokestatic 49	com/baidu/android/pushservice/h/a:c	(Ljava/lang/String;Ljava/lang/String;)V
    //   77: iload 8
    //   79: istore 6
    //   81: new 227	org/json/JSONObject
    //   84: dup
    //   85: new 195	java/lang/String
    //   88: dup
    //   89: aload 5
    //   91: invokespecial 315	java/lang/String:<init>	([B)V
    //   94: invokespecial 316	org/json/JSONObject:<init>	(Ljava/lang/String;)V
    //   97: astore_1
    //   98: iload 8
    //   100: istore 6
    //   102: iload 10
    //   104: istore 7
    //   106: aload_1
    //   107: ldc_w 318
    //   110: invokevirtual 322	org/json/JSONObject:isNull	(Ljava/lang/String;)Z
    //   113: ifne +319 -> 432
    //   116: iload 8
    //   118: istore 6
    //   120: aload_1
    //   121: ldc_w 318
    //   124: invokevirtual 326	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   127: astore_1
    //   128: iload 8
    //   130: istore 6
    //   132: getstatic 16	com/baidu/android/pushservice/message/a/d:b	Ljava/lang/String;
    //   135: new 31	java/lang/StringBuilder
    //   138: dup
    //   139: ldc_w 328
    //   142: invokespecial 36	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   145: aload_1
    //   146: invokevirtual 203	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   149: invokevirtual 43	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   152: invokestatic 49	com/baidu/android/pushservice/h/a:c	(Ljava/lang/String;Ljava/lang/String;)V
    //   155: iload 8
    //   157: istore 6
    //   159: iload 10
    //   161: istore 7
    //   163: aload_1
    //   164: invokestatic 225	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   167: ifne +265 -> 432
    //   170: iload 8
    //   172: istore 6
    //   174: new 178	org/json/JSONArray
    //   177: dup
    //   178: aload_1
    //   179: invokespecial 329	org/json/JSONArray:<init>	(Ljava/lang/String;)V
    //   182: astore_1
    //   183: iload 8
    //   185: istore 6
    //   187: aload_1
    //   188: invokevirtual 252	org/json/JSONArray:length	()I
    //   191: istore 11
    //   193: iload 10
    //   195: istore 7
    //   197: iload 11
    //   199: ifle +233 -> 432
    //   202: iload 8
    //   204: istore 6
    //   206: aload_0
    //   207: getfield 332	com/baidu/android/pushservice/message/a/d:a	Landroid/content/Context;
    //   210: invokestatic 170	com/baidu/android/pushservice/util/m:q	(Landroid/content/Context;)Ljava/util/ArrayList;
    //   213: astore_2
    //   214: iconst_0
    //   215: istore 8
    //   217: iload 9
    //   219: istore_3
    //   220: iload_3
    //   221: istore 7
    //   223: iload 8
    //   225: iload 11
    //   227: if_icmpge +205 -> 432
    //   230: iload_3
    //   231: istore 6
    //   233: aload_1
    //   234: iload 8
    //   236: invokevirtual 336	org/json/JSONArray:get	(I)Ljava/lang/Object;
    //   239: checkcast 227	org/json/JSONObject
    //   242: astore 5
    //   244: iload_3
    //   245: istore 6
    //   247: aload 5
    //   249: ldc_w 338
    //   252: invokevirtual 326	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   255: astore 4
    //   257: iload_3
    //   258: istore 6
    //   260: aload_2
    //   261: aload 4
    //   263: invokevirtual 342	java/util/ArrayList:contains	(Ljava/lang/Object;)Z
    //   266: istore 12
    //   268: iload 12
    //   270: ifne +45 -> 315
    //   273: bipush 8
    //   275: istore_3
    //   276: getstatic 16	com/baidu/android/pushservice/message/a/d:b	Ljava/lang/String;
    //   279: new 31	java/lang/StringBuilder
    //   282: dup
    //   283: ldc_w 344
    //   286: invokespecial 36	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   289: aload 4
    //   291: invokevirtual 203	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   294: ldc_w 346
    //   297: invokevirtual 203	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   300: invokevirtual 43	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   303: invokestatic 49	com/baidu/android/pushservice/h/a:c	(Ljava/lang/String;Ljava/lang/String;)V
    //   306: iload 8
    //   308: iconst_1
    //   309: iadd
    //   310: istore 8
    //   312: goto -92 -> 220
    //   315: iload_3
    //   316: istore 6
    //   318: aload 5
    //   320: ldc 236
    //   322: invokevirtual 326	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   325: astore 5
    //   327: iload_3
    //   328: istore 6
    //   330: aload 4
    //   332: invokestatic 225	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   335: ifne +82 -> 417
    //   338: iload_3
    //   339: istore 6
    //   341: aload 5
    //   343: invokestatic 225	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   346: ifne +71 -> 417
    //   349: iload_3
    //   350: istore 6
    //   352: aload_0
    //   353: getfield 332	com/baidu/android/pushservice/message/a/d:a	Landroid/content/Context;
    //   356: aload 4
    //   358: invokestatic 199	com/baidu/android/pushservice/util/m:u	(Landroid/content/Context;Ljava/lang/String;)Z
    //   361: ifne +56 -> 417
    //   364: iload_3
    //   365: istore 6
    //   367: getstatic 16	com/baidu/android/pushservice/message/a/d:b	Ljava/lang/String;
    //   370: new 31	java/lang/StringBuilder
    //   373: dup
    //   374: ldc_w 348
    //   377: invokespecial 36	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   380: aload 4
    //   382: invokevirtual 203	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   385: ldc_w 350
    //   388: invokevirtual 203	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   391: aload 5
    //   393: invokevirtual 203	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   396: invokevirtual 43	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   399: invokestatic 49	com/baidu/android/pushservice/h/a:c	(Ljava/lang/String;Ljava/lang/String;)V
    //   402: iload_3
    //   403: istore 6
    //   405: aload_0
    //   406: aload 5
    //   408: aload 4
    //   410: aload_0
    //   411: getfield 332	com/baidu/android/pushservice/message/a/d:a	Landroid/content/Context;
    //   414: invokespecial 352	com/baidu/android/pushservice/message/a/d:a	(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    //   417: goto -111 -> 306
    //   420: astore_1
    //   421: getstatic 16	com/baidu/android/pushservice/message/a/d:b	Ljava/lang/String;
    //   424: aload_1
    //   425: invokestatic 249	com/baidu/android/pushservice/h/a:a	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   428: iload 6
    //   430: istore 7
    //   432: iload 7
    //   434: ireturn
    //   435: astore_1
    //   436: bipush 8
    //   438: istore 6
    //   440: goto -19 -> 421
    //
    // Exception table:
    //   from	to	target	type
    //   81	98	420	java/lang/Exception
    //   106	116	420	java/lang/Exception
    //   120	128	420	java/lang/Exception
    //   132	155	420	java/lang/Exception
    //   163	170	420	java/lang/Exception
    //   174	183	420	java/lang/Exception
    //   187	193	420	java/lang/Exception
    //   206	214	420	java/lang/Exception
    //   233	244	420	java/lang/Exception
    //   247	257	420	java/lang/Exception
    //   260	268	420	java/lang/Exception
    //   318	327	420	java/lang/Exception
    //   330	338	420	java/lang/Exception
    //   341	349	420	java/lang/Exception
    //   352	364	420	java/lang/Exception
    //   367	402	420	java/lang/Exception
    //   405	417	420	java/lang/Exception
    //   276	306	435	java/lang/Exception
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.baidu.android.pushservice.message.a.d
 * JD-Core Version:    0.6.2
 */