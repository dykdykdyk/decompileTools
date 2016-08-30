package com.umeng.analytics;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.database.sqlite.SQLiteDatabase;
import java.io.File;
import java.util.List;
import java.util.Locale;
import org.json.JSONObject;
import u.aly.a;
import u.aly.as;
import u.aly.cr;
import u.aly.cs;
import u.aly.ct;
import u.aly.ef;
import u.aly.ej;
import u.aly.em;
import u.aly.ev;
import u.aly.ey;
import u.aly.fa;
import u.aly.fb;
import u.aly.z;

public final class aa
{
  public static Context a;
  private static aa c = null;
  private static String d;
  private static long e = 1209600000L;
  private static long f = 2097152L;
  public ae b;

  private aa(Context paramContext)
  {
    this.b = new ae(paramContext);
  }

  public static aa a(Context paramContext)
  {
    try
    {
      a = paramContext.getApplicationContext();
      d = paramContext.getPackageName();
      if (c == null)
        c = new aa(paramContext);
      paramContext = c;
      return paramContext;
    }
    finally
    {
    }
    throw paramContext;
  }

  static String a()
  {
    String str = null;
    SharedPreferences localSharedPreferences = a.getSharedPreferences("umeng_general_config", 0);
    if (localSharedPreferences != null)
      str = localSharedPreferences.getString("appkey", null);
    return str;
  }

  static String b()
  {
    String str = null;
    SharedPreferences localSharedPreferences = a.getSharedPreferences("umeng_general_config", 0);
    if (localSharedPreferences != null)
      str = localSharedPreferences.getString("st", null);
    return str;
  }

  static int c()
  {
    int i = 0;
    SharedPreferences localSharedPreferences = a.getSharedPreferences("umeng_general_config", 0);
    if (localSharedPreferences != null)
      i = localSharedPreferences.getInt("vt", 0);
    return i;
  }

  // ERROR //
  public static z d()
  {
    // Byte code:
    //   0: invokestatic 598	com/umeng/analytics/aa:h	()Ljava/lang/String;
    //   3: astore 4
    //   5: new 600	java/io/File
    //   8: dup
    //   9: getstatic 47	com/umeng/analytics/aa:a	Landroid/content/Context;
    //   12: invokevirtual 45	android/content/Context:getApplicationContext	()Landroid/content/Context;
    //   15: invokevirtual 604	android/content/Context:getFilesDir	()Ljava/io/File;
    //   18: invokevirtual 607	java/io/File:getAbsolutePath	()Ljava/lang/String;
    //   21: aload 4
    //   23: invokespecial 610	java/io/File:<init>	(Ljava/lang/String;Ljava/lang/String;)V
    //   26: astore 4
    //   28: aload 4
    //   30: invokevirtual 613	java/io/File:length	()J
    //   33: lstore_1
    //   34: aload 4
    //   36: invokevirtual 616	java/io/File:exists	()Z
    //   39: ifeq +318 -> 357
    //   42: lload_1
    //   43: getstatic 27	com/umeng/analytics/aa:f	J
    //   46: lcmp
    //   47: ifle +310 -> 357
    //   50: getstatic 47	com/umeng/analytics/aa:a	Landroid/content/Context;
    //   53: putstatic 620	u/aly/ej:f	Landroid/content/Context;
    //   56: invokestatic 625	u/aly/ev:a	()Lu/aly/ej;
    //   59: lload_1
    //   60: invokestatic 630	java/lang/System:currentTimeMillis	()J
    //   63: ldc_w 632
    //   66: invokevirtual 635	u/aly/ej:a	(JJLjava/lang/String;)V
    //   69: iconst_1
    //   70: istore_0
    //   71: iload_0
    //   72: ifeq +11 -> 83
    //   75: aload 4
    //   77: invokevirtual 638	java/io/File:delete	()Z
    //   80: pop
    //   81: aconst_null
    //   82: areturn
    //   83: aload 4
    //   85: invokevirtual 616	java/io/File:exists	()Z
    //   88: istore_3
    //   89: iload_3
    //   90: ifeq +265 -> 355
    //   93: new 640	java/io/FileInputStream
    //   96: dup
    //   97: aload 4
    //   99: invokespecial 643	java/io/FileInputStream:<init>	(Ljava/io/File;)V
    //   102: astore 5
    //   104: new 645	java/io/ObjectInputStream
    //   107: dup
    //   108: aload 5
    //   110: invokespecial 648	java/io/ObjectInputStream:<init>	(Ljava/io/InputStream;)V
    //   113: astore 9
    //   115: aload 9
    //   117: astore 7
    //   119: aload 5
    //   121: astore 6
    //   123: aload 9
    //   125: invokevirtual 651	java/io/ObjectInputStream:readObject	()Ljava/lang/Object;
    //   128: checkcast 73	u/aly/z
    //   131: astore 4
    //   133: aload 9
    //   135: invokevirtual 654	java/io/ObjectInputStream:close	()V
    //   138: aload 5
    //   140: invokevirtual 655	java/io/FileInputStream:close	()V
    //   143: aload 4
    //   145: areturn
    //   146: astore 6
    //   148: aload 6
    //   150: invokevirtual 658	java/io/IOException:printStackTrace	()V
    //   153: goto -15 -> 138
    //   156: astore 6
    //   158: aload 4
    //   160: astore 5
    //   162: aload 5
    //   164: astore 4
    //   166: getstatic 662	u/aly/ct:a	Z
    //   169: ifeq -26 -> 143
    //   172: aload 6
    //   174: invokestatic 665	u/aly/ct:a	(Ljava/lang/Throwable;)V
    //   177: aload 5
    //   179: astore 4
    //   181: goto -38 -> 143
    //   184: astore 5
    //   186: aload 5
    //   188: invokevirtual 658	java/io/IOException:printStackTrace	()V
    //   191: goto -48 -> 143
    //   194: astore 8
    //   196: aconst_null
    //   197: astore 4
    //   199: aconst_null
    //   200: astore 5
    //   202: aload 4
    //   204: astore 7
    //   206: aload 5
    //   208: astore 6
    //   210: aload 8
    //   212: invokevirtual 666	java/lang/Exception:printStackTrace	()V
    //   215: aload 4
    //   217: ifnull +8 -> 225
    //   220: aload 4
    //   222: invokevirtual 654	java/io/ObjectInputStream:close	()V
    //   225: aload 5
    //   227: ifnull +88 -> 315
    //   230: aload 5
    //   232: invokevirtual 655	java/io/FileInputStream:close	()V
    //   235: aconst_null
    //   236: astore 4
    //   238: goto -95 -> 143
    //   241: astore 4
    //   243: aload 4
    //   245: invokevirtual 658	java/io/IOException:printStackTrace	()V
    //   248: goto -23 -> 225
    //   251: astore 4
    //   253: aload 4
    //   255: invokevirtual 658	java/io/IOException:printStackTrace	()V
    //   258: aconst_null
    //   259: astore 4
    //   261: goto -118 -> 143
    //   264: astore 4
    //   266: aconst_null
    //   267: astore 7
    //   269: aconst_null
    //   270: astore 5
    //   272: aload 7
    //   274: ifnull +8 -> 282
    //   277: aload 7
    //   279: invokevirtual 654	java/io/ObjectInputStream:close	()V
    //   282: aload 5
    //   284: ifnull +8 -> 292
    //   287: aload 5
    //   289: invokevirtual 655	java/io/FileInputStream:close	()V
    //   292: aload 4
    //   294: athrow
    //   295: astore 6
    //   297: aload 6
    //   299: invokevirtual 658	java/io/IOException:printStackTrace	()V
    //   302: goto -20 -> 282
    //   305: astore 5
    //   307: aload 5
    //   309: invokevirtual 658	java/io/IOException:printStackTrace	()V
    //   312: goto -20 -> 292
    //   315: aconst_null
    //   316: astore 4
    //   318: goto -175 -> 143
    //   321: astore 4
    //   323: aconst_null
    //   324: astore 7
    //   326: goto -54 -> 272
    //   329: astore 4
    //   331: aload 6
    //   333: astore 5
    //   335: goto -63 -> 272
    //   338: astore 8
    //   340: aconst_null
    //   341: astore 4
    //   343: goto -141 -> 202
    //   346: astore 8
    //   348: aload 9
    //   350: astore 4
    //   352: goto -150 -> 202
    //   355: aconst_null
    //   356: areturn
    //   357: iconst_0
    //   358: istore_0
    //   359: goto -288 -> 71
    //   362: astore 6
    //   364: aconst_null
    //   365: astore 5
    //   367: goto -205 -> 162
    //
    // Exception table:
    //   from	to	target	type
    //   133	138	146	java/io/IOException
    //   133	138	156	java/lang/Exception
    //   138	143	156	java/lang/Exception
    //   148	153	156	java/lang/Exception
    //   186	191	156	java/lang/Exception
    //   138	143	184	java/io/IOException
    //   93	104	194	java/lang/Exception
    //   220	225	241	java/io/IOException
    //   230	235	251	java/io/IOException
    //   93	104	264	finally
    //   277	282	295	java/io/IOException
    //   287	292	305	java/io/IOException
    //   104	115	321	finally
    //   123	133	329	finally
    //   210	215	329	finally
    //   104	115	338	java/lang/Exception
    //   123	133	346	java/lang/Exception
    //   0	69	362	java/lang/Exception
    //   75	81	362	java/lang/Exception
    //   83	89	362	java/lang/Exception
    //   220	225	362	java/lang/Exception
    //   230	235	362	java/lang/Exception
    //   243	248	362	java/lang/Exception
    //   253	258	362	java/lang/Exception
    //   277	282	362	java/lang/Exception
    //   287	292	362	java/lang/Exception
    //   292	295	362	java/lang/Exception
    //   297	302	362	java/lang/Exception
    //   307	312	362	java/lang/Exception
  }

  static SharedPreferences g()
  {
    return a.getSharedPreferences("mobclick_agent_user_" + d, 0);
  }

  public static String h()
  {
    SharedPreferences localSharedPreferences = a.getSharedPreferences("umeng_general_config", 0);
    if (localSharedPreferences != null)
    {
      int i = localSharedPreferences.getInt("versioncode", 0);
      int j = Integer.parseInt(cr.a(a));
      if ((i != 0) && (j != i))
        return "mobclick_agent_cached_" + d + i;
      return "mobclick_agent_cached_" + d + cr.a(a);
    }
    return "mobclick_agent_cached_" + d + cr.a(a);
  }

  public final void a(byte[] paramArrayOfByte)
  {
    Object localObject = this.b;
    if ((paramArrayOfByte == null) || (paramArrayOfByte.length == 0))
      return;
    String str = String.format(Locale.US, "um_cache_%d.env", new Object[] { Long.valueOf(System.currentTimeMillis()) });
    localObject = new File(((ae)localObject).a, str);
    try
    {
      cs.a((File)localObject, paramArrayOfByte);
      return;
    }
    catch (Exception paramArrayOfByte)
    {
    }
  }

  public final byte[] a(z paramz)
  {
    try
    {
      JSONObject localJSONObject = new JSONObject();
      StringBuilder localStringBuilder = new StringBuilder();
      localJSONObject.put("header", new ac(this, paramz, localStringBuilder));
      paramz = new ad(this, paramz, localStringBuilder);
      if (paramz.length() > 0)
        localJSONObject.put("body", paramz);
      ct.a("serialize entry:" + String.valueOf(localStringBuilder));
      paramz = String.valueOf(localJSONObject).getBytes();
      return paramz;
    }
    catch (Exception paramz)
    {
      ct.b("Fail to serialize log ...", paramz);
    }
    return null;
  }

  public final void e()
  {
    a.deleteFile("mobclick_agent_header_" + d);
    a.deleteFile(h());
    ej.f = a;
    Object localObject1 = ev.a();
    new ab(this);
    if (((ej)localObject1).d)
    {
      if (((ej)localObject1).e == 0L)
        ((ej)localObject1).a();
      long l1 = System.currentTimeMillis();
      long l2 = ((ej)localObject1).e;
      if (fb.b(l1) != fb.b(l2));
    }
    for (int i = 1; ; i = 0)
      while (true)
      {
        Object localObject3;
        if (i == 0)
        {
          localObject3 = ej.f.getSharedPreferences("umeng_general_config", 0).edit();
          ((SharedPreferences.Editor)localObject3).putBoolean("main_fest_mode", false);
          ((SharedPreferences.Editor)localObject3).putLong("main_fest_timestamp", 0L);
          ((SharedPreferences.Editor)localObject3).commit();
          ((ej)localObject1).d = false;
          ((ej)localObject1).g.clear();
        }
        ((ej)localObject1).b.a();
        localObject1 = new em((ej)localObject1);
        try
        {
          localObject3 = as.a(ey.a).b();
          a.a((SQLiteDatabase)localObject3, "system");
          a.a((SQLiteDatabase)localObject3, "aggregated");
          if (i == 0)
          {
            a.a((SQLiteDatabase)localObject3, "limitedck");
            ((ef)localObject1).a("success");
          }
          return;
          i = 0;
        }
        catch (Exception localException)
        {
          ct.d("notifyUploadSuccess error");
          return;
        }
        finally
        {
          as.a(ey.a).c();
        }
      }
  }

  public final boolean f()
  {
    File[] arrayOfFile = this.b.a.listFiles();
    return (arrayOfFile != null) && (arrayOfFile.length > 0);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.umeng.analytics.aa
 * JD-Core Version:    0.6.2
 */