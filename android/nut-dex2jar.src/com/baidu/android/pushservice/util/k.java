package com.baidu.android.pushservice.util;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.os.Build.VERSION;
import android.text.TextUtils;
import com.baidu.android.pushservice.h.a;
import com.baidu.android.pushservice.i.c;
import com.baidu.android.pushservice.i.g;
import com.baidu.android.pushservice.i.j;
import com.baidu.android.pushservice.i.m;
import com.baidu.android.pushservice.i.n;
import java.io.File;

public class k
{
  private static k.e a = null;
  private static k.d b = null;
  private static Object c = new Object();
  private static int d = 100;

  // ERROR //
  public static int a(Context paramContext, long paramLong1, long paramLong2)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 8
    //   3: aconst_null
    //   4: astore 9
    //   6: iconst_0
    //   7: istore 7
    //   9: getstatic 23	com/baidu/android/pushservice/util/k:c	Ljava/lang/Object;
    //   12: astore 10
    //   14: aload 10
    //   16: monitorenter
    //   17: aload_0
    //   18: invokestatic 32	com/baidu/android/pushservice/util/k:d	(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;
    //   21: astore 11
    //   23: aload 11
    //   25: ifnonnull +8 -> 33
    //   28: aload 10
    //   30: monitorexit
    //   31: iconst_0
    //   32: ireturn
    //   33: new 34	java/lang/StringBuilder
    //   36: dup
    //   37: ldc 36
    //   39: invokespecial 39	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   42: getstatic 44	com/baidu/android/pushservice/util/k$c:c	Lcom/baidu/android/pushservice/util/k$c;
    //   45: invokevirtual 48	com/baidu/android/pushservice/util/k$c:name	()Ljava/lang/String;
    //   48: invokevirtual 52	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   51: ldc 54
    //   53: invokevirtual 52	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   56: lload_1
    //   57: invokevirtual 57	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   60: ldc 59
    //   62: invokevirtual 52	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   65: getstatic 44	com/baidu/android/pushservice/util/k$c:c	Lcom/baidu/android/pushservice/util/k$c;
    //   68: invokevirtual 48	com/baidu/android/pushservice/util/k$c:name	()Ljava/lang/String;
    //   71: invokevirtual 52	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   74: ldc 61
    //   76: invokevirtual 52	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   79: lload_3
    //   80: invokevirtual 57	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   83: ldc 63
    //   85: invokevirtual 52	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   88: invokevirtual 66	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   91: astore 13
    //   93: new 34	java/lang/StringBuilder
    //   96: dup
    //   97: ldc 68
    //   99: invokespecial 39	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   102: getstatic 73	com/baidu/android/pushservice/util/k$a:c	Lcom/baidu/android/pushservice/util/k$a;
    //   105: invokevirtual 74	com/baidu/android/pushservice/util/k$a:name	()Ljava/lang/String;
    //   108: invokevirtual 52	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   111: ldc 54
    //   113: invokevirtual 52	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   116: lload_1
    //   117: invokevirtual 57	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   120: ldc 59
    //   122: invokevirtual 52	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   125: getstatic 73	com/baidu/android/pushservice/util/k$a:c	Lcom/baidu/android/pushservice/util/k$a;
    //   128: invokevirtual 74	com/baidu/android/pushservice/util/k$a:name	()Ljava/lang/String;
    //   131: invokevirtual 52	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   134: ldc 61
    //   136: invokevirtual 52	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   139: lload_3
    //   140: invokevirtual 57	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   143: ldc 63
    //   145: invokevirtual 52	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   148: invokevirtual 66	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   151: astore 12
    //   153: aload 9
    //   155: astore_0
    //   156: aload 11
    //   158: aload 13
    //   160: aconst_null
    //   161: invokevirtual 80	android/database/sqlite/SQLiteDatabase:rawQuery	(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    //   164: astore 9
    //   166: aload 9
    //   168: astore_0
    //   169: aload 9
    //   171: astore 8
    //   173: aload 9
    //   175: invokeinterface 86 1 0
    //   180: pop
    //   181: aload 9
    //   183: astore_0
    //   184: aload 9
    //   186: astore 8
    //   188: aload 9
    //   190: iconst_0
    //   191: invokeinterface 90 2 0
    //   196: istore 5
    //   198: aload 9
    //   200: ifnull +262 -> 462
    //   203: aload 9
    //   205: invokeinterface 93 1 0
    //   210: aload 9
    //   212: astore_0
    //   213: aload_0
    //   214: astore 8
    //   216: aload 11
    //   218: aload 12
    //   220: aconst_null
    //   221: invokevirtual 80	android/database/sqlite/SQLiteDatabase:rawQuery	(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    //   224: astore 9
    //   226: aload 9
    //   228: astore 8
    //   230: aload 9
    //   232: astore_0
    //   233: aload 9
    //   235: invokeinterface 86 1 0
    //   240: pop
    //   241: aload 9
    //   243: astore 8
    //   245: aload 9
    //   247: astore_0
    //   248: aload 9
    //   250: iconst_0
    //   251: invokeinterface 90 2 0
    //   256: istore 6
    //   258: iload 6
    //   260: istore 7
    //   262: aload 9
    //   264: ifnull +10 -> 274
    //   267: aload 9
    //   269: invokeinterface 93 1 0
    //   274: iload 7
    //   276: istore 6
    //   278: aload 11
    //   280: ifnull +12 -> 292
    //   283: aload 11
    //   285: invokevirtual 94	android/database/sqlite/SQLiteDatabase:close	()V
    //   288: iload 7
    //   290: istore 6
    //   292: aload 10
    //   294: monitorexit
    //   295: iload 6
    //   297: iload 5
    //   299: iadd
    //   300: ireturn
    //   301: astore_0
    //   302: aload 10
    //   304: monitorexit
    //   305: aload_0
    //   306: athrow
    //   307: astore 9
    //   309: aload_0
    //   310: astore 8
    //   312: ldc 96
    //   314: new 34	java/lang/StringBuilder
    //   317: dup
    //   318: ldc 98
    //   320: invokespecial 39	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   323: aload 9
    //   325: invokevirtual 101	java/lang/Exception:getMessage	()Ljava/lang/String;
    //   328: invokevirtual 52	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   331: invokevirtual 66	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   334: invokestatic 106	com/baidu/android/pushservice/h/a:c	(Ljava/lang/String;Ljava/lang/String;)V
    //   337: aload_0
    //   338: ifnull +118 -> 456
    //   341: aload_0
    //   342: invokeinterface 93 1 0
    //   347: iconst_0
    //   348: istore 5
    //   350: goto -137 -> 213
    //   353: astore_0
    //   354: aload 8
    //   356: ifnull +10 -> 366
    //   359: aload 8
    //   361: invokeinterface 93 1 0
    //   366: aload_0
    //   367: athrow
    //   368: astore 9
    //   370: aload 8
    //   372: astore_0
    //   373: ldc 96
    //   375: new 34	java/lang/StringBuilder
    //   378: dup
    //   379: ldc 108
    //   381: invokespecial 39	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   384: aload 9
    //   386: invokevirtual 101	java/lang/Exception:getMessage	()Ljava/lang/String;
    //   389: invokevirtual 52	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   392: invokevirtual 66	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   395: invokestatic 106	com/baidu/android/pushservice/h/a:c	(Ljava/lang/String;Ljava/lang/String;)V
    //   398: aload 8
    //   400: ifnull +10 -> 410
    //   403: aload 8
    //   405: invokeinterface 93 1 0
    //   410: iload 7
    //   412: istore 6
    //   414: aload 11
    //   416: ifnull -124 -> 292
    //   419: aload 11
    //   421: invokevirtual 94	android/database/sqlite/SQLiteDatabase:close	()V
    //   424: iload 7
    //   426: istore 6
    //   428: goto -136 -> 292
    //   431: astore 8
    //   433: aload_0
    //   434: ifnull +9 -> 443
    //   437: aload_0
    //   438: invokeinterface 93 1 0
    //   443: aload 11
    //   445: ifnull +8 -> 453
    //   448: aload 11
    //   450: invokevirtual 94	android/database/sqlite/SQLiteDatabase:close	()V
    //   453: aload 8
    //   455: athrow
    //   456: iconst_0
    //   457: istore 5
    //   459: goto -246 -> 213
    //   462: aload 9
    //   464: astore_0
    //   465: goto -252 -> 213
    //
    // Exception table:
    //   from	to	target	type
    //   17	23	301	finally
    //   28	31	301	finally
    //   33	153	301	finally
    //   203	210	301	finally
    //   267	274	301	finally
    //   283	288	301	finally
    //   292	295	301	finally
    //   302	305	301	finally
    //   341	347	301	finally
    //   359	366	301	finally
    //   366	368	301	finally
    //   403	410	301	finally
    //   419	424	301	finally
    //   437	443	301	finally
    //   448	453	301	finally
    //   453	456	301	finally
    //   156	166	307	java/lang/Exception
    //   173	181	307	java/lang/Exception
    //   188	198	307	java/lang/Exception
    //   156	166	353	finally
    //   173	181	353	finally
    //   188	198	353	finally
    //   312	337	353	finally
    //   216	226	368	java/lang/Exception
    //   233	241	368	java/lang/Exception
    //   248	258	368	java/lang/Exception
    //   216	226	431	finally
    //   233	241	431	finally
    //   248	258	431	finally
    //   373	398	431	finally
  }

  public static int a(Context paramContext, String paramString, k.g paramg)
  {
    ContentValues localContentValues;
    synchronized (c)
    {
      paramContext = d(paramContext);
      if (paramContext == null)
        return 0;
      localContentValues = new ContentValues();
      localContentValues.put(k.f.a.name(), paramg.a);
      localContentValues.put(k.f.b.name(), paramg.b);
      localContentValues.put(k.f.c.name(), paramg.c);
      localContentValues.put(k.f.d.name(), paramg.d);
      localContentValues.put(k.f.e.name(), paramg.e);
      localContentValues.put(k.f.f.name(), paramg.f);
      localContentValues.put(k.f.g.name(), Integer.valueOf(paramg.g));
      localContentValues.put(k.f.h.name(), Integer.valueOf(paramg.h));
      localContentValues.put(k.f.i.name(), Integer.valueOf(paramg.i));
      localContentValues.put(k.f.j.name(), Long.valueOf(System.currentTimeMillis()));
    }
    try
    {
      i = paramContext.update("FileDownloadingInfo", localContentValues, k.f.b.name() + "=?", new String[] { paramString });
      paramContext.close();
      return i;
      paramContext = finally;
      throw paramContext;
    }
    catch (Exception paramString)
    {
      while (true)
      {
        a.e("PushDatabase", "updateFileDownloadingInfo Exception: " + paramString);
        int i = -1;
      }
    }
  }

  private static int a(SQLiteDatabase paramSQLiteDatabase, int paramInt, m paramm)
  {
    if (paramSQLiteDatabase == null)
      return 0;
    ContentValues localContentValues = new ContentValues();
    localContentValues.put(k.b.a.name(), Integer.valueOf(paramInt));
    localContentValues.put(k.b.b.name(), paramm.a());
    localContentValues.put(k.b.c.name(), Integer.valueOf(paramm.j()));
    localContentValues.put(k.b.d.name(), paramm.b());
    localContentValues.put(k.b.e.name(), paramm.c());
    localContentValues.put(k.b.f.name(), paramm.d());
    localContentValues.put(k.b.g.name(), paramm.e());
    if (!TextUtils.isEmpty(paramm.f()))
      localContentValues.put(k.b.h.name(), paramm.f());
    localContentValues.put(k.b.i.name(), Integer.valueOf(paramm.g()));
    localContentValues.put(k.b.j.name(), paramm.h());
    localContentValues.put(k.b.k.name(), Integer.valueOf(paramm.i()));
    try
    {
      paramInt = paramSQLiteDatabase.update("AppInfo", localContentValues, k.b.a.name() + "=?", new String[] { String.valueOf(paramInt) });
      return paramInt;
    }
    catch (Exception paramSQLiteDatabase)
    {
      a.e("PushDatabase", "updateAppInfo exception " + paramSQLiteDatabase);
    }
    return -1;
  }

  // ERROR //
  public static long a(Context paramContext, com.baidu.android.pushservice.i.b paramb)
  {
    // Byte code:
    //   0: getstatic 23	com/baidu/android/pushservice/util/k:c	Ljava/lang/Object;
    //   3: astore 4
    //   5: aload 4
    //   7: monitorenter
    //   8: aload_0
    //   9: invokestatic 32	com/baidu/android/pushservice/util/k:d	(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;
    //   12: astore 5
    //   14: aload 5
    //   16: ifnonnull +10 -> 26
    //   19: aload 4
    //   21: monitorexit
    //   22: ldc2_w 273
    //   25: lreturn
    //   26: new 111	android/content/ContentValues
    //   29: dup
    //   30: invokespecial 112	android/content/ContentValues:<init>	()V
    //   33: astore 6
    //   35: aload 6
    //   37: getstatic 276	com/baidu/android/pushservice/util/k$a:b	Lcom/baidu/android/pushservice/util/k$a;
    //   40: invokevirtual 74	com/baidu/android/pushservice/util/k$a:name	()Ljava/lang/String;
    //   43: aload_1
    //   44: getfield 279	com/baidu/android/pushservice/i/b:f	Ljava/lang/String;
    //   47: invokevirtual 126	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   50: aload 6
    //   52: getstatic 73	com/baidu/android/pushservice/util/k$a:c	Lcom/baidu/android/pushservice/util/k$a;
    //   55: invokevirtual 74	com/baidu/android/pushservice/util/k$a:name	()Ljava/lang/String;
    //   58: aload_1
    //   59: getfield 282	com/baidu/android/pushservice/i/b:g	J
    //   62: invokestatic 186	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   65: invokevirtual 189	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/Long;)V
    //   68: aload 6
    //   70: getstatic 284	com/baidu/android/pushservice/util/k$a:d	Lcom/baidu/android/pushservice/util/k$a;
    //   73: invokevirtual 74	com/baidu/android/pushservice/util/k$a:name	()Ljava/lang/String;
    //   76: aload_1
    //   77: getfield 286	com/baidu/android/pushservice/i/b:h	Ljava/lang/String;
    //   80: invokevirtual 126	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   83: aload_1
    //   84: getfield 288	com/baidu/android/pushservice/i/b:j	Ljava/lang/String;
    //   87: ifnull +18 -> 105
    //   90: aload 6
    //   92: getstatic 290	com/baidu/android/pushservice/util/k$a:j	Lcom/baidu/android/pushservice/util/k$a;
    //   95: invokevirtual 74	com/baidu/android/pushservice/util/k$a:name	()Ljava/lang/String;
    //   98: aload_1
    //   99: getfield 288	com/baidu/android/pushservice/i/b:j	Ljava/lang/String;
    //   102: invokevirtual 126	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   105: aload 6
    //   107: getstatic 292	com/baidu/android/pushservice/util/k$a:h	Lcom/baidu/android/pushservice/util/k$a;
    //   110: invokevirtual 74	com/baidu/android/pushservice/util/k$a:name	()Ljava/lang/String;
    //   113: aload_1
    //   114: getfield 293	com/baidu/android/pushservice/i/b:d	Ljava/lang/String;
    //   117: invokevirtual 126	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   120: aload 6
    //   122: getstatic 295	com/baidu/android/pushservice/util/k$a:e	Lcom/baidu/android/pushservice/util/k$a;
    //   125: invokevirtual 74	com/baidu/android/pushservice/util/k$a:name	()Ljava/lang/String;
    //   128: aload_1
    //   129: getfield 297	com/baidu/android/pushservice/i/b:c	I
    //   132: invokestatic 159	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   135: invokevirtual 162	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/Integer;)V
    //   138: aload 6
    //   140: getstatic 299	com/baidu/android/pushservice/util/k$a:f	Lcom/baidu/android/pushservice/util/k$a;
    //   143: invokevirtual 74	com/baidu/android/pushservice/util/k$a:name	()Ljava/lang/String;
    //   146: aload_1
    //   147: getfield 300	com/baidu/android/pushservice/i/b:a	Ljava/lang/String;
    //   150: invokevirtual 126	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   153: aload 6
    //   155: getstatic 302	com/baidu/android/pushservice/util/k$a:g	Lcom/baidu/android/pushservice/util/k$a;
    //   158: invokevirtual 74	com/baidu/android/pushservice/util/k$a:name	()Ljava/lang/String;
    //   161: aload_1
    //   162: getfield 304	com/baidu/android/pushservice/i/b:b	I
    //   165: invokestatic 159	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   168: invokevirtual 162	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/Integer;)V
    //   171: aload 6
    //   173: getstatic 306	com/baidu/android/pushservice/util/k$a:i	Lcom/baidu/android/pushservice/util/k$a;
    //   176: invokevirtual 74	com/baidu/android/pushservice/util/k$a:name	()Ljava/lang/String;
    //   179: aload_1
    //   180: getfield 307	com/baidu/android/pushservice/i/b:i	I
    //   183: invokestatic 159	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   186: invokevirtual 162	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/Integer;)V
    //   189: aload 6
    //   191: getstatic 309	com/baidu/android/pushservice/util/k$a:k	Lcom/baidu/android/pushservice/util/k$a;
    //   194: invokevirtual 74	com/baidu/android/pushservice/util/k$a:name	()Ljava/lang/String;
    //   197: aload_1
    //   198: getfield 310	com/baidu/android/pushservice/i/b:e	Ljava/lang/String;
    //   201: invokevirtual 126	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   204: aload 5
    //   206: ldc_w 312
    //   209: aconst_null
    //   210: aload 6
    //   212: invokevirtual 316	android/database/sqlite/SQLiteDatabase:insert	(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    //   215: lstore_2
    //   216: ldc_w 318
    //   219: aload_0
    //   220: invokestatic 323	com/baidu/android/pushservice/util/m:a	(Ljava/lang/String;Landroid/content/Context;)V
    //   223: aload 5
    //   225: invokevirtual 94	android/database/sqlite/SQLiteDatabase:close	()V
    //   228: aload 4
    //   230: monitorexit
    //   231: lload_2
    //   232: lreturn
    //   233: astore_0
    //   234: aload 4
    //   236: monitorexit
    //   237: aload_0
    //   238: athrow
    //   239: astore_0
    //   240: ldc2_w 273
    //   243: lstore_2
    //   244: ldc 96
    //   246: new 34	java/lang/StringBuilder
    //   249: dup
    //   250: ldc_w 325
    //   253: invokespecial 39	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   256: aload_0
    //   257: invokevirtual 205	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   260: invokevirtual 66	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   263: invokestatic 207	com/baidu/android/pushservice/h/a:e	(Ljava/lang/String;Ljava/lang/String;)V
    //   266: goto -43 -> 223
    //   269: astore_0
    //   270: goto -26 -> 244
    //
    // Exception table:
    //   from	to	target	type
    //   8	14	233	finally
    //   19	22	233	finally
    //   26	105	233	finally
    //   105	204	233	finally
    //   204	216	233	finally
    //   216	223	233	finally
    //   223	231	233	finally
    //   234	237	233	finally
    //   244	266	233	finally
    //   204	216	239	java/lang/Exception
    //   216	223	269	java/lang/Exception
  }

  public static long a(Context paramContext, c paramc)
  {
    ContentValues localContentValues;
    synchronized (c)
    {
      paramContext = d(paramContext);
      if (paramContext == null)
        return -1L;
      localContentValues = new ContentValues();
      localContentValues.put(k.c.b.name(), paramc.f);
      localContentValues.put(k.c.c.name(), Long.valueOf(paramc.g));
      localContentValues.put(k.c.d.name(), paramc.h);
      localContentValues.put(k.c.l.name(), paramc.j);
      localContentValues.put(k.c.h.name(), paramc.a);
      localContentValues.put(k.c.i.name(), paramc.b);
      localContentValues.put(k.c.k.name(), Integer.valueOf(paramc.i));
      if (paramc.c != null)
        localContentValues.put(k.c.m.name(), paramc.c);
    }
    try
    {
      l = paramContext.insert("PushBehavior", null, localContentValues);
      paramContext.close();
      return l;
      paramContext = finally;
      throw paramContext;
    }
    catch (Exception paramc)
    {
      while (true)
      {
        a.e("PushDatabase", "insertApiBehavior E: " + paramc);
        long l = 0L;
      }
    }
  }

  public static long a(Context paramContext, g paramg)
  {
    ContentValues localContentValues;
    synchronized (c)
    {
      paramContext = d(paramContext);
      if (paramContext == null)
        return -1L;
      localContentValues = new ContentValues();
      localContentValues.put(k.c.b.name(), paramg.f);
      localContentValues.put(k.c.c.name(), Long.valueOf(paramg.g));
      localContentValues.put(k.c.d.name(), paramg.h);
      localContentValues.put(k.c.h.name(), paramg.a);
      localContentValues.put(k.c.l.name(), paramg.j);
    }
    try
    {
      l = paramContext.insert("PushBehavior", null, localContentValues);
      paramContext.close();
      return l;
      paramContext = finally;
      throw paramContext;
    }
    catch (Exception paramg)
    {
      while (true)
      {
        a.e("PushDatabase", "insertCrashBehavior E: " + paramg);
        long l = 0L;
      }
    }
  }

  public static long a(Context paramContext, j paramj)
  {
    ContentValues localContentValues;
    synchronized (c)
    {
      paramContext = d(paramContext);
      if (paramContext == null)
        return -1L;
      localContentValues = new ContentValues();
      localContentValues.put(k.c.b.name(), paramj.f);
      localContentValues.put(k.c.c.name(), Long.valueOf(paramj.g));
      localContentValues.put(k.c.d.name(), paramj.h);
      localContentValues.put(k.c.h.name(), paramj.l);
      localContentValues.put(k.c.j.name(), Integer.valueOf(paramj.a));
      localContentValues.put(k.c.k.name(), Integer.valueOf(paramj.i));
      localContentValues.put(k.c.l.name(), paramj.j);
    }
    try
    {
      l = paramContext.insert("PushBehavior", null, localContentValues);
      paramContext.close();
      return l;
      paramContext = finally;
      throw paramContext;
    }
    catch (Exception paramj)
    {
      while (true)
      {
        a.e("PushDatabase", "insertPromptBehavior E: " + paramj);
        long l = 0L;
      }
    }
  }

  public static long a(Context paramContext, m paramm)
  {
    long l1 = 0L;
    synchronized (c)
    {
      paramContext = d(paramContext);
      if (paramContext == null)
        return -1L;
      if (a(paramContext, paramm) != null)
      {
        paramContext.close();
        return 0L;
      }
    }
    ContentValues localContentValues = new ContentValues();
    localContentValues.put(k.b.b.name(), paramm.a());
    localContentValues.put(k.b.c.name(), Integer.valueOf(paramm.j()));
    localContentValues.put(k.b.d.name(), paramm.b());
    localContentValues.put(k.b.e.name(), paramm.c());
    localContentValues.put(k.b.f.name(), paramm.d());
    localContentValues.put(k.b.g.name(), paramm.e());
    localContentValues.put(k.b.h.name(), paramm.f());
    localContentValues.put(k.b.i.name(), Integer.valueOf(paramm.g()));
    localContentValues.put(k.b.j.name(), paramm.h());
    localContentValues.put(k.b.k.name(), Integer.valueOf(paramm.i()));
    try
    {
      if (Long.valueOf(paramm.a()).longValue() < 0L)
      {
        paramContext.close();
        return 0L;
      }
      long l2 = paramContext.insert("AppInfo", null, localContentValues);
      l1 = l2;
      paramContext.close();
      return l1;
    }
    catch (Exception paramm)
    {
      while (true)
        a.e("PushDatabase", "insertAppInfo E: " + paramm);
    }
  }

  public static long a(Context paramContext, n paramn)
  {
    long l1 = -1L;
    ContentValues localContentValues;
    synchronized (c)
    {
      paramContext = d(paramContext);
      if (paramContext == null)
        return -1L;
      localContentValues = new ContentValues();
      localContentValues.put(k.c.b.name(), paramn.f);
      localContentValues.put(k.c.c.name(), Long.valueOf(paramn.g));
      localContentValues.put(k.c.d.name(), paramn.h);
      if (paramn.j != null)
        localContentValues.put(k.c.l.name(), paramn.j);
      localContentValues.put(k.c.e.name(), Integer.valueOf(paramn.c));
      localContentValues.put(k.c.f.name(), paramn.a);
      localContentValues.put(k.c.g.name(), Integer.valueOf(paramn.b));
      localContentValues.put(k.c.k.name(), Integer.valueOf(paramn.i));
      if (paramn.d != null)
        localContentValues.put(k.c.n.name(), paramn.d);
    }
    try
    {
      long l2 = paramContext.insert("PushBehavior", null, localContentValues);
      l1 = l2;
      paramContext.close();
      return l1;
      paramContext = finally;
      throw paramContext;
    }
    catch (Exception paramn)
    {
      while (true)
        a.e("PushDatabase", "exception " + paramn);
    }
  }

  public static long a(Context paramContext, k.g paramg)
  {
    ContentValues localContentValues;
    synchronized (c)
    {
      paramContext = d(paramContext);
      if (paramContext == null)
        return -1L;
      localContentValues = new ContentValues();
      localContentValues.put(k.f.a.name(), paramg.a);
      localContentValues.put(k.f.b.name(), paramg.b);
      localContentValues.put(k.f.c.name(), paramg.c);
      localContentValues.put(k.f.d.name(), paramg.d);
      localContentValues.put(k.f.e.name(), paramg.e);
      localContentValues.put(k.f.f.name(), paramg.f);
      localContentValues.put(k.f.g.name(), Integer.valueOf(paramg.g));
      localContentValues.put(k.f.h.name(), Integer.valueOf(paramg.h));
      localContentValues.put(k.f.i.name(), Integer.valueOf(paramg.i));
      localContentValues.put(k.f.j.name(), Long.valueOf(System.currentTimeMillis()));
    }
    try
    {
      l = paramContext.insert("FileDownloadingInfo", null, localContentValues);
      paramContext.close();
      return l;
      paramContext = finally;
      throw paramContext;
    }
    catch (Exception paramg)
    {
      while (true)
      {
        a.e("PushDatabase", "exception " + paramg);
        long l = 0L;
      }
    }
  }

  // ERROR //
  public static long a(Context paramContext, String paramString, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    // Byte code:
    //   0: getstatic 23	com/baidu/android/pushservice/util/k:c	Ljava/lang/Object;
    //   3: astore 11
    //   5: aload 11
    //   7: monitorenter
    //   8: aload_0
    //   9: invokestatic 32	com/baidu/android/pushservice/util/k:d	(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;
    //   12: astore 12
    //   14: aload 12
    //   16: ifnonnull +10 -> 26
    //   19: aload 11
    //   21: monitorexit
    //   22: ldc2_w 273
    //   25: lreturn
    //   26: ldc 96
    //   28: new 34	java/lang/StringBuilder
    //   31: dup
    //   32: ldc_w 419
    //   35: invokespecial 39	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   38: aload_1
    //   39: invokevirtual 52	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   42: ldc_w 421
    //   45: invokevirtual 52	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   48: iload_2
    //   49: invokevirtual 424	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   52: ldc_w 426
    //   55: invokevirtual 52	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   58: iload_3
    //   59: invokevirtual 424	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   62: ldc_w 428
    //   65: invokevirtual 52	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   68: iload 4
    //   70: invokevirtual 424	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   73: ldc_w 430
    //   76: invokevirtual 52	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   79: iload 5
    //   81: invokevirtual 424	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   84: invokevirtual 66	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   87: invokestatic 106	com/baidu/android/pushservice/h/a:c	(Ljava/lang/String;Ljava/lang/String;)V
    //   90: getstatic 435	com/baidu/android/pushservice/util/k$j:a	Lcom/baidu/android/pushservice/util/k$j;
    //   93: invokevirtual 436	com/baidu/android/pushservice/util/k$j:name	()Ljava/lang/String;
    //   96: astore_0
    //   97: new 34	java/lang/StringBuilder
    //   100: dup
    //   101: invokespecial 192	java/lang/StringBuilder:<init>	()V
    //   104: getstatic 435	com/baidu/android/pushservice/util/k$j:a	Lcom/baidu/android/pushservice/util/k$j;
    //   107: invokevirtual 436	com/baidu/android/pushservice/util/k$j:name	()Ljava/lang/String;
    //   110: invokevirtual 52	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   113: ldc_w 438
    //   116: invokevirtual 52	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   119: invokevirtual 66	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   122: astore 10
    //   124: aload 12
    //   126: ldc_w 440
    //   129: iconst_1
    //   130: anewarray 196	java/lang/String
    //   133: dup
    //   134: iconst_0
    //   135: aload_0
    //   136: aastore
    //   137: aload 10
    //   139: iconst_1
    //   140: anewarray 196	java/lang/String
    //   143: dup
    //   144: iconst_0
    //   145: aload_1
    //   146: aastore
    //   147: aconst_null
    //   148: aconst_null
    //   149: aconst_null
    //   150: invokevirtual 444	android/database/sqlite/SQLiteDatabase:query	(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   153: astore 10
    //   155: aload 10
    //   157: astore_0
    //   158: new 111	android/content/ContentValues
    //   161: dup
    //   162: invokespecial 112	android/content/ContentValues:<init>	()V
    //   165: astore 13
    //   167: aload 10
    //   169: astore_0
    //   170: aload 13
    //   172: getstatic 435	com/baidu/android/pushservice/util/k$j:a	Lcom/baidu/android/pushservice/util/k$j;
    //   175: invokevirtual 436	com/baidu/android/pushservice/util/k$j:name	()Ljava/lang/String;
    //   178: aload_1
    //   179: invokevirtual 126	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   182: aload 10
    //   184: astore_0
    //   185: aload 13
    //   187: getstatic 446	com/baidu/android/pushservice/util/k$j:b	Lcom/baidu/android/pushservice/util/k$j;
    //   190: invokevirtual 436	com/baidu/android/pushservice/util/k$j:name	()Ljava/lang/String;
    //   193: iload_2
    //   194: invokestatic 159	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   197: invokevirtual 162	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/Integer;)V
    //   200: aload 10
    //   202: astore_0
    //   203: aload 13
    //   205: getstatic 448	com/baidu/android/pushservice/util/k$j:c	Lcom/baidu/android/pushservice/util/k$j;
    //   208: invokevirtual 436	com/baidu/android/pushservice/util/k$j:name	()Ljava/lang/String;
    //   211: iload_3
    //   212: invokestatic 159	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   215: invokevirtual 162	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/Integer;)V
    //   218: aload 10
    //   220: astore_0
    //   221: aload 13
    //   223: getstatic 450	com/baidu/android/pushservice/util/k$j:d	Lcom/baidu/android/pushservice/util/k$j;
    //   226: invokevirtual 436	com/baidu/android/pushservice/util/k$j:name	()Ljava/lang/String;
    //   229: iload 4
    //   231: invokestatic 159	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   234: invokevirtual 162	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/Integer;)V
    //   237: aload 10
    //   239: astore_0
    //   240: aload 13
    //   242: getstatic 452	com/baidu/android/pushservice/util/k$j:e	Lcom/baidu/android/pushservice/util/k$j;
    //   245: invokevirtual 436	com/baidu/android/pushservice/util/k$j:name	()Ljava/lang/String;
    //   248: iload 5
    //   250: invokestatic 159	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   253: invokevirtual 162	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/Integer;)V
    //   256: aload 10
    //   258: ifnull +238 -> 496
    //   261: aload 10
    //   263: astore_0
    //   264: aload 10
    //   266: invokeinterface 455 1 0
    //   271: ifeq +225 -> 496
    //   274: iload_2
    //   275: ifne +144 -> 419
    //   278: iload_3
    //   279: ifne +140 -> 419
    //   282: iload 4
    //   284: ifne +135 -> 419
    //   287: iload 5
    //   289: ifne +130 -> 419
    //   292: aload 10
    //   294: astore_0
    //   295: ldc 96
    //   297: new 34	java/lang/StringBuilder
    //   300: dup
    //   301: ldc_w 457
    //   304: invokespecial 39	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   307: aload_1
    //   308: invokevirtual 52	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   311: invokevirtual 66	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   314: invokestatic 106	com/baidu/android/pushservice/h/a:c	(Ljava/lang/String;Ljava/lang/String;)V
    //   317: aload 10
    //   319: astore_0
    //   320: aload 12
    //   322: ldc_w 440
    //   325: new 34	java/lang/StringBuilder
    //   328: dup
    //   329: invokespecial 192	java/lang/StringBuilder:<init>	()V
    //   332: getstatic 435	com/baidu/android/pushservice/util/k$j:a	Lcom/baidu/android/pushservice/util/k$j;
    //   335: invokevirtual 436	com/baidu/android/pushservice/util/k$j:name	()Ljava/lang/String;
    //   338: invokevirtual 52	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   341: ldc_w 438
    //   344: invokevirtual 52	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   347: invokevirtual 66	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   350: iconst_1
    //   351: anewarray 196	java/lang/String
    //   354: dup
    //   355: iconst_0
    //   356: aload_1
    //   357: aastore
    //   358: invokevirtual 461	android/database/sqlite/SQLiteDatabase:delete	(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    //   361: istore_2
    //   362: iload_2
    //   363: i2l
    //   364: lstore 6
    //   366: aload 10
    //   368: ifnull +13 -> 381
    //   371: aload 10
    //   373: astore_0
    //   374: aload 10
    //   376: invokeinterface 93 1 0
    //   381: aload 10
    //   383: ifnull +10 -> 393
    //   386: aload 10
    //   388: invokeinterface 93 1 0
    //   393: lload 6
    //   395: lstore 8
    //   397: aload 12
    //   399: ifnull +243 -> 642
    //   402: aload 12
    //   404: invokevirtual 94	android/database/sqlite/SQLiteDatabase:close	()V
    //   407: aload 11
    //   409: monitorexit
    //   410: lload 6
    //   412: lreturn
    //   413: astore_0
    //   414: aload 11
    //   416: monitorexit
    //   417: aload_0
    //   418: athrow
    //   419: aload 10
    //   421: astore_0
    //   422: ldc 96
    //   424: new 34	java/lang/StringBuilder
    //   427: dup
    //   428: ldc_w 463
    //   431: invokespecial 39	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   434: aload_1
    //   435: invokevirtual 52	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   438: invokevirtual 66	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   441: invokestatic 106	com/baidu/android/pushservice/h/a:c	(Ljava/lang/String;Ljava/lang/String;)V
    //   444: aload 10
    //   446: astore_0
    //   447: aload 12
    //   449: ldc_w 440
    //   452: aload 13
    //   454: new 34	java/lang/StringBuilder
    //   457: dup
    //   458: invokespecial 192	java/lang/StringBuilder:<init>	()V
    //   461: getstatic 435	com/baidu/android/pushservice/util/k$j:a	Lcom/baidu/android/pushservice/util/k$j;
    //   464: invokevirtual 436	com/baidu/android/pushservice/util/k$j:name	()Ljava/lang/String;
    //   467: invokevirtual 52	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   470: ldc_w 438
    //   473: invokevirtual 52	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   476: invokevirtual 66	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   479: iconst_1
    //   480: anewarray 196	java/lang/String
    //   483: dup
    //   484: iconst_0
    //   485: aload_1
    //   486: aastore
    //   487: invokevirtual 200	android/database/sqlite/SQLiteDatabase:update	(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    //   490: i2l
    //   491: lstore 6
    //   493: goto -127 -> 366
    //   496: aload 10
    //   498: astore_0
    //   499: ldc 96
    //   501: new 34	java/lang/StringBuilder
    //   504: dup
    //   505: ldc_w 465
    //   508: invokespecial 39	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   511: aload_1
    //   512: invokevirtual 52	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   515: invokevirtual 66	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   518: invokestatic 106	com/baidu/android/pushservice/h/a:c	(Ljava/lang/String;Ljava/lang/String;)V
    //   521: aload 10
    //   523: astore_0
    //   524: aload 12
    //   526: ldc_w 440
    //   529: aconst_null
    //   530: aload 13
    //   532: invokevirtual 316	android/database/sqlite/SQLiteDatabase:insert	(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    //   535: lstore 6
    //   537: goto -171 -> 366
    //   540: astore_1
    //   541: aconst_null
    //   542: astore 10
    //   544: ldc2_w 273
    //   547: lstore 6
    //   549: aload 10
    //   551: astore_0
    //   552: ldc 96
    //   554: new 34	java/lang/StringBuilder
    //   557: dup
    //   558: ldc_w 467
    //   561: invokespecial 39	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   564: aload_1
    //   565: invokevirtual 205	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   568: invokevirtual 66	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   571: invokestatic 207	com/baidu/android/pushservice/h/a:e	(Ljava/lang/String;Ljava/lang/String;)V
    //   574: aload 10
    //   576: ifnull +10 -> 586
    //   579: aload 10
    //   581: invokeinterface 93 1 0
    //   586: lload 6
    //   588: lstore 8
    //   590: aload 12
    //   592: ifnull +50 -> 642
    //   595: aload 12
    //   597: invokevirtual 94	android/database/sqlite/SQLiteDatabase:close	()V
    //   600: goto -193 -> 407
    //   603: aload_0
    //   604: ifnull +9 -> 613
    //   607: aload_0
    //   608: invokeinterface 93 1 0
    //   613: aload 12
    //   615: ifnull +8 -> 623
    //   618: aload 12
    //   620: invokevirtual 94	android/database/sqlite/SQLiteDatabase:close	()V
    //   623: aload_1
    //   624: athrow
    //   625: astore_1
    //   626: goto -23 -> 603
    //   629: astore_1
    //   630: ldc2_w 273
    //   633: lstore 6
    //   635: goto -86 -> 549
    //   638: astore_1
    //   639: goto -90 -> 549
    //   642: lload 8
    //   644: lstore 6
    //   646: goto -239 -> 407
    //   649: astore_1
    //   650: aconst_null
    //   651: astore_0
    //   652: goto -49 -> 603
    //
    // Exception table:
    //   from	to	target	type
    //   8	14	413	finally
    //   19	22	413	finally
    //   386	393	413	finally
    //   402	407	413	finally
    //   407	410	413	finally
    //   414	417	413	finally
    //   579	586	413	finally
    //   595	600	413	finally
    //   607	613	413	finally
    //   618	623	413	finally
    //   623	625	413	finally
    //   26	155	540	java/lang/Exception
    //   158	167	625	finally
    //   170	182	625	finally
    //   185	200	625	finally
    //   203	218	625	finally
    //   221	237	625	finally
    //   240	256	625	finally
    //   264	274	625	finally
    //   295	317	625	finally
    //   320	362	625	finally
    //   374	381	625	finally
    //   422	444	625	finally
    //   447	493	625	finally
    //   499	521	625	finally
    //   524	537	625	finally
    //   552	574	625	finally
    //   158	167	629	java/lang/Exception
    //   170	182	629	java/lang/Exception
    //   185	200	629	java/lang/Exception
    //   203	218	629	java/lang/Exception
    //   221	237	629	java/lang/Exception
    //   240	256	629	java/lang/Exception
    //   264	274	629	java/lang/Exception
    //   295	317	629	java/lang/Exception
    //   320	362	629	java/lang/Exception
    //   422	444	629	java/lang/Exception
    //   447	493	629	java/lang/Exception
    //   499	521	629	java/lang/Exception
    //   524	537	629	java/lang/Exception
    //   374	381	638	java/lang/Exception
    //   26	155	649	finally
  }

  // ERROR //
  private static m a(SQLiteDatabase paramSQLiteDatabase, m paramm)
  {
    // Byte code:
    //   0: aload_0
    //   1: ifnonnull +5 -> 6
    //   4: aconst_null
    //   5: areturn
    //   6: new 218	com/baidu/android/pushservice/i/m
    //   9: dup
    //   10: aload_1
    //   11: invokevirtual 220	com/baidu/android/pushservice/i/m:a	()Ljava/lang/String;
    //   14: invokespecial 468	com/baidu/android/pushservice/i/m:<init>	(Ljava/lang/String;)V
    //   17: astore 7
    //   19: new 34	java/lang/StringBuilder
    //   22: dup
    //   23: ldc_w 470
    //   26: invokespecial 39	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   29: getstatic 216	com/baidu/android/pushservice/util/k$b:b	Lcom/baidu/android/pushservice/util/k$b;
    //   32: invokevirtual 214	com/baidu/android/pushservice/util/k$b:name	()Ljava/lang/String;
    //   35: invokevirtual 52	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   38: ldc_w 472
    //   41: invokevirtual 52	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   44: aload_1
    //   45: invokevirtual 220	com/baidu/android/pushservice/i/m:a	()Ljava/lang/String;
    //   48: invokevirtual 52	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   51: ldc_w 474
    //   54: invokevirtual 52	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   57: invokevirtual 66	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   60: astore 5
    //   62: aload_0
    //   63: aload 5
    //   65: aconst_null
    //   66: invokevirtual 80	android/database/sqlite/SQLiteDatabase:rawQuery	(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    //   69: astore 6
    //   71: iconst_0
    //   72: istore_2
    //   73: aload 6
    //   75: astore 5
    //   77: aload 6
    //   79: invokeinterface 455 1 0
    //   84: ifeq +222 -> 306
    //   87: iconst_1
    //   88: istore_3
    //   89: aload 6
    //   91: astore 5
    //   93: aload 6
    //   95: aload 6
    //   97: getstatic 213	com/baidu/android/pushservice/util/k$b:a	Lcom/baidu/android/pushservice/util/k$b;
    //   100: invokevirtual 214	com/baidu/android/pushservice/util/k$b:name	()Ljava/lang/String;
    //   103: invokeinterface 478 2 0
    //   108: invokeinterface 90 2 0
    //   113: istore 4
    //   115: aload 6
    //   117: astore 5
    //   119: aload_1
    //   120: invokevirtual 233	com/baidu/android/pushservice/i/m:c	()Ljava/lang/String;
    //   123: aload 6
    //   125: aload 6
    //   127: getstatic 231	com/baidu/android/pushservice/util/k$b:e	Lcom/baidu/android/pushservice/util/k$b;
    //   130: invokevirtual 214	com/baidu/android/pushservice/util/k$b:name	()Ljava/lang/String;
    //   133: invokeinterface 478 2 0
    //   138: invokeinterface 481 2 0
    //   143: invokestatic 485	android/text/TextUtils:equals	(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    //   146: ifeq +146 -> 292
    //   149: aload 6
    //   151: astore 5
    //   153: aload_1
    //   154: invokevirtual 243	com/baidu/android/pushservice/i/m:f	()Ljava/lang/String;
    //   157: aload 6
    //   159: aload 6
    //   161: getstatic 251	com/baidu/android/pushservice/util/k$b:h	Lcom/baidu/android/pushservice/util/k$b;
    //   164: invokevirtual 214	com/baidu/android/pushservice/util/k$b:name	()Ljava/lang/String;
    //   167: invokeinterface 478 2 0
    //   172: invokeinterface 481 2 0
    //   177: invokestatic 485	android/text/TextUtils:equals	(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    //   180: ifeq +112 -> 292
    //   183: aload 6
    //   185: astore 5
    //   187: new 34	java/lang/StringBuilder
    //   190: dup
    //   191: invokespecial 192	java/lang/StringBuilder:<init>	()V
    //   194: aload_1
    //   195: invokevirtual 255	com/baidu/android/pushservice/i/m:g	()I
    //   198: invokevirtual 424	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   201: invokevirtual 66	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   204: new 34	java/lang/StringBuilder
    //   207: dup
    //   208: invokespecial 192	java/lang/StringBuilder:<init>	()V
    //   211: aload 6
    //   213: aload 6
    //   215: getstatic 253	com/baidu/android/pushservice/util/k$b:i	Lcom/baidu/android/pushservice/util/k$b;
    //   218: invokevirtual 214	com/baidu/android/pushservice/util/k$b:name	()Ljava/lang/String;
    //   221: invokeinterface 478 2 0
    //   226: invokeinterface 90 2 0
    //   231: invokevirtual 424	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   234: invokevirtual 66	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   237: invokestatic 485	android/text/TextUtils:equals	(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    //   240: ifeq +52 -> 292
    //   243: iload_3
    //   244: istore_2
    //   245: aload 6
    //   247: astore 5
    //   249: new 34	java/lang/StringBuilder
    //   252: dup
    //   253: invokespecial 192	java/lang/StringBuilder:<init>	()V
    //   256: aload_1
    //   257: invokevirtual 264	com/baidu/android/pushservice/i/m:i	()I
    //   260: invokevirtual 424	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   263: invokevirtual 66	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   266: aload 6
    //   268: aload 6
    //   270: getstatic 262	com/baidu/android/pushservice/util/k$b:k	Lcom/baidu/android/pushservice/util/k$b;
    //   273: invokevirtual 214	com/baidu/android/pushservice/util/k$b:name	()Ljava/lang/String;
    //   276: invokeinterface 478 2 0
    //   281: invokeinterface 481 2 0
    //   286: invokestatic 485	android/text/TextUtils:equals	(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    //   289: ifne +17 -> 306
    //   292: aload 6
    //   294: astore 5
    //   296: aload_0
    //   297: iload 4
    //   299: aload_1
    //   300: invokestatic 487	com/baidu/android/pushservice/util/k:a	(Landroid/database/sqlite/SQLiteDatabase;ILcom/baidu/android/pushservice/i/m;)I
    //   303: pop
    //   304: iload_3
    //   305: istore_2
    //   306: iload_2
    //   307: ifeq +18 -> 325
    //   310: aload 6
    //   312: ifnull +10 -> 322
    //   315: aload 6
    //   317: invokeinterface 93 1 0
    //   322: aload 7
    //   324: areturn
    //   325: aload 6
    //   327: ifnull -323 -> 4
    //   330: aload 6
    //   332: invokeinterface 93 1 0
    //   337: aconst_null
    //   338: areturn
    //   339: astore_0
    //   340: aconst_null
    //   341: astore 6
    //   343: aload 6
    //   345: astore 5
    //   347: ldc 96
    //   349: new 34	java/lang/StringBuilder
    //   352: dup
    //   353: ldc_w 489
    //   356: invokespecial 39	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   359: aload_0
    //   360: invokevirtual 205	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   363: invokevirtual 66	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   366: invokestatic 106	com/baidu/android/pushservice/h/a:c	(Ljava/lang/String;Ljava/lang/String;)V
    //   369: aload 6
    //   371: ifnull -367 -> 4
    //   374: aload 6
    //   376: invokeinterface 93 1 0
    //   381: aconst_null
    //   382: areturn
    //   383: astore_0
    //   384: aconst_null
    //   385: astore 5
    //   387: aload 5
    //   389: ifnull +10 -> 399
    //   392: aload 5
    //   394: invokeinterface 93 1 0
    //   399: aload_0
    //   400: athrow
    //   401: astore_0
    //   402: goto -15 -> 387
    //   405: astore_0
    //   406: goto -63 -> 343
    //
    // Exception table:
    //   from	to	target	type
    //   62	71	339	java/lang/Exception
    //   62	71	383	finally
    //   77	87	401	finally
    //   93	115	401	finally
    //   119	149	401	finally
    //   153	183	401	finally
    //   187	243	401	finally
    //   249	292	401	finally
    //   296	304	401	finally
    //   347	369	401	finally
    //   77	87	405	java/lang/Exception
    //   93	115	405	java/lang/Exception
    //   119	149	405	java/lang/Exception
    //   153	183	405	java/lang/Exception
    //   187	243	405	java/lang/Exception
    //   249	292	405	java/lang/Exception
    //   296	304	405	java/lang/Exception
  }

  // ERROR //
  public static k.g a(Context paramContext, String paramString)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_2
    //   2: getstatic 23	com/baidu/android/pushservice/util/k:c	Ljava/lang/Object;
    //   5: astore 4
    //   7: aload 4
    //   9: monitorenter
    //   10: aload_0
    //   11: invokestatic 32	com/baidu/android/pushservice/util/k:d	(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;
    //   14: astore 5
    //   16: aload 5
    //   18: ifnonnull +8 -> 26
    //   21: aload 4
    //   23: monitorexit
    //   24: aconst_null
    //   25: areturn
    //   26: new 34	java/lang/StringBuilder
    //   29: dup
    //   30: ldc_w 492
    //   33: invokespecial 39	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   36: getstatic 128	com/baidu/android/pushservice/util/k$f:b	Lcom/baidu/android/pushservice/util/k$f;
    //   39: invokevirtual 118	com/baidu/android/pushservice/util/k$f:name	()Ljava/lang/String;
    //   42: invokevirtual 52	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   45: ldc_w 494
    //   48: invokevirtual 52	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   51: invokevirtual 66	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   54: astore_0
    //   55: aload 5
    //   57: ldc 191
    //   59: aconst_null
    //   60: aload_0
    //   61: iconst_1
    //   62: anewarray 196	java/lang/String
    //   65: dup
    //   66: iconst_0
    //   67: aload_1
    //   68: aastore
    //   69: aconst_null
    //   70: aconst_null
    //   71: aconst_null
    //   72: invokevirtual 444	android/database/sqlite/SQLiteDatabase:query	(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   75: astore_0
    //   76: aload_0
    //   77: invokeinterface 86 1 0
    //   82: ifeq +380 -> 462
    //   85: new 120	com/baidu/android/pushservice/util/k$g
    //   88: dup
    //   89: invokespecial 495	com/baidu/android/pushservice/util/k$g:<init>	()V
    //   92: astore_2
    //   93: aload_2
    //   94: aload_0
    //   95: aload_0
    //   96: getstatic 117	com/baidu/android/pushservice/util/k$f:a	Lcom/baidu/android/pushservice/util/k$f;
    //   99: invokevirtual 118	com/baidu/android/pushservice/util/k$f:name	()Ljava/lang/String;
    //   102: invokeinterface 478 2 0
    //   107: invokeinterface 481 2 0
    //   112: putfield 123	com/baidu/android/pushservice/util/k$g:a	Ljava/lang/String;
    //   115: aload_2
    //   116: aload_0
    //   117: aload_0
    //   118: getstatic 128	com/baidu/android/pushservice/util/k$f:b	Lcom/baidu/android/pushservice/util/k$f;
    //   121: invokevirtual 118	com/baidu/android/pushservice/util/k$f:name	()Ljava/lang/String;
    //   124: invokeinterface 478 2 0
    //   129: invokeinterface 481 2 0
    //   134: putfield 130	com/baidu/android/pushservice/util/k$g:b	Ljava/lang/String;
    //   137: aload_2
    //   138: aload_0
    //   139: aload_0
    //   140: getstatic 132	com/baidu/android/pushservice/util/k$f:c	Lcom/baidu/android/pushservice/util/k$f;
    //   143: invokevirtual 118	com/baidu/android/pushservice/util/k$f:name	()Ljava/lang/String;
    //   146: invokeinterface 478 2 0
    //   151: invokeinterface 481 2 0
    //   156: putfield 134	com/baidu/android/pushservice/util/k$g:c	Ljava/lang/String;
    //   159: aload_2
    //   160: aload_0
    //   161: aload_0
    //   162: getstatic 136	com/baidu/android/pushservice/util/k$f:d	Lcom/baidu/android/pushservice/util/k$f;
    //   165: invokevirtual 118	com/baidu/android/pushservice/util/k$f:name	()Ljava/lang/String;
    //   168: invokeinterface 478 2 0
    //   173: invokeinterface 481 2 0
    //   178: putfield 138	com/baidu/android/pushservice/util/k$g:d	Ljava/lang/String;
    //   181: aload_2
    //   182: aload_0
    //   183: aload_0
    //   184: getstatic 141	com/baidu/android/pushservice/util/k$f:e	Lcom/baidu/android/pushservice/util/k$f;
    //   187: invokevirtual 118	com/baidu/android/pushservice/util/k$f:name	()Ljava/lang/String;
    //   190: invokeinterface 478 2 0
    //   195: invokeinterface 481 2 0
    //   200: putfield 143	com/baidu/android/pushservice/util/k$g:e	Ljava/lang/String;
    //   203: aload_2
    //   204: aload_0
    //   205: aload_0
    //   206: getstatic 146	com/baidu/android/pushservice/util/k$f:f	Lcom/baidu/android/pushservice/util/k$f;
    //   209: invokevirtual 118	com/baidu/android/pushservice/util/k$f:name	()Ljava/lang/String;
    //   212: invokeinterface 478 2 0
    //   217: invokeinterface 481 2 0
    //   222: putfield 148	com/baidu/android/pushservice/util/k$g:f	Ljava/lang/String;
    //   225: aload_2
    //   226: aload_0
    //   227: aload_0
    //   228: getstatic 151	com/baidu/android/pushservice/util/k$f:g	Lcom/baidu/android/pushservice/util/k$f;
    //   231: invokevirtual 118	com/baidu/android/pushservice/util/k$f:name	()Ljava/lang/String;
    //   234: invokeinterface 478 2 0
    //   239: invokeinterface 90 2 0
    //   244: putfield 153	com/baidu/android/pushservice/util/k$g:g	I
    //   247: aload_2
    //   248: aload_0
    //   249: aload_0
    //   250: getstatic 165	com/baidu/android/pushservice/util/k$f:h	Lcom/baidu/android/pushservice/util/k$f;
    //   253: invokevirtual 118	com/baidu/android/pushservice/util/k$f:name	()Ljava/lang/String;
    //   256: invokeinterface 478 2 0
    //   261: invokeinterface 90 2 0
    //   266: putfield 167	com/baidu/android/pushservice/util/k$g:h	I
    //   269: aload_2
    //   270: aload_0
    //   271: aload_0
    //   272: getstatic 170	com/baidu/android/pushservice/util/k$f:i	Lcom/baidu/android/pushservice/util/k$f;
    //   275: invokevirtual 118	com/baidu/android/pushservice/util/k$f:name	()Ljava/lang/String;
    //   278: invokeinterface 478 2 0
    //   283: invokeinterface 90 2 0
    //   288: putfield 172	com/baidu/android/pushservice/util/k$g:i	I
    //   291: aload_2
    //   292: aload_0
    //   293: aload_0
    //   294: getstatic 175	com/baidu/android/pushservice/util/k$f:j	Lcom/baidu/android/pushservice/util/k$f;
    //   297: invokevirtual 118	com/baidu/android/pushservice/util/k$f:name	()Ljava/lang/String;
    //   300: invokeinterface 478 2 0
    //   305: invokeinterface 499 2 0
    //   310: putfield 501	com/baidu/android/pushservice/util/k$g:j	J
    //   313: aload_2
    //   314: astore_1
    //   315: aload_0
    //   316: ifnull +9 -> 325
    //   319: aload_0
    //   320: invokeinterface 93 1 0
    //   325: aload 5
    //   327: ifnull +130 -> 457
    //   330: aload 5
    //   332: invokevirtual 94	android/database/sqlite/SQLiteDatabase:close	()V
    //   335: aload_1
    //   336: astore_0
    //   337: aload 4
    //   339: monitorexit
    //   340: aload_0
    //   341: areturn
    //   342: astore_0
    //   343: aload 4
    //   345: monitorexit
    //   346: aload_0
    //   347: athrow
    //   348: astore_3
    //   349: aconst_null
    //   350: astore_0
    //   351: aload_2
    //   352: astore_1
    //   353: aload_3
    //   354: astore_2
    //   355: ldc 96
    //   357: new 34	java/lang/StringBuilder
    //   360: dup
    //   361: ldc_w 325
    //   364: invokespecial 39	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   367: aload_2
    //   368: invokevirtual 205	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   371: invokevirtual 66	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   374: invokestatic 207	com/baidu/android/pushservice/h/a:e	(Ljava/lang/String;Ljava/lang/String;)V
    //   377: aload_1
    //   378: ifnull +9 -> 387
    //   381: aload_1
    //   382: invokeinterface 93 1 0
    //   387: aload 5
    //   389: ifnull +65 -> 454
    //   392: aload 5
    //   394: invokevirtual 94	android/database/sqlite/SQLiteDatabase:close	()V
    //   397: goto -60 -> 337
    //   400: aload_0
    //   401: ifnull +9 -> 410
    //   404: aload_0
    //   405: invokeinterface 93 1 0
    //   410: aload 5
    //   412: ifnull +8 -> 420
    //   415: aload 5
    //   417: invokevirtual 94	android/database/sqlite/SQLiteDatabase:close	()V
    //   420: aload_1
    //   421: athrow
    //   422: astore_1
    //   423: goto -23 -> 400
    //   426: astore_2
    //   427: aload_1
    //   428: astore_0
    //   429: aload_2
    //   430: astore_1
    //   431: goto -31 -> 400
    //   434: astore_2
    //   435: aconst_null
    //   436: astore_3
    //   437: aload_0
    //   438: astore_1
    //   439: aload_3
    //   440: astore_0
    //   441: goto -86 -> 355
    //   444: astore_3
    //   445: aload_0
    //   446: astore_1
    //   447: aload_2
    //   448: astore_0
    //   449: aload_3
    //   450: astore_2
    //   451: goto -96 -> 355
    //   454: goto -117 -> 337
    //   457: aload_1
    //   458: astore_0
    //   459: goto -122 -> 337
    //   462: aconst_null
    //   463: astore_1
    //   464: goto -149 -> 315
    //   467: astore_1
    //   468: aconst_null
    //   469: astore_0
    //   470: goto -70 -> 400
    //
    // Exception table:
    //   from	to	target	type
    //   10	16	342	finally
    //   21	24	342	finally
    //   26	55	342	finally
    //   319	325	342	finally
    //   330	335	342	finally
    //   337	340	342	finally
    //   343	346	342	finally
    //   381	387	342	finally
    //   392	397	342	finally
    //   404	410	342	finally
    //   415	420	342	finally
    //   420	422	342	finally
    //   55	76	348	java/lang/Exception
    //   76	93	422	finally
    //   93	313	422	finally
    //   355	377	426	finally
    //   76	93	434	java/lang/Exception
    //   93	313	444	java/lang/Exception
    //   55	76	467	finally
  }

  // ERROR //
  public static java.util.List<m> a(Context paramContext)
  {
    // Byte code:
    //   0: getstatic 23	com/baidu/android/pushservice/util/k:c	Ljava/lang/Object;
    //   3: astore_3
    //   4: aload_3
    //   5: monitorenter
    //   6: aload_0
    //   7: invokestatic 32	com/baidu/android/pushservice/util/k:d	(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;
    //   10: astore 4
    //   12: aload 4
    //   14: ifnonnull +7 -> 21
    //   17: aload_3
    //   18: monitorexit
    //   19: aconst_null
    //   20: areturn
    //   21: new 504	java/util/ArrayList
    //   24: dup
    //   25: invokespecial 505	java/util/ArrayList:<init>	()V
    //   28: astore 5
    //   30: aload 4
    //   32: ldc_w 507
    //   35: aconst_null
    //   36: invokevirtual 80	android/database/sqlite/SQLiteDatabase:rawQuery	(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    //   39: astore_1
    //   40: aload_1
    //   41: astore_0
    //   42: aload_1
    //   43: invokeinterface 455 1 0
    //   48: ifeq +317 -> 365
    //   51: aload_1
    //   52: astore_0
    //   53: new 218	com/baidu/android/pushservice/i/m
    //   56: dup
    //   57: invokespecial 508	com/baidu/android/pushservice/i/m:<init>	()V
    //   60: astore_2
    //   61: aload_1
    //   62: astore_0
    //   63: aload_2
    //   64: aload_1
    //   65: aload_1
    //   66: getstatic 216	com/baidu/android/pushservice/util/k$b:b	Lcom/baidu/android/pushservice/util/k$b;
    //   69: invokevirtual 214	com/baidu/android/pushservice/util/k$b:name	()Ljava/lang/String;
    //   72: invokeinterface 478 2 0
    //   77: invokeinterface 481 2 0
    //   82: invokevirtual 510	com/baidu/android/pushservice/i/m:a	(Ljava/lang/String;)V
    //   85: aload_1
    //   86: astore_0
    //   87: aload_2
    //   88: aload_1
    //   89: aload_1
    //   90: getstatic 222	com/baidu/android/pushservice/util/k$b:c	Lcom/baidu/android/pushservice/util/k$b;
    //   93: invokevirtual 214	com/baidu/android/pushservice/util/k$b:name	()Ljava/lang/String;
    //   96: invokeinterface 478 2 0
    //   101: invokeinterface 90 2 0
    //   106: invokevirtual 513	com/baidu/android/pushservice/i/m:c	(I)V
    //   109: aload_1
    //   110: astore_0
    //   111: aload_2
    //   112: aload_1
    //   113: aload_1
    //   114: getstatic 227	com/baidu/android/pushservice/util/k$b:d	Lcom/baidu/android/pushservice/util/k$b;
    //   117: invokevirtual 214	com/baidu/android/pushservice/util/k$b:name	()Ljava/lang/String;
    //   120: invokeinterface 478 2 0
    //   125: invokeinterface 481 2 0
    //   130: invokevirtual 515	com/baidu/android/pushservice/i/m:b	(Ljava/lang/String;)V
    //   133: aload_1
    //   134: astore_0
    //   135: aload_2
    //   136: aload_1
    //   137: aload_1
    //   138: getstatic 231	com/baidu/android/pushservice/util/k$b:e	Lcom/baidu/android/pushservice/util/k$b;
    //   141: invokevirtual 214	com/baidu/android/pushservice/util/k$b:name	()Ljava/lang/String;
    //   144: invokeinterface 478 2 0
    //   149: invokeinterface 481 2 0
    //   154: invokevirtual 517	com/baidu/android/pushservice/i/m:c	(Ljava/lang/String;)V
    //   157: aload_1
    //   158: astore_0
    //   159: aload_2
    //   160: aload_1
    //   161: aload_1
    //   162: getstatic 235	com/baidu/android/pushservice/util/k$b:f	Lcom/baidu/android/pushservice/util/k$b;
    //   165: invokevirtual 214	com/baidu/android/pushservice/util/k$b:name	()Ljava/lang/String;
    //   168: invokeinterface 478 2 0
    //   173: invokeinterface 481 2 0
    //   178: invokevirtual 519	com/baidu/android/pushservice/i/m:d	(Ljava/lang/String;)V
    //   181: aload_1
    //   182: astore_0
    //   183: aload_2
    //   184: aload_1
    //   185: aload_1
    //   186: getstatic 239	com/baidu/android/pushservice/util/k$b:g	Lcom/baidu/android/pushservice/util/k$b;
    //   189: invokevirtual 214	com/baidu/android/pushservice/util/k$b:name	()Ljava/lang/String;
    //   192: invokeinterface 478 2 0
    //   197: invokeinterface 481 2 0
    //   202: invokevirtual 521	com/baidu/android/pushservice/i/m:e	(Ljava/lang/String;)V
    //   205: aload_1
    //   206: astore_0
    //   207: aload_2
    //   208: aload_1
    //   209: aload_1
    //   210: getstatic 251	com/baidu/android/pushservice/util/k$b:h	Lcom/baidu/android/pushservice/util/k$b;
    //   213: invokevirtual 214	com/baidu/android/pushservice/util/k$b:name	()Ljava/lang/String;
    //   216: invokeinterface 478 2 0
    //   221: invokeinterface 481 2 0
    //   226: invokevirtual 523	com/baidu/android/pushservice/i/m:f	(Ljava/lang/String;)V
    //   229: aload_1
    //   230: astore_0
    //   231: aload_2
    //   232: aload_1
    //   233: aload_1
    //   234: getstatic 253	com/baidu/android/pushservice/util/k$b:i	Lcom/baidu/android/pushservice/util/k$b;
    //   237: invokevirtual 214	com/baidu/android/pushservice/util/k$b:name	()Ljava/lang/String;
    //   240: invokeinterface 478 2 0
    //   245: invokeinterface 90 2 0
    //   250: invokevirtual 525	com/baidu/android/pushservice/i/m:a	(I)V
    //   253: aload_1
    //   254: astore_0
    //   255: aload_2
    //   256: aload_1
    //   257: aload_1
    //   258: getstatic 257	com/baidu/android/pushservice/util/k$b:j	Lcom/baidu/android/pushservice/util/k$b;
    //   261: invokevirtual 214	com/baidu/android/pushservice/util/k$b:name	()Ljava/lang/String;
    //   264: invokeinterface 478 2 0
    //   269: invokeinterface 481 2 0
    //   274: invokevirtual 527	com/baidu/android/pushservice/i/m:g	(Ljava/lang/String;)V
    //   277: aload_1
    //   278: astore_0
    //   279: aload_2
    //   280: aload_1
    //   281: aload_1
    //   282: getstatic 262	com/baidu/android/pushservice/util/k$b:k	Lcom/baidu/android/pushservice/util/k$b;
    //   285: invokevirtual 214	com/baidu/android/pushservice/util/k$b:name	()Ljava/lang/String;
    //   288: invokeinterface 478 2 0
    //   293: invokeinterface 90 2 0
    //   298: invokevirtual 529	com/baidu/android/pushservice/i/m:b	(I)V
    //   301: aload_1
    //   302: astore_0
    //   303: aload 5
    //   305: aload_2
    //   306: invokeinterface 535 2 0
    //   311: pop
    //   312: goto -272 -> 40
    //   315: astore_2
    //   316: aload_1
    //   317: astore_0
    //   318: ldc 96
    //   320: new 34	java/lang/StringBuilder
    //   323: dup
    //   324: ldc_w 325
    //   327: invokespecial 39	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   330: aload_2
    //   331: invokevirtual 205	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   334: invokevirtual 66	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   337: invokestatic 207	com/baidu/android/pushservice/h/a:e	(Ljava/lang/String;Ljava/lang/String;)V
    //   340: aload_1
    //   341: ifnull +9 -> 350
    //   344: aload_1
    //   345: invokeinterface 93 1 0
    //   350: aload 4
    //   352: ifnull +8 -> 360
    //   355: aload 4
    //   357: invokevirtual 94	android/database/sqlite/SQLiteDatabase:close	()V
    //   360: aload_3
    //   361: monitorexit
    //   362: aload 5
    //   364: areturn
    //   365: aload_1
    //   366: ifnull +9 -> 375
    //   369: aload_1
    //   370: invokeinterface 93 1 0
    //   375: aload 4
    //   377: ifnull -17 -> 360
    //   380: aload 4
    //   382: invokevirtual 94	android/database/sqlite/SQLiteDatabase:close	()V
    //   385: goto -25 -> 360
    //   388: astore_0
    //   389: aload_3
    //   390: monitorexit
    //   391: aload_0
    //   392: athrow
    //   393: astore_0
    //   394: aconst_null
    //   395: astore_2
    //   396: aload_0
    //   397: astore_1
    //   398: aload_2
    //   399: ifnull +9 -> 408
    //   402: aload_2
    //   403: invokeinterface 93 1 0
    //   408: aload 4
    //   410: ifnull +8 -> 418
    //   413: aload 4
    //   415: invokevirtual 94	android/database/sqlite/SQLiteDatabase:close	()V
    //   418: aload_1
    //   419: athrow
    //   420: astore_1
    //   421: aload_0
    //   422: astore_2
    //   423: goto -25 -> 398
    //   426: astore_2
    //   427: aconst_null
    //   428: astore_1
    //   429: goto -113 -> 316
    //
    // Exception table:
    //   from	to	target	type
    //   42	51	315	java/lang/Exception
    //   53	61	315	java/lang/Exception
    //   63	85	315	java/lang/Exception
    //   87	109	315	java/lang/Exception
    //   111	133	315	java/lang/Exception
    //   135	157	315	java/lang/Exception
    //   159	181	315	java/lang/Exception
    //   183	205	315	java/lang/Exception
    //   207	229	315	java/lang/Exception
    //   231	253	315	java/lang/Exception
    //   255	277	315	java/lang/Exception
    //   279	301	315	java/lang/Exception
    //   303	312	315	java/lang/Exception
    //   6	12	388	finally
    //   17	19	388	finally
    //   21	30	388	finally
    //   344	350	388	finally
    //   355	360	388	finally
    //   360	362	388	finally
    //   369	375	388	finally
    //   380	385	388	finally
    //   389	391	388	finally
    //   402	408	388	finally
    //   413	418	388	finally
    //   418	420	388	finally
    //   30	40	393	finally
    //   42	51	420	finally
    //   53	61	420	finally
    //   63	85	420	finally
    //   87	109	420	finally
    //   111	133	420	finally
    //   135	157	420	finally
    //   159	181	420	finally
    //   183	205	420	finally
    //   207	229	420	finally
    //   231	253	420	finally
    //   255	277	420	finally
    //   279	301	420	finally
    //   303	312	420	finally
    //   318	340	420	finally
    //   30	40	426	java/lang/Exception
  }

  // ERROR //
  public static java.util.List<com.baidu.android.pushservice.i.f> a(Context paramContext, long paramLong1, long paramLong2, int paramInt1, int paramInt2)
  {
    // Byte code:
    //   0: getstatic 23	com/baidu/android/pushservice/util/k:c	Ljava/lang/Object;
    //   3: astore 9
    //   5: aload 9
    //   7: monitorenter
    //   8: aload_0
    //   9: invokestatic 32	com/baidu/android/pushservice/util/k:d	(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;
    //   12: astore 10
    //   14: aload 10
    //   16: ifnonnull +8 -> 24
    //   19: aload 9
    //   21: monitorexit
    //   22: aconst_null
    //   23: areturn
    //   24: new 504	java/util/ArrayList
    //   27: dup
    //   28: invokespecial 505	java/util/ArrayList:<init>	()V
    //   31: astore 11
    //   33: new 34	java/lang/StringBuilder
    //   36: dup
    //   37: ldc_w 540
    //   40: invokespecial 39	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   43: getstatic 44	com/baidu/android/pushservice/util/k$c:c	Lcom/baidu/android/pushservice/util/k$c;
    //   46: invokevirtual 48	com/baidu/android/pushservice/util/k$c:name	()Ljava/lang/String;
    //   49: invokevirtual 52	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   52: ldc 54
    //   54: invokevirtual 52	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   57: lload_1
    //   58: invokevirtual 57	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   61: ldc 59
    //   63: invokevirtual 52	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   66: getstatic 44	com/baidu/android/pushservice/util/k$c:c	Lcom/baidu/android/pushservice/util/k$c;
    //   69: invokevirtual 48	com/baidu/android/pushservice/util/k$c:name	()Ljava/lang/String;
    //   72: invokevirtual 52	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   75: ldc 61
    //   77: invokevirtual 52	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   80: lload_3
    //   81: invokevirtual 57	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   84: ldc_w 542
    //   87: invokevirtual 52	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   90: iload 6
    //   92: invokevirtual 424	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   95: ldc_w 544
    //   98: invokevirtual 52	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   101: iload 5
    //   103: invokevirtual 424	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   106: ldc_w 474
    //   109: invokevirtual 52	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   112: invokevirtual 66	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   115: astore_0
    //   116: aload 10
    //   118: aload_0
    //   119: aconst_null
    //   120: invokevirtual 80	android/database/sqlite/SQLiteDatabase:rawQuery	(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    //   123: astore 7
    //   125: aload 7
    //   127: astore_0
    //   128: aload 7
    //   130: invokeinterface 455 1 0
    //   135: ifeq +482 -> 617
    //   138: aload 7
    //   140: astore_0
    //   141: new 546	com/baidu/android/pushservice/i/f
    //   144: dup
    //   145: invokespecial 547	com/baidu/android/pushservice/i/f:<init>	()V
    //   148: astore 8
    //   150: aload 7
    //   152: astore_0
    //   153: aload 8
    //   155: aload 7
    //   157: aload 7
    //   159: getstatic 549	com/baidu/android/pushservice/util/k$c:a	Lcom/baidu/android/pushservice/util/k$c;
    //   162: invokevirtual 48	com/baidu/android/pushservice/util/k$c:name	()Ljava/lang/String;
    //   165: invokeinterface 478 2 0
    //   170: invokeinterface 90 2 0
    //   175: invokevirtual 550	com/baidu/android/pushservice/i/f:a	(I)V
    //   178: aload 7
    //   180: astore_0
    //   181: aload 8
    //   183: aload 7
    //   185: aload 7
    //   187: getstatic 328	com/baidu/android/pushservice/util/k$c:b	Lcom/baidu/android/pushservice/util/k$c;
    //   190: invokevirtual 48	com/baidu/android/pushservice/util/k$c:name	()Ljava/lang/String;
    //   193: invokeinterface 478 2 0
    //   198: invokeinterface 481 2 0
    //   203: invokevirtual 551	com/baidu/android/pushservice/i/f:a	(Ljava/lang/String;)V
    //   206: aload 7
    //   208: astore_0
    //   209: aload 8
    //   211: aload 7
    //   213: aload 7
    //   215: getstatic 338	com/baidu/android/pushservice/util/k$c:l	Lcom/baidu/android/pushservice/util/k$c;
    //   218: invokevirtual 48	com/baidu/android/pushservice/util/k$c:name	()Ljava/lang/String;
    //   221: invokeinterface 478 2 0
    //   226: invokeinterface 481 2 0
    //   231: invokevirtual 552	com/baidu/android/pushservice/i/f:f	(Ljava/lang/String;)V
    //   234: aload 7
    //   236: astore_0
    //   237: aload 8
    //   239: aload 7
    //   241: aload 7
    //   243: getstatic 352	com/baidu/android/pushservice/util/k$c:m	Lcom/baidu/android/pushservice/util/k$c;
    //   246: invokevirtual 48	com/baidu/android/pushservice/util/k$c:name	()Ljava/lang/String;
    //   249: invokeinterface 478 2 0
    //   254: invokeinterface 481 2 0
    //   259: invokevirtual 553	com/baidu/android/pushservice/i/f:g	(Ljava/lang/String;)V
    //   262: aload 7
    //   264: astore_0
    //   265: aload 8
    //   267: aload 7
    //   269: aload 7
    //   271: getstatic 347	com/baidu/android/pushservice/util/k$c:k	Lcom/baidu/android/pushservice/util/k$c;
    //   274: invokevirtual 48	com/baidu/android/pushservice/util/k$c:name	()Ljava/lang/String;
    //   277: invokeinterface 478 2 0
    //   282: invokeinterface 90 2 0
    //   287: invokevirtual 555	com/baidu/android/pushservice/i/f:e	(I)V
    //   290: aload 7
    //   292: astore_0
    //   293: aload 8
    //   295: aload 7
    //   297: aload 7
    //   299: getstatic 341	com/baidu/android/pushservice/util/k$c:h	Lcom/baidu/android/pushservice/util/k$c;
    //   302: invokevirtual 48	com/baidu/android/pushservice/util/k$c:name	()Ljava/lang/String;
    //   305: invokeinterface 478 2 0
    //   310: invokeinterface 481 2 0
    //   315: invokevirtual 556	com/baidu/android/pushservice/i/f:d	(Ljava/lang/String;)V
    //   318: aload 7
    //   320: astore_0
    //   321: aload 8
    //   323: aload 7
    //   325: aload 7
    //   327: getstatic 406	com/baidu/android/pushservice/util/k$c:f	Lcom/baidu/android/pushservice/util/k$c;
    //   330: invokevirtual 48	com/baidu/android/pushservice/util/k$c:name	()Ljava/lang/String;
    //   333: invokeinterface 478 2 0
    //   338: invokeinterface 481 2 0
    //   343: invokevirtual 557	com/baidu/android/pushservice/i/f:c	(Ljava/lang/String;)V
    //   346: aload 7
    //   348: astore_0
    //   349: aload 8
    //   351: aload 7
    //   353: aload 7
    //   355: getstatic 409	com/baidu/android/pushservice/util/k$c:g	Lcom/baidu/android/pushservice/util/k$c;
    //   358: invokevirtual 48	com/baidu/android/pushservice/util/k$c:name	()Ljava/lang/String;
    //   361: invokeinterface 478 2 0
    //   366: invokeinterface 90 2 0
    //   371: invokevirtual 558	com/baidu/android/pushservice/i/f:c	(I)V
    //   374: aload 7
    //   376: astore_0
    //   377: aload 8
    //   379: aload 7
    //   381: aload 7
    //   383: getstatic 403	com/baidu/android/pushservice/util/k$c:e	Lcom/baidu/android/pushservice/util/k$c;
    //   386: invokevirtual 48	com/baidu/android/pushservice/util/k$c:name	()Ljava/lang/String;
    //   389: invokeinterface 478 2 0
    //   394: invokeinterface 90 2 0
    //   399: invokevirtual 559	com/baidu/android/pushservice/i/f:b	(I)V
    //   402: aload 7
    //   404: astore_0
    //   405: aload 8
    //   407: aload 7
    //   409: aload 7
    //   411: getstatic 334	com/baidu/android/pushservice/util/k$c:d	Lcom/baidu/android/pushservice/util/k$c;
    //   414: invokevirtual 48	com/baidu/android/pushservice/util/k$c:name	()Ljava/lang/String;
    //   417: invokeinterface 478 2 0
    //   422: invokeinterface 481 2 0
    //   427: invokevirtual 560	com/baidu/android/pushservice/i/f:b	(Ljava/lang/String;)V
    //   430: aload 7
    //   432: astore_0
    //   433: aload 8
    //   435: aload 7
    //   437: aload 7
    //   439: getstatic 415	com/baidu/android/pushservice/util/k$c:n	Lcom/baidu/android/pushservice/util/k$c;
    //   442: invokevirtual 48	com/baidu/android/pushservice/util/k$c:name	()Ljava/lang/String;
    //   445: invokeinterface 478 2 0
    //   450: invokeinterface 481 2 0
    //   455: invokevirtual 562	com/baidu/android/pushservice/i/f:h	(Ljava/lang/String;)V
    //   458: aload 7
    //   460: astore_0
    //   461: aload 8
    //   463: aload 7
    //   465: aload 7
    //   467: getstatic 344	com/baidu/android/pushservice/util/k$c:i	Lcom/baidu/android/pushservice/util/k$c;
    //   470: invokevirtual 48	com/baidu/android/pushservice/util/k$c:name	()Ljava/lang/String;
    //   473: invokeinterface 478 2 0
    //   478: invokeinterface 481 2 0
    //   483: invokevirtual 563	com/baidu/android/pushservice/i/f:e	(Ljava/lang/String;)V
    //   486: aload 7
    //   488: astore_0
    //   489: aload 8
    //   491: aload 7
    //   493: aload 7
    //   495: getstatic 376	com/baidu/android/pushservice/util/k$c:j	Lcom/baidu/android/pushservice/util/k$c;
    //   498: invokevirtual 48	com/baidu/android/pushservice/util/k$c:name	()Ljava/lang/String;
    //   501: invokeinterface 478 2 0
    //   506: invokeinterface 90 2 0
    //   511: invokevirtual 565	com/baidu/android/pushservice/i/f:d	(I)V
    //   514: aload 7
    //   516: astore_0
    //   517: aload 8
    //   519: aload 7
    //   521: aload 7
    //   523: getstatic 44	com/baidu/android/pushservice/util/k$c:c	Lcom/baidu/android/pushservice/util/k$c;
    //   526: invokevirtual 48	com/baidu/android/pushservice/util/k$c:name	()Ljava/lang/String;
    //   529: invokeinterface 478 2 0
    //   534: invokeinterface 499 2 0
    //   539: invokevirtual 568	com/baidu/android/pushservice/i/f:a	(J)V
    //   542: aload 7
    //   544: astore_0
    //   545: aload 11
    //   547: aload 8
    //   549: invokeinterface 535 2 0
    //   554: pop
    //   555: goto -430 -> 125
    //   558: astore 8
    //   560: aload 7
    //   562: astore_0
    //   563: ldc 96
    //   565: new 34	java/lang/StringBuilder
    //   568: dup
    //   569: ldc_w 570
    //   572: invokespecial 39	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   575: aload 8
    //   577: invokevirtual 101	java/lang/Exception:getMessage	()Ljava/lang/String;
    //   580: invokevirtual 52	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   583: invokevirtual 66	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   586: invokestatic 106	com/baidu/android/pushservice/h/a:c	(Ljava/lang/String;Ljava/lang/String;)V
    //   589: aload 7
    //   591: ifnull +10 -> 601
    //   594: aload 7
    //   596: invokeinterface 93 1 0
    //   601: aload 10
    //   603: ifnull +8 -> 611
    //   606: aload 10
    //   608: invokevirtual 94	android/database/sqlite/SQLiteDatabase:close	()V
    //   611: aload 9
    //   613: monitorexit
    //   614: aload 11
    //   616: areturn
    //   617: aload 7
    //   619: ifnull +10 -> 629
    //   622: aload 7
    //   624: invokeinterface 93 1 0
    //   629: aload 10
    //   631: ifnull -20 -> 611
    //   634: aload 10
    //   636: invokevirtual 94	android/database/sqlite/SQLiteDatabase:close	()V
    //   639: goto -28 -> 611
    //   642: astore_0
    //   643: aload 9
    //   645: monitorexit
    //   646: aload_0
    //   647: athrow
    //   648: astore_0
    //   649: aconst_null
    //   650: astore 8
    //   652: aload_0
    //   653: astore 7
    //   655: aload 8
    //   657: ifnull +10 -> 667
    //   660: aload 8
    //   662: invokeinterface 93 1 0
    //   667: aload 10
    //   669: ifnull +8 -> 677
    //   672: aload 10
    //   674: invokevirtual 94	android/database/sqlite/SQLiteDatabase:close	()V
    //   677: aload 7
    //   679: athrow
    //   680: astore 7
    //   682: aload_0
    //   683: astore 8
    //   685: goto -30 -> 655
    //   688: astore 8
    //   690: aconst_null
    //   691: astore 7
    //   693: goto -133 -> 560
    //
    // Exception table:
    //   from	to	target	type
    //   128	138	558	java/lang/Exception
    //   141	150	558	java/lang/Exception
    //   153	178	558	java/lang/Exception
    //   181	206	558	java/lang/Exception
    //   209	234	558	java/lang/Exception
    //   237	262	558	java/lang/Exception
    //   265	290	558	java/lang/Exception
    //   293	318	558	java/lang/Exception
    //   321	346	558	java/lang/Exception
    //   349	374	558	java/lang/Exception
    //   377	402	558	java/lang/Exception
    //   405	430	558	java/lang/Exception
    //   433	458	558	java/lang/Exception
    //   461	486	558	java/lang/Exception
    //   489	514	558	java/lang/Exception
    //   517	542	558	java/lang/Exception
    //   545	555	558	java/lang/Exception
    //   8	14	642	finally
    //   19	22	642	finally
    //   24	116	642	finally
    //   594	601	642	finally
    //   606	611	642	finally
    //   611	614	642	finally
    //   622	629	642	finally
    //   634	639	642	finally
    //   643	646	642	finally
    //   660	667	642	finally
    //   672	677	642	finally
    //   677	680	642	finally
    //   116	125	648	finally
    //   128	138	680	finally
    //   141	150	680	finally
    //   153	178	680	finally
    //   181	206	680	finally
    //   209	234	680	finally
    //   237	262	680	finally
    //   265	290	680	finally
    //   293	318	680	finally
    //   321	346	680	finally
    //   349	374	680	finally
    //   377	402	680	finally
    //   405	430	680	finally
    //   433	458	680	finally
    //   461	486	680	finally
    //   489	514	680	finally
    //   517	542	680	finally
    //   545	555	680	finally
    //   563	589	680	finally
    //   116	125	688	java/lang/Exception
  }

  public static void a()
  {
    synchronized (c)
    {
      try
      {
        if (a != null)
        {
          a.close();
          a = null;
        }
        return;
      }
      catch (Exception localException)
      {
        while (true)
        {
          a = null;
          a.e("PushDatabase", "close db: " + localException);
        }
      }
    }
  }

  private static void a(String paramString, Context paramContext)
  {
    paramContext = paramContext.getDatabasePath("pushstat_4.6.3.db").getParentFile();
    if ((paramContext == null) || (!paramContext.isDirectory()));
    while (true)
    {
      return;
      paramString = paramContext.listFiles(new k.1(paramString));
      if (paramString != null)
      {
        int j = paramString.length;
        int i = 0;
        while (i < j)
        {
          paramContext = paramString[i];
          if (!paramContext.isDirectory())
            paramContext.delete();
          i += 1;
        }
      }
    }
  }

  private static boolean a(SQLiteDatabase paramSQLiteDatabase, j paramj)
  {
    Object localObject2 = null;
    Object localObject1 = null;
    if (paramSQLiteDatabase == null)
      return true;
    Object localObject3 = "SELECT * FROM PushBehavior WHERE " + k.c.b.name() + " = '" + paramj.f + "' AND " + k.c.k.name() + " = " + paramj.i + ";";
    while (true)
    {
      try
      {
        localObject3 = paramSQLiteDatabase.rawQuery((String)localObject3, null);
        localObject1 = localObject3;
        localObject2 = localObject3;
        if (((Cursor)localObject3).moveToNext())
        {
          localObject1 = localObject3;
          localObject2 = localObject3;
          paramj.a = ((Cursor)localObject3).getInt(((Cursor)localObject3).getColumnIndex(k.c.j.name()));
          localObject1 = localObject3;
          localObject2 = localObject3;
          b(paramSQLiteDatabase, paramj);
          i = 1;
          if (i != 0)
          {
            if (localObject3 == null)
              break;
            ((Cursor)localObject3).close();
            return true;
          }
          if (localObject3 != null)
            ((Cursor)localObject3).close();
          return false;
        }
      }
      catch (Exception paramSQLiteDatabase)
      {
        localObject2 = localObject1;
        a.b("PushDatabase", "needToInsertUpdatePromptBehavior Exception: " + paramSQLiteDatabase);
        if (localObject1 == null)
          continue;
        localObject1.close();
        continue;
      }
      finally
      {
        if (localObject2 != null)
          localObject2.close();
      }
      int i = 0;
    }
  }

  public static int b(Context paramContext, String paramString)
  {
    synchronized (c)
    {
      paramContext = d(paramContext);
      if (paramContext == null)
        return 0;
    }
    try
    {
      i = paramContext.delete("FileDownloadingInfo", k.f.b.name() + "=?", new String[] { paramString });
      paramContext.close();
      return i;
      paramContext = finally;
      throw paramContext;
    }
    catch (Exception paramString)
    {
      while (true)
      {
        a.e("PushDatabase", "exception " + paramString);
        int i = -1;
      }
    }
  }

  private static int b(SQLiteDatabase paramSQLiteDatabase, j paramj)
  {
    if (paramSQLiteDatabase == null)
      return 0;
    ContentValues localContentValues = new ContentValues();
    localContentValues.put(k.c.b.name(), paramj.f);
    localContentValues.put(k.c.c.name(), Long.valueOf(paramj.g));
    localContentValues.put(k.c.d.name(), paramj.h);
    localContentValues.put(k.c.j.name(), Integer.valueOf(paramj.a + 1));
    localContentValues.put(k.c.k.name(), Integer.valueOf(paramj.i));
    localContentValues.put(k.c.l.name(), paramj.j);
    try
    {
      paramSQLiteDatabase.update("PushBehavior", localContentValues, k.c.b.name() + " = '" + paramj.f + "' AND " + k.c.k.name() + " = " + paramj.i + ";", null);
      return -1;
    }
    catch (Exception paramSQLiteDatabase)
    {
      while (true)
        a.b("PushDatabase", "updatePromptBehavior Exception: " + paramSQLiteDatabase);
    }
  }

  public static long b(Context paramContext, j paramj)
  {
    long l1 = 0L;
    synchronized (c)
    {
      paramContext = d(paramContext);
      if (paramContext == null)
        return -1L;
      if (a(paramContext, paramj))
        return 0L;
    }
    ContentValues localContentValues = new ContentValues();
    localContentValues.put(k.c.b.name(), paramj.f);
    localContentValues.put(k.c.c.name(), Long.valueOf(paramj.g));
    localContentValues.put(k.c.d.name(), paramj.h);
    localContentValues.put(k.c.j.name(), Integer.valueOf(1));
    localContentValues.put(k.c.k.name(), Integer.valueOf(paramj.i));
    localContentValues.put(k.c.l.name(), paramj.j);
    try
    {
      long l2 = paramContext.insert("PushBehavior", null, localContentValues);
      l1 = l2;
      paramContext.close();
      return l1;
    }
    catch (Exception paramj)
    {
      while (true)
        a.e("PushDatabase", "insertAgentOrHttpBehavior E: " + paramj);
    }
  }

  // ERROR //
  public static java.util.List<k.g> b(Context paramContext)
  {
    // Byte code:
    //   0: getstatic 23	com/baidu/android/pushservice/util/k:c	Ljava/lang/Object;
    //   3: astore_3
    //   4: aload_3
    //   5: monitorenter
    //   6: new 504	java/util/ArrayList
    //   9: dup
    //   10: invokespecial 505	java/util/ArrayList:<init>	()V
    //   13: astore 5
    //   15: aload_0
    //   16: invokestatic 32	com/baidu/android/pushservice/util/k:d	(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;
    //   19: astore 4
    //   21: aload 4
    //   23: ifnonnull +8 -> 31
    //   26: aload_3
    //   27: monitorexit
    //   28: aload 5
    //   30: areturn
    //   31: aload 4
    //   33: ldc 191
    //   35: aconst_null
    //   36: aconst_null
    //   37: aconst_null
    //   38: aconst_null
    //   39: aconst_null
    //   40: new 34	java/lang/StringBuilder
    //   43: dup
    //   44: invokespecial 192	java/lang/StringBuilder:<init>	()V
    //   47: getstatic 175	com/baidu/android/pushservice/util/k$f:j	Lcom/baidu/android/pushservice/util/k$f;
    //   50: invokevirtual 118	com/baidu/android/pushservice/util/k$f:name	()Ljava/lang/String;
    //   53: invokevirtual 52	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   56: ldc_w 623
    //   59: invokevirtual 52	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   62: invokevirtual 66	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   65: invokevirtual 444	android/database/sqlite/SQLiteDatabase:query	(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   68: astore_1
    //   69: aload_1
    //   70: astore_0
    //   71: aload_1
    //   72: invokeinterface 455 1 0
    //   77: ifeq +317 -> 394
    //   80: aload_1
    //   81: astore_0
    //   82: new 120	com/baidu/android/pushservice/util/k$g
    //   85: dup
    //   86: invokespecial 495	com/baidu/android/pushservice/util/k$g:<init>	()V
    //   89: astore_2
    //   90: aload_1
    //   91: astore_0
    //   92: aload_2
    //   93: aload_1
    //   94: aload_1
    //   95: getstatic 117	com/baidu/android/pushservice/util/k$f:a	Lcom/baidu/android/pushservice/util/k$f;
    //   98: invokevirtual 118	com/baidu/android/pushservice/util/k$f:name	()Ljava/lang/String;
    //   101: invokeinterface 478 2 0
    //   106: invokeinterface 481 2 0
    //   111: putfield 123	com/baidu/android/pushservice/util/k$g:a	Ljava/lang/String;
    //   114: aload_1
    //   115: astore_0
    //   116: aload_2
    //   117: aload_1
    //   118: aload_1
    //   119: getstatic 128	com/baidu/android/pushservice/util/k$f:b	Lcom/baidu/android/pushservice/util/k$f;
    //   122: invokevirtual 118	com/baidu/android/pushservice/util/k$f:name	()Ljava/lang/String;
    //   125: invokeinterface 478 2 0
    //   130: invokeinterface 481 2 0
    //   135: putfield 130	com/baidu/android/pushservice/util/k$g:b	Ljava/lang/String;
    //   138: aload_1
    //   139: astore_0
    //   140: aload_2
    //   141: aload_1
    //   142: aload_1
    //   143: getstatic 132	com/baidu/android/pushservice/util/k$f:c	Lcom/baidu/android/pushservice/util/k$f;
    //   146: invokevirtual 118	com/baidu/android/pushservice/util/k$f:name	()Ljava/lang/String;
    //   149: invokeinterface 478 2 0
    //   154: invokeinterface 481 2 0
    //   159: putfield 134	com/baidu/android/pushservice/util/k$g:c	Ljava/lang/String;
    //   162: aload_1
    //   163: astore_0
    //   164: aload_2
    //   165: aload_1
    //   166: aload_1
    //   167: getstatic 136	com/baidu/android/pushservice/util/k$f:d	Lcom/baidu/android/pushservice/util/k$f;
    //   170: invokevirtual 118	com/baidu/android/pushservice/util/k$f:name	()Ljava/lang/String;
    //   173: invokeinterface 478 2 0
    //   178: invokeinterface 481 2 0
    //   183: putfield 138	com/baidu/android/pushservice/util/k$g:d	Ljava/lang/String;
    //   186: aload_1
    //   187: astore_0
    //   188: aload_2
    //   189: aload_1
    //   190: aload_1
    //   191: getstatic 141	com/baidu/android/pushservice/util/k$f:e	Lcom/baidu/android/pushservice/util/k$f;
    //   194: invokevirtual 118	com/baidu/android/pushservice/util/k$f:name	()Ljava/lang/String;
    //   197: invokeinterface 478 2 0
    //   202: invokeinterface 481 2 0
    //   207: putfield 143	com/baidu/android/pushservice/util/k$g:e	Ljava/lang/String;
    //   210: aload_1
    //   211: astore_0
    //   212: aload_2
    //   213: aload_1
    //   214: aload_1
    //   215: getstatic 146	com/baidu/android/pushservice/util/k$f:f	Lcom/baidu/android/pushservice/util/k$f;
    //   218: invokevirtual 118	com/baidu/android/pushservice/util/k$f:name	()Ljava/lang/String;
    //   221: invokeinterface 478 2 0
    //   226: invokeinterface 481 2 0
    //   231: putfield 148	com/baidu/android/pushservice/util/k$g:f	Ljava/lang/String;
    //   234: aload_1
    //   235: astore_0
    //   236: aload_2
    //   237: aload_1
    //   238: aload_1
    //   239: getstatic 151	com/baidu/android/pushservice/util/k$f:g	Lcom/baidu/android/pushservice/util/k$f;
    //   242: invokevirtual 118	com/baidu/android/pushservice/util/k$f:name	()Ljava/lang/String;
    //   245: invokeinterface 478 2 0
    //   250: invokeinterface 90 2 0
    //   255: putfield 153	com/baidu/android/pushservice/util/k$g:g	I
    //   258: aload_1
    //   259: astore_0
    //   260: aload_2
    //   261: aload_1
    //   262: aload_1
    //   263: getstatic 165	com/baidu/android/pushservice/util/k$f:h	Lcom/baidu/android/pushservice/util/k$f;
    //   266: invokevirtual 118	com/baidu/android/pushservice/util/k$f:name	()Ljava/lang/String;
    //   269: invokeinterface 478 2 0
    //   274: invokeinterface 90 2 0
    //   279: putfield 167	com/baidu/android/pushservice/util/k$g:h	I
    //   282: aload_1
    //   283: astore_0
    //   284: aload_2
    //   285: aload_1
    //   286: aload_1
    //   287: getstatic 170	com/baidu/android/pushservice/util/k$f:i	Lcom/baidu/android/pushservice/util/k$f;
    //   290: invokevirtual 118	com/baidu/android/pushservice/util/k$f:name	()Ljava/lang/String;
    //   293: invokeinterface 478 2 0
    //   298: invokeinterface 90 2 0
    //   303: putfield 172	com/baidu/android/pushservice/util/k$g:i	I
    //   306: aload_1
    //   307: astore_0
    //   308: aload_2
    //   309: aload_1
    //   310: aload_1
    //   311: getstatic 175	com/baidu/android/pushservice/util/k$f:j	Lcom/baidu/android/pushservice/util/k$f;
    //   314: invokevirtual 118	com/baidu/android/pushservice/util/k$f:name	()Ljava/lang/String;
    //   317: invokeinterface 478 2 0
    //   322: invokeinterface 499 2 0
    //   327: putfield 501	com/baidu/android/pushservice/util/k$g:j	J
    //   330: aload_1
    //   331: astore_0
    //   332: aload 5
    //   334: aload_2
    //   335: invokeinterface 535 2 0
    //   340: pop
    //   341: goto -272 -> 69
    //   344: astore_2
    //   345: aload_1
    //   346: astore_0
    //   347: ldc 96
    //   349: new 34	java/lang/StringBuilder
    //   352: dup
    //   353: ldc_w 325
    //   356: invokespecial 39	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   359: aload_2
    //   360: invokevirtual 205	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   363: invokevirtual 66	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   366: invokestatic 207	com/baidu/android/pushservice/h/a:e	(Ljava/lang/String;Ljava/lang/String;)V
    //   369: aload_1
    //   370: ifnull +9 -> 379
    //   373: aload_1
    //   374: invokeinterface 93 1 0
    //   379: aload 4
    //   381: ifnull +8 -> 389
    //   384: aload 4
    //   386: invokevirtual 94	android/database/sqlite/SQLiteDatabase:close	()V
    //   389: aload_3
    //   390: monitorexit
    //   391: aload 5
    //   393: areturn
    //   394: aload_1
    //   395: ifnull +9 -> 404
    //   398: aload_1
    //   399: invokeinterface 93 1 0
    //   404: aload 4
    //   406: ifnull -17 -> 389
    //   409: aload 4
    //   411: invokevirtual 94	android/database/sqlite/SQLiteDatabase:close	()V
    //   414: goto -25 -> 389
    //   417: astore_0
    //   418: aload_3
    //   419: monitorexit
    //   420: aload_0
    //   421: athrow
    //   422: astore_1
    //   423: aconst_null
    //   424: astore_0
    //   425: aload_0
    //   426: ifnull +9 -> 435
    //   429: aload_0
    //   430: invokeinterface 93 1 0
    //   435: aload 4
    //   437: ifnull +8 -> 445
    //   440: aload 4
    //   442: invokevirtual 94	android/database/sqlite/SQLiteDatabase:close	()V
    //   445: aload_1
    //   446: athrow
    //   447: astore_1
    //   448: goto -23 -> 425
    //   451: astore_2
    //   452: aconst_null
    //   453: astore_1
    //   454: goto -109 -> 345
    //
    // Exception table:
    //   from	to	target	type
    //   71	80	344	java/lang/Exception
    //   82	90	344	java/lang/Exception
    //   92	114	344	java/lang/Exception
    //   116	138	344	java/lang/Exception
    //   140	162	344	java/lang/Exception
    //   164	186	344	java/lang/Exception
    //   188	210	344	java/lang/Exception
    //   212	234	344	java/lang/Exception
    //   236	258	344	java/lang/Exception
    //   260	282	344	java/lang/Exception
    //   284	306	344	java/lang/Exception
    //   308	330	344	java/lang/Exception
    //   332	341	344	java/lang/Exception
    //   6	21	417	finally
    //   26	28	417	finally
    //   373	379	417	finally
    //   384	389	417	finally
    //   389	391	417	finally
    //   398	404	417	finally
    //   409	414	417	finally
    //   418	420	417	finally
    //   429	435	417	finally
    //   440	445	417	finally
    //   445	447	417	finally
    //   31	69	422	finally
    //   71	80	447	finally
    //   82	90	447	finally
    //   92	114	447	finally
    //   116	138	447	finally
    //   140	162	447	finally
    //   164	186	447	finally
    //   188	210	447	finally
    //   212	234	447	finally
    //   236	258	447	finally
    //   260	282	447	finally
    //   284	306	447	finally
    //   308	330	447	finally
    //   332	341	447	finally
    //   347	369	447	finally
    //   31	69	451	java/lang/Exception
  }

  // ERROR //
  public static java.util.List<com.baidu.android.pushservice.i.a> b(Context paramContext, long paramLong1, long paramLong2, int paramInt1, int paramInt2)
  {
    // Byte code:
    //   0: getstatic 23	com/baidu/android/pushservice/util/k:c	Ljava/lang/Object;
    //   3: astore 9
    //   5: aload 9
    //   7: monitorenter
    //   8: aload_0
    //   9: invokestatic 32	com/baidu/android/pushservice/util/k:d	(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;
    //   12: astore 10
    //   14: aload 10
    //   16: ifnonnull +8 -> 24
    //   19: aload 9
    //   21: monitorexit
    //   22: aconst_null
    //   23: areturn
    //   24: new 504	java/util/ArrayList
    //   27: dup
    //   28: invokespecial 505	java/util/ArrayList:<init>	()V
    //   31: astore 11
    //   33: new 34	java/lang/StringBuilder
    //   36: dup
    //   37: ldc_w 626
    //   40: invokespecial 39	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   43: getstatic 73	com/baidu/android/pushservice/util/k$a:c	Lcom/baidu/android/pushservice/util/k$a;
    //   46: invokevirtual 74	com/baidu/android/pushservice/util/k$a:name	()Ljava/lang/String;
    //   49: invokevirtual 52	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   52: ldc 54
    //   54: invokevirtual 52	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   57: lload_1
    //   58: invokevirtual 57	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   61: ldc 59
    //   63: invokevirtual 52	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   66: getstatic 73	com/baidu/android/pushservice/util/k$a:c	Lcom/baidu/android/pushservice/util/k$a;
    //   69: invokevirtual 74	com/baidu/android/pushservice/util/k$a:name	()Ljava/lang/String;
    //   72: invokevirtual 52	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   75: ldc 61
    //   77: invokevirtual 52	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   80: lload_3
    //   81: invokevirtual 57	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   84: ldc_w 542
    //   87: invokevirtual 52	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   90: iload 6
    //   92: invokevirtual 424	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   95: ldc_w 544
    //   98: invokevirtual 52	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   101: iload 5
    //   103: invokevirtual 424	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   106: ldc_w 474
    //   109: invokevirtual 52	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   112: invokevirtual 66	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   115: astore_0
    //   116: aload 10
    //   118: aload_0
    //   119: aconst_null
    //   120: invokevirtual 80	android/database/sqlite/SQLiteDatabase:rawQuery	(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    //   123: astore 7
    //   125: aload 7
    //   127: astore_0
    //   128: aload 7
    //   130: invokeinterface 455 1 0
    //   135: ifeq +398 -> 533
    //   138: aload 7
    //   140: astore_0
    //   141: new 628	com/baidu/android/pushservice/i/a
    //   144: dup
    //   145: invokespecial 629	com/baidu/android/pushservice/i/a:<init>	()V
    //   148: astore 8
    //   150: aload 7
    //   152: astore_0
    //   153: aload 8
    //   155: aload 7
    //   157: aload 7
    //   159: getstatic 631	com/baidu/android/pushservice/util/k$a:a	Lcom/baidu/android/pushservice/util/k$a;
    //   162: invokevirtual 74	com/baidu/android/pushservice/util/k$a:name	()Ljava/lang/String;
    //   165: invokeinterface 478 2 0
    //   170: invokeinterface 90 2 0
    //   175: invokevirtual 632	com/baidu/android/pushservice/i/a:a	(I)V
    //   178: aload 7
    //   180: astore_0
    //   181: aload 8
    //   183: aload 7
    //   185: aload 7
    //   187: getstatic 276	com/baidu/android/pushservice/util/k$a:b	Lcom/baidu/android/pushservice/util/k$a;
    //   190: invokevirtual 74	com/baidu/android/pushservice/util/k$a:name	()Ljava/lang/String;
    //   193: invokeinterface 478 2 0
    //   198: invokeinterface 481 2 0
    //   203: invokevirtual 633	com/baidu/android/pushservice/i/a:a	(Ljava/lang/String;)V
    //   206: aload 7
    //   208: astore_0
    //   209: aload 8
    //   211: aload 7
    //   213: aload 7
    //   215: getstatic 290	com/baidu/android/pushservice/util/k$a:j	Lcom/baidu/android/pushservice/util/k$a;
    //   218: invokevirtual 74	com/baidu/android/pushservice/util/k$a:name	()Ljava/lang/String;
    //   221: invokeinterface 478 2 0
    //   226: invokeinterface 481 2 0
    //   231: invokevirtual 634	com/baidu/android/pushservice/i/a:e	(Ljava/lang/String;)V
    //   234: aload 7
    //   236: astore_0
    //   237: aload 8
    //   239: aload 7
    //   241: aload 7
    //   243: getstatic 306	com/baidu/android/pushservice/util/k$a:i	Lcom/baidu/android/pushservice/util/k$a;
    //   246: invokevirtual 74	com/baidu/android/pushservice/util/k$a:name	()Ljava/lang/String;
    //   249: invokeinterface 478 2 0
    //   254: invokeinterface 90 2 0
    //   259: invokevirtual 635	com/baidu/android/pushservice/i/a:d	(I)V
    //   262: aload 7
    //   264: astore_0
    //   265: aload 8
    //   267: aload 7
    //   269: aload 7
    //   271: getstatic 299	com/baidu/android/pushservice/util/k$a:f	Lcom/baidu/android/pushservice/util/k$a;
    //   274: invokevirtual 74	com/baidu/android/pushservice/util/k$a:name	()Ljava/lang/String;
    //   277: invokeinterface 478 2 0
    //   282: invokeinterface 481 2 0
    //   287: invokevirtual 636	com/baidu/android/pushservice/i/a:c	(Ljava/lang/String;)V
    //   290: aload 7
    //   292: astore_0
    //   293: aload 8
    //   295: aload 7
    //   297: aload 7
    //   299: getstatic 302	com/baidu/android/pushservice/util/k$a:g	Lcom/baidu/android/pushservice/util/k$a;
    //   302: invokevirtual 74	com/baidu/android/pushservice/util/k$a:name	()Ljava/lang/String;
    //   305: invokeinterface 478 2 0
    //   310: invokeinterface 90 2 0
    //   315: invokevirtual 637	com/baidu/android/pushservice/i/a:c	(I)V
    //   318: aload 7
    //   320: astore_0
    //   321: aload 8
    //   323: aload 7
    //   325: aload 7
    //   327: getstatic 295	com/baidu/android/pushservice/util/k$a:e	Lcom/baidu/android/pushservice/util/k$a;
    //   330: invokevirtual 74	com/baidu/android/pushservice/util/k$a:name	()Ljava/lang/String;
    //   333: invokeinterface 478 2 0
    //   338: invokeinterface 90 2 0
    //   343: invokevirtual 638	com/baidu/android/pushservice/i/a:b	(I)V
    //   346: aload 7
    //   348: astore_0
    //   349: aload 8
    //   351: aload 7
    //   353: aload 7
    //   355: getstatic 284	com/baidu/android/pushservice/util/k$a:d	Lcom/baidu/android/pushservice/util/k$a;
    //   358: invokevirtual 74	com/baidu/android/pushservice/util/k$a:name	()Ljava/lang/String;
    //   361: invokeinterface 478 2 0
    //   366: invokeinterface 481 2 0
    //   371: invokevirtual 639	com/baidu/android/pushservice/i/a:b	(Ljava/lang/String;)V
    //   374: aload 7
    //   376: astore_0
    //   377: aload 8
    //   379: aload 7
    //   381: aload 7
    //   383: getstatic 309	com/baidu/android/pushservice/util/k$a:k	Lcom/baidu/android/pushservice/util/k$a;
    //   386: invokevirtual 74	com/baidu/android/pushservice/util/k$a:name	()Ljava/lang/String;
    //   389: invokeinterface 478 2 0
    //   394: invokeinterface 481 2 0
    //   399: invokevirtual 640	com/baidu/android/pushservice/i/a:f	(Ljava/lang/String;)V
    //   402: aload 7
    //   404: astore_0
    //   405: aload 8
    //   407: aload 7
    //   409: aload 7
    //   411: getstatic 292	com/baidu/android/pushservice/util/k$a:h	Lcom/baidu/android/pushservice/util/k$a;
    //   414: invokevirtual 74	com/baidu/android/pushservice/util/k$a:name	()Ljava/lang/String;
    //   417: invokeinterface 478 2 0
    //   422: invokeinterface 481 2 0
    //   427: invokevirtual 641	com/baidu/android/pushservice/i/a:d	(Ljava/lang/String;)V
    //   430: aload 7
    //   432: astore_0
    //   433: aload 8
    //   435: aload 7
    //   437: aload 7
    //   439: getstatic 73	com/baidu/android/pushservice/util/k$a:c	Lcom/baidu/android/pushservice/util/k$a;
    //   442: invokevirtual 74	com/baidu/android/pushservice/util/k$a:name	()Ljava/lang/String;
    //   445: invokeinterface 478 2 0
    //   450: invokeinterface 499 2 0
    //   455: invokevirtual 642	com/baidu/android/pushservice/i/a:a	(J)V
    //   458: aload 7
    //   460: astore_0
    //   461: aload 11
    //   463: aload 8
    //   465: invokeinterface 535 2 0
    //   470: pop
    //   471: goto -346 -> 125
    //   474: astore 8
    //   476: aload 7
    //   478: astore_0
    //   479: ldc 96
    //   481: new 34	java/lang/StringBuilder
    //   484: dup
    //   485: ldc_w 644
    //   488: invokespecial 39	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   491: aload 8
    //   493: invokevirtual 101	java/lang/Exception:getMessage	()Ljava/lang/String;
    //   496: invokevirtual 52	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   499: invokevirtual 66	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   502: invokestatic 106	com/baidu/android/pushservice/h/a:c	(Ljava/lang/String;Ljava/lang/String;)V
    //   505: aload 7
    //   507: ifnull +10 -> 517
    //   510: aload 7
    //   512: invokeinterface 93 1 0
    //   517: aload 10
    //   519: ifnull +8 -> 527
    //   522: aload 10
    //   524: invokevirtual 94	android/database/sqlite/SQLiteDatabase:close	()V
    //   527: aload 9
    //   529: monitorexit
    //   530: aload 11
    //   532: areturn
    //   533: aload 7
    //   535: ifnull +10 -> 545
    //   538: aload 7
    //   540: invokeinterface 93 1 0
    //   545: aload 10
    //   547: ifnull -20 -> 527
    //   550: aload 10
    //   552: invokevirtual 94	android/database/sqlite/SQLiteDatabase:close	()V
    //   555: goto -28 -> 527
    //   558: astore_0
    //   559: aload 9
    //   561: monitorexit
    //   562: aload_0
    //   563: athrow
    //   564: astore_0
    //   565: aconst_null
    //   566: astore 8
    //   568: aload_0
    //   569: astore 7
    //   571: aload 8
    //   573: ifnull +10 -> 583
    //   576: aload 8
    //   578: invokeinterface 93 1 0
    //   583: aload 10
    //   585: ifnull +8 -> 593
    //   588: aload 10
    //   590: invokevirtual 94	android/database/sqlite/SQLiteDatabase:close	()V
    //   593: aload 7
    //   595: athrow
    //   596: astore 7
    //   598: aload_0
    //   599: astore 8
    //   601: goto -30 -> 571
    //   604: astore 8
    //   606: aconst_null
    //   607: astore 7
    //   609: goto -133 -> 476
    //
    // Exception table:
    //   from	to	target	type
    //   128	138	474	java/lang/Exception
    //   141	150	474	java/lang/Exception
    //   153	178	474	java/lang/Exception
    //   181	206	474	java/lang/Exception
    //   209	234	474	java/lang/Exception
    //   237	262	474	java/lang/Exception
    //   265	290	474	java/lang/Exception
    //   293	318	474	java/lang/Exception
    //   321	346	474	java/lang/Exception
    //   349	374	474	java/lang/Exception
    //   377	402	474	java/lang/Exception
    //   405	430	474	java/lang/Exception
    //   433	458	474	java/lang/Exception
    //   461	471	474	java/lang/Exception
    //   8	14	558	finally
    //   19	22	558	finally
    //   24	116	558	finally
    //   510	517	558	finally
    //   522	527	558	finally
    //   527	530	558	finally
    //   538	545	558	finally
    //   550	555	558	finally
    //   559	562	558	finally
    //   576	583	558	finally
    //   588	593	558	finally
    //   593	596	558	finally
    //   116	125	564	finally
    //   128	138	596	finally
    //   141	150	596	finally
    //   153	178	596	finally
    //   181	206	596	finally
    //   209	234	596	finally
    //   237	262	596	finally
    //   265	290	596	finally
    //   293	318	596	finally
    //   321	346	596	finally
    //   349	374	596	finally
    //   377	402	596	finally
    //   405	430	596	finally
    //   433	458	596	finally
    //   461	471	596	finally
    //   479	505	596	finally
    //   116	125	604	java/lang/Exception
  }

  // ERROR //
  public static boolean b(Context paramContext, long paramLong1, long paramLong2)
  {
    // Byte code:
    //   0: iconst_0
    //   1: istore 6
    //   3: getstatic 23	com/baidu/android/pushservice/util/k:c	Ljava/lang/Object;
    //   6: astore 10
    //   8: aload 10
    //   10: monitorenter
    //   11: aload_0
    //   12: invokestatic 32	com/baidu/android/pushservice/util/k:d	(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;
    //   15: astore 11
    //   17: aload 11
    //   19: ifnonnull +8 -> 27
    //   22: aload 10
    //   24: monitorexit
    //   25: iconst_0
    //   26: ireturn
    //   27: new 34	java/lang/StringBuilder
    //   30: dup
    //   31: ldc_w 648
    //   34: invokespecial 39	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   37: getstatic 328	com/baidu/android/pushservice/util/k$c:b	Lcom/baidu/android/pushservice/util/k$c;
    //   40: invokevirtual 48	com/baidu/android/pushservice/util/k$c:name	()Ljava/lang/String;
    //   43: invokevirtual 52	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   46: ldc_w 650
    //   49: invokevirtual 52	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   52: getstatic 44	com/baidu/android/pushservice/util/k$c:c	Lcom/baidu/android/pushservice/util/k$c;
    //   55: invokevirtual 48	com/baidu/android/pushservice/util/k$c:name	()Ljava/lang/String;
    //   58: invokevirtual 52	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   61: ldc 54
    //   63: invokevirtual 52	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   66: lload_1
    //   67: invokevirtual 57	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   70: ldc 59
    //   72: invokevirtual 52	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   75: getstatic 44	com/baidu/android/pushservice/util/k$c:c	Lcom/baidu/android/pushservice/util/k$c;
    //   78: invokevirtual 48	com/baidu/android/pushservice/util/k$c:name	()Ljava/lang/String;
    //   81: invokevirtual 52	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   84: ldc 61
    //   86: invokevirtual 52	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   89: lload_3
    //   90: invokevirtual 57	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   93: ldc 63
    //   95: invokevirtual 52	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   98: invokevirtual 66	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   101: astore_0
    //   102: aload 11
    //   104: aload_0
    //   105: aconst_null
    //   106: invokevirtual 80	android/database/sqlite/SQLiteDatabase:rawQuery	(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    //   109: astore_0
    //   110: aload_0
    //   111: invokeinterface 455 1 0
    //   116: ifeq +41 -> 157
    //   119: aload_0
    //   120: iconst_0
    //   121: invokeinterface 481 2 0
    //   126: astore 8
    //   128: aload 8
    //   130: invokestatic 249	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   133: ifne -23 -> 110
    //   136: aload 8
    //   138: getstatic 655	com/baidu/android/pushservice/i/q:t	Ljava/lang/String;
    //   141: invokevirtual 659	java/lang/String:startsWith	(Ljava/lang/String;)Z
    //   144: istore 7
    //   146: iload 7
    //   148: ifne -38 -> 110
    //   151: iconst_1
    //   152: istore 6
    //   154: goto -44 -> 110
    //   157: aload_0
    //   158: ifnull +9 -> 167
    //   161: aload_0
    //   162: invokeinterface 93 1 0
    //   167: iload 6
    //   169: ifeq +375 -> 544
    //   172: aload 11
    //   174: ifnull +370 -> 544
    //   177: aload 11
    //   179: invokevirtual 94	android/database/sqlite/SQLiteDatabase:close	()V
    //   182: iload 6
    //   184: ifeq +104 -> 288
    //   187: aload 10
    //   189: monitorexit
    //   190: iload 6
    //   192: ireturn
    //   193: astore_0
    //   194: aload 10
    //   196: monitorexit
    //   197: aload_0
    //   198: athrow
    //   199: astore 8
    //   201: aconst_null
    //   202: astore_0
    //   203: iconst_0
    //   204: istore 6
    //   206: ldc 96
    //   208: new 34	java/lang/StringBuilder
    //   211: dup
    //   212: ldc_w 661
    //   215: invokespecial 39	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   218: aload 8
    //   220: invokevirtual 101	java/lang/Exception:getMessage	()Ljava/lang/String;
    //   223: invokevirtual 52	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   226: invokevirtual 66	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   229: invokestatic 106	com/baidu/android/pushservice/h/a:c	(Ljava/lang/String;Ljava/lang/String;)V
    //   232: aload_0
    //   233: ifnull +9 -> 242
    //   236: aload_0
    //   237: invokeinterface 93 1 0
    //   242: iload 6
    //   244: ifeq +297 -> 541
    //   247: aload 11
    //   249: ifnull +292 -> 541
    //   252: aload 11
    //   254: invokevirtual 94	android/database/sqlite/SQLiteDatabase:close	()V
    //   257: goto -75 -> 182
    //   260: aload_0
    //   261: ifnull +9 -> 270
    //   264: aload_0
    //   265: invokeinterface 93 1 0
    //   270: iload 6
    //   272: ifeq +13 -> 285
    //   275: aload 11
    //   277: ifnull +8 -> 285
    //   280: aload 11
    //   282: invokevirtual 94	android/database/sqlite/SQLiteDatabase:close	()V
    //   285: aload 8
    //   287: athrow
    //   288: new 34	java/lang/StringBuilder
    //   291: dup
    //   292: ldc 68
    //   294: invokespecial 39	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   297: getstatic 73	com/baidu/android/pushservice/util/k$a:c	Lcom/baidu/android/pushservice/util/k$a;
    //   300: invokevirtual 74	com/baidu/android/pushservice/util/k$a:name	()Ljava/lang/String;
    //   303: invokevirtual 52	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   306: ldc 54
    //   308: invokevirtual 52	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   311: lload_1
    //   312: invokevirtual 57	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   315: ldc 59
    //   317: invokevirtual 52	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   320: getstatic 73	com/baidu/android/pushservice/util/k$a:c	Lcom/baidu/android/pushservice/util/k$a;
    //   323: invokevirtual 74	com/baidu/android/pushservice/util/k$a:name	()Ljava/lang/String;
    //   326: invokevirtual 52	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   329: ldc 61
    //   331: invokevirtual 52	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   334: lload_3
    //   335: invokevirtual 57	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   338: ldc 63
    //   340: invokevirtual 52	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   343: invokevirtual 66	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   346: astore 9
    //   348: aload_0
    //   349: astore 8
    //   351: aload 11
    //   353: aload 9
    //   355: aconst_null
    //   356: invokevirtual 80	android/database/sqlite/SQLiteDatabase:rawQuery	(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    //   359: astore 9
    //   361: aload 9
    //   363: astore 8
    //   365: aload 9
    //   367: astore_0
    //   368: aload 9
    //   370: invokeinterface 86 1 0
    //   375: pop
    //   376: aload 9
    //   378: astore 8
    //   380: aload 9
    //   382: astore_0
    //   383: aload 9
    //   385: iconst_0
    //   386: invokeinterface 90 2 0
    //   391: istore 5
    //   393: iload 5
    //   395: ifle +6 -> 401
    //   398: iconst_1
    //   399: istore 6
    //   401: aload 9
    //   403: ifnull +10 -> 413
    //   406: aload 9
    //   408: invokeinterface 93 1 0
    //   413: iload 6
    //   415: istore 7
    //   417: aload 11
    //   419: ifnull +12 -> 431
    //   422: aload 11
    //   424: invokevirtual 94	android/database/sqlite/SQLiteDatabase:close	()V
    //   427: iload 6
    //   429: istore 7
    //   431: aload 10
    //   433: monitorexit
    //   434: iload 7
    //   436: ireturn
    //   437: astore 9
    //   439: aload 8
    //   441: astore_0
    //   442: ldc 96
    //   444: new 34	java/lang/StringBuilder
    //   447: dup
    //   448: ldc_w 663
    //   451: invokespecial 39	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   454: aload 9
    //   456: invokevirtual 101	java/lang/Exception:getMessage	()Ljava/lang/String;
    //   459: invokevirtual 52	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   462: invokevirtual 66	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   465: invokestatic 106	com/baidu/android/pushservice/h/a:c	(Ljava/lang/String;Ljava/lang/String;)V
    //   468: aload 8
    //   470: ifnull +10 -> 480
    //   473: aload 8
    //   475: invokeinterface 93 1 0
    //   480: iload 6
    //   482: istore 7
    //   484: aload 11
    //   486: ifnull -55 -> 431
    //   489: aload 11
    //   491: invokevirtual 94	android/database/sqlite/SQLiteDatabase:close	()V
    //   494: iload 6
    //   496: istore 7
    //   498: goto -67 -> 431
    //   501: astore 8
    //   503: aload_0
    //   504: ifnull +9 -> 513
    //   507: aload_0
    //   508: invokeinterface 93 1 0
    //   513: aload 11
    //   515: ifnull +8 -> 523
    //   518: aload 11
    //   520: invokevirtual 94	android/database/sqlite/SQLiteDatabase:close	()V
    //   523: aload 8
    //   525: athrow
    //   526: astore 8
    //   528: goto -268 -> 260
    //   531: astore 8
    //   533: goto -273 -> 260
    //   536: astore 8
    //   538: goto -332 -> 206
    //   541: goto -359 -> 182
    //   544: goto -362 -> 182
    //   547: astore 8
    //   549: aconst_null
    //   550: astore_0
    //   551: iconst_0
    //   552: istore 6
    //   554: goto -294 -> 260
    //
    // Exception table:
    //   from	to	target	type
    //   11	17	193	finally
    //   22	25	193	finally
    //   27	102	193	finally
    //   161	167	193	finally
    //   177	182	193	finally
    //   187	190	193	finally
    //   194	197	193	finally
    //   236	242	193	finally
    //   252	257	193	finally
    //   264	270	193	finally
    //   280	285	193	finally
    //   285	288	193	finally
    //   288	348	193	finally
    //   406	413	193	finally
    //   422	427	193	finally
    //   431	434	193	finally
    //   473	480	193	finally
    //   489	494	193	finally
    //   507	513	193	finally
    //   518	523	193	finally
    //   523	526	193	finally
    //   102	110	199	java/lang/Exception
    //   351	361	437	java/lang/Exception
    //   368	376	437	java/lang/Exception
    //   383	393	437	java/lang/Exception
    //   351	361	501	finally
    //   368	376	501	finally
    //   383	393	501	finally
    //   442	468	501	finally
    //   110	146	526	finally
    //   206	232	531	finally
    //   110	146	536	java/lang/Exception
    //   102	110	547	finally
  }

  public static long c(Context paramContext)
  {
    synchronized (c)
    {
      paramContext = d(paramContext);
      if (paramContext == null)
        return 0L;
    }
    try
    {
      paramContext.delete("PushBehavior", null, null);
      paramContext.delete("ADPushBehavior", null, null);
      paramContext.delete("AppInfo", null, null);
      paramContext.close();
      return -1L;
      paramContext = finally;
      throw paramContext;
    }
    catch (Exception localException)
    {
      while (true)
        a.e("PushDatabase", "clearBehaviorInfo Exception: " + localException);
    }
  }

  // ERROR //
  public static boolean c(Context paramContext, String paramString)
  {
    // Byte code:
    //   0: getstatic 23	com/baidu/android/pushservice/util/k:c	Ljava/lang/Object;
    //   3: astore 5
    //   5: aload 5
    //   7: monitorenter
    //   8: aload_0
    //   9: invokestatic 32	com/baidu/android/pushservice/util/k:d	(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;
    //   12: astore 6
    //   14: aload 6
    //   16: ifnonnull +8 -> 24
    //   19: aload 5
    //   21: monitorexit
    //   22: iconst_1
    //   23: ireturn
    //   24: new 111	android/content/ContentValues
    //   27: dup
    //   28: invokespecial 112	android/content/ContentValues:<init>	()V
    //   31: astore 7
    //   33: aload 6
    //   35: ldc_w 669
    //   38: aconst_null
    //   39: new 34	java/lang/StringBuilder
    //   42: dup
    //   43: invokespecial 192	java/lang/StringBuilder:<init>	()V
    //   46: getstatic 674	com/baidu/android/pushservice/util/k$i:b	Lcom/baidu/android/pushservice/util/k$i;
    //   49: invokevirtual 675	com/baidu/android/pushservice/util/k$i:name	()Ljava/lang/String;
    //   52: invokevirtual 52	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   55: ldc_w 472
    //   58: invokevirtual 52	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   61: aload_1
    //   62: invokevirtual 52	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   65: ldc_w 474
    //   68: invokevirtual 52	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   71: invokevirtual 66	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   74: aconst_null
    //   75: aconst_null
    //   76: aconst_null
    //   77: aconst_null
    //   78: invokevirtual 444	android/database/sqlite/SQLiteDatabase:query	(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   81: astore 4
    //   83: aload 4
    //   85: ifnonnull +54 -> 139
    //   88: aload 4
    //   90: astore_0
    //   91: aload 4
    //   93: astore_3
    //   94: ldc 96
    //   96: ldc_w 677
    //   99: invokestatic 679	com/baidu/android/pushservice/h/a:d	(Ljava/lang/String;Ljava/lang/String;)V
    //   102: aload 4
    //   104: ifnull +20 -> 124
    //   107: aload 4
    //   109: invokeinterface 682 1 0
    //   114: ifne +10 -> 124
    //   117: aload 4
    //   119: invokeinterface 93 1 0
    //   124: aload 6
    //   126: ifnull +8 -> 134
    //   129: aload 6
    //   131: invokevirtual 94	android/database/sqlite/SQLiteDatabase:close	()V
    //   134: aload 5
    //   136: monitorexit
    //   137: iconst_1
    //   138: ireturn
    //   139: aload 4
    //   141: astore_0
    //   142: aload 4
    //   144: astore_3
    //   145: aload 4
    //   147: invokeinterface 685 1 0
    //   152: ifle +121 -> 273
    //   155: aload 4
    //   157: astore_0
    //   158: aload 4
    //   160: astore_3
    //   161: ldc 96
    //   163: ldc_w 687
    //   166: invokestatic 679	com/baidu/android/pushservice/h/a:d	(Ljava/lang/String;Ljava/lang/String;)V
    //   169: aload 4
    //   171: astore_0
    //   172: aload 4
    //   174: astore_3
    //   175: aload 6
    //   177: new 34	java/lang/StringBuilder
    //   180: dup
    //   181: ldc_w 689
    //   184: invokespecial 39	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   187: getstatic 691	com/baidu/android/pushservice/util/k$i:c	Lcom/baidu/android/pushservice/util/k$i;
    //   190: invokevirtual 675	com/baidu/android/pushservice/util/k$i:name	()Ljava/lang/String;
    //   193: invokevirtual 52	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   196: ldc_w 472
    //   199: invokevirtual 52	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   202: invokestatic 181	java/lang/System:currentTimeMillis	()J
    //   205: invokevirtual 57	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   208: ldc_w 693
    //   211: invokevirtual 52	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   214: getstatic 674	com/baidu/android/pushservice/util/k$i:b	Lcom/baidu/android/pushservice/util/k$i;
    //   217: invokevirtual 205	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   220: ldc_w 472
    //   223: invokevirtual 52	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   226: aload_1
    //   227: invokevirtual 52	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   230: invokevirtual 66	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   233: invokevirtual 696	android/database/sqlite/SQLiteDatabase:execSQL	(Ljava/lang/String;)V
    //   236: aload 4
    //   238: ifnull +20 -> 258
    //   241: aload 4
    //   243: invokeinterface 682 1 0
    //   248: ifne +10 -> 258
    //   251: aload 4
    //   253: invokeinterface 93 1 0
    //   258: aload 6
    //   260: ifnull +8 -> 268
    //   263: aload 6
    //   265: invokevirtual 94	android/database/sqlite/SQLiteDatabase:close	()V
    //   268: aload 5
    //   270: monitorexit
    //   271: iconst_0
    //   272: ireturn
    //   273: aload 4
    //   275: astore_0
    //   276: aload 4
    //   278: astore_3
    //   279: aload 7
    //   281: invokevirtual 699	android/content/ContentValues:clear	()V
    //   284: aload 4
    //   286: astore_0
    //   287: aload 4
    //   289: astore_3
    //   290: aload 7
    //   292: getstatic 674	com/baidu/android/pushservice/util/k$i:b	Lcom/baidu/android/pushservice/util/k$i;
    //   295: invokevirtual 675	com/baidu/android/pushservice/util/k$i:name	()Ljava/lang/String;
    //   298: aload_1
    //   299: invokevirtual 126	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   302: aload 4
    //   304: astore_0
    //   305: aload 4
    //   307: astore_3
    //   308: aload 7
    //   310: getstatic 691	com/baidu/android/pushservice/util/k$i:c	Lcom/baidu/android/pushservice/util/k$i;
    //   313: invokevirtual 675	com/baidu/android/pushservice/util/k$i:name	()Ljava/lang/String;
    //   316: invokestatic 181	java/lang/System:currentTimeMillis	()J
    //   319: invokestatic 186	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   322: invokevirtual 189	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/Long;)V
    //   325: aload 4
    //   327: astore_0
    //   328: aload 4
    //   330: astore_3
    //   331: aload 6
    //   333: ldc_w 669
    //   336: aconst_null
    //   337: aload 7
    //   339: invokevirtual 316	android/database/sqlite/SQLiteDatabase:insert	(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    //   342: pop2
    //   343: aload 4
    //   345: astore_0
    //   346: aload 4
    //   348: astore_3
    //   349: ldc 96
    //   351: ldc_w 701
    //   354: invokestatic 614	com/baidu/android/pushservice/h/a:b	(Ljava/lang/String;Ljava/lang/String;)V
    //   357: aload 4
    //   359: astore_0
    //   360: aload 4
    //   362: astore_3
    //   363: aload 6
    //   365: ldc_w 703
    //   368: aconst_null
    //   369: invokevirtual 80	android/database/sqlite/SQLiteDatabase:rawQuery	(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    //   372: astore_1
    //   373: aload_1
    //   374: astore_0
    //   375: aload_1
    //   376: astore_3
    //   377: aload_1
    //   378: invokeinterface 86 1 0
    //   383: pop
    //   384: aload_1
    //   385: astore_0
    //   386: aload_1
    //   387: astore_3
    //   388: aload_1
    //   389: iconst_0
    //   390: invokeinterface 90 2 0
    //   395: istore_2
    //   396: aload_1
    //   397: astore_0
    //   398: aload_1
    //   399: astore_3
    //   400: ldc 96
    //   402: new 34	java/lang/StringBuilder
    //   405: dup
    //   406: ldc_w 705
    //   409: invokespecial 39	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   412: iload_2
    //   413: invokevirtual 424	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   416: invokevirtual 66	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   419: invokestatic 614	com/baidu/android/pushservice/h/a:b	(Ljava/lang/String;Ljava/lang/String;)V
    //   422: aload_1
    //   423: astore_0
    //   424: aload_1
    //   425: astore_3
    //   426: iload_2
    //   427: getstatic 25	com/baidu/android/pushservice/util/k:d	I
    //   430: if_icmple +30 -> 460
    //   433: aload_1
    //   434: astore_0
    //   435: aload_1
    //   436: astore_3
    //   437: aload 6
    //   439: ldc_w 669
    //   442: aconst_null
    //   443: aconst_null
    //   444: invokevirtual 461	android/database/sqlite/SQLiteDatabase:delete	(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    //   447: pop
    //   448: aload_1
    //   449: astore_0
    //   450: aload_1
    //   451: astore_3
    //   452: ldc 96
    //   454: ldc_w 707
    //   457: invokestatic 614	com/baidu/android/pushservice/h/a:b	(Ljava/lang/String;Ljava/lang/String;)V
    //   460: aload_1
    //   461: ifnull +18 -> 479
    //   464: aload_1
    //   465: invokeinterface 682 1 0
    //   470: ifne +9 -> 479
    //   473: aload_1
    //   474: invokeinterface 93 1 0
    //   479: aload 6
    //   481: ifnull +8 -> 489
    //   484: aload 6
    //   486: invokevirtual 94	android/database/sqlite/SQLiteDatabase:close	()V
    //   489: aload 5
    //   491: monitorexit
    //   492: iconst_1
    //   493: ireturn
    //   494: astore_1
    //   495: aconst_null
    //   496: astore_3
    //   497: aload_3
    //   498: astore_0
    //   499: ldc 96
    //   501: new 34	java/lang/StringBuilder
    //   504: dup
    //   505: ldc_w 325
    //   508: invokespecial 39	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   511: aload_1
    //   512: invokevirtual 101	java/lang/Exception:getMessage	()Ljava/lang/String;
    //   515: invokevirtual 52	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   518: invokevirtual 66	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   521: invokestatic 207	com/baidu/android/pushservice/h/a:e	(Ljava/lang/String;Ljava/lang/String;)V
    //   524: aload_3
    //   525: ifnull +18 -> 543
    //   528: aload_3
    //   529: invokeinterface 682 1 0
    //   534: ifne +9 -> 543
    //   537: aload_3
    //   538: invokeinterface 93 1 0
    //   543: aload 6
    //   545: ifnull +8 -> 553
    //   548: aload 6
    //   550: invokevirtual 94	android/database/sqlite/SQLiteDatabase:close	()V
    //   553: aload 5
    //   555: monitorexit
    //   556: iconst_1
    //   557: ireturn
    //   558: aload_0
    //   559: ifnull +18 -> 577
    //   562: aload_0
    //   563: invokeinterface 682 1 0
    //   568: ifne +9 -> 577
    //   571: aload_0
    //   572: invokeinterface 93 1 0
    //   577: aload 6
    //   579: ifnull +8 -> 587
    //   582: aload 6
    //   584: invokevirtual 94	android/database/sqlite/SQLiteDatabase:close	()V
    //   587: aload_1
    //   588: athrow
    //   589: astore_0
    //   590: aload 5
    //   592: monitorexit
    //   593: aload_0
    //   594: athrow
    //   595: astore_1
    //   596: goto -38 -> 558
    //   599: astore_1
    //   600: goto -103 -> 497
    //   603: astore_1
    //   604: aconst_null
    //   605: astore_0
    //   606: goto -48 -> 558
    //
    // Exception table:
    //   from	to	target	type
    //   24	83	494	java/lang/Exception
    //   8	14	589	finally
    //   19	22	589	finally
    //   107	124	589	finally
    //   129	134	589	finally
    //   134	137	589	finally
    //   241	258	589	finally
    //   263	268	589	finally
    //   268	271	589	finally
    //   464	479	589	finally
    //   484	489	589	finally
    //   489	492	589	finally
    //   528	543	589	finally
    //   548	553	589	finally
    //   553	556	589	finally
    //   562	577	589	finally
    //   582	587	589	finally
    //   587	589	589	finally
    //   590	593	589	finally
    //   94	102	595	finally
    //   145	155	595	finally
    //   161	169	595	finally
    //   175	236	595	finally
    //   279	284	595	finally
    //   290	302	595	finally
    //   308	325	595	finally
    //   331	343	595	finally
    //   349	357	595	finally
    //   363	373	595	finally
    //   377	384	595	finally
    //   388	396	595	finally
    //   400	422	595	finally
    //   426	433	595	finally
    //   437	448	595	finally
    //   452	460	595	finally
    //   499	524	595	finally
    //   94	102	599	java/lang/Exception
    //   145	155	599	java/lang/Exception
    //   161	169	599	java/lang/Exception
    //   175	236	599	java/lang/Exception
    //   279	284	599	java/lang/Exception
    //   290	302	599	java/lang/Exception
    //   308	325	599	java/lang/Exception
    //   331	343	599	java/lang/Exception
    //   349	357	599	java/lang/Exception
    //   363	373	599	java/lang/Exception
    //   377	384	599	java/lang/Exception
    //   388	396	599	java/lang/Exception
    //   400	422	599	java/lang/Exception
    //   426	433	599	java/lang/Exception
    //   437	448	599	java/lang/Exception
    //   452	460	599	java/lang/Exception
    //   24	83	603	finally
  }

  private static SQLiteDatabase d(Context paramContext)
  {
    paramContext = e(paramContext);
    if (paramContext == null)
      return null;
    try
    {
      paramContext = paramContext.getWritableDatabase();
      return paramContext;
    }
    catch (Exception paramContext)
    {
      a.b("PushDatabase", "getDb Exception: " + paramContext);
    }
    return null;
  }

  // ERROR //
  public static int[] d(Context paramContext, String paramString)
  {
    // Byte code:
    //   0: getstatic 23	com/baidu/android/pushservice/util/k:c	Ljava/lang/Object;
    //   3: astore 7
    //   5: aload 7
    //   7: monitorenter
    //   8: aload_0
    //   9: invokestatic 32	com/baidu/android/pushservice/util/k:d	(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;
    //   12: astore 8
    //   14: aload 8
    //   16: ifnonnull +8 -> 24
    //   19: aload 7
    //   21: monitorexit
    //   22: aconst_null
    //   23: areturn
    //   24: aload 8
    //   26: ldc_w 440
    //   29: aconst_null
    //   30: new 34	java/lang/StringBuilder
    //   33: dup
    //   34: invokespecial 192	java/lang/StringBuilder:<init>	()V
    //   37: getstatic 435	com/baidu/android/pushservice/util/k$j:a	Lcom/baidu/android/pushservice/util/k$j;
    //   40: invokevirtual 436	com/baidu/android/pushservice/util/k$j:name	()Ljava/lang/String;
    //   43: invokevirtual 52	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   46: ldc_w 438
    //   49: invokevirtual 52	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   52: invokevirtual 66	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   55: iconst_1
    //   56: anewarray 196	java/lang/String
    //   59: dup
    //   60: iconst_0
    //   61: aload_1
    //   62: aastore
    //   63: aconst_null
    //   64: aconst_null
    //   65: aconst_null
    //   66: invokevirtual 444	android/database/sqlite/SQLiteDatabase:query	(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   69: astore 6
    //   71: aload 6
    //   73: ifnull +272 -> 345
    //   76: aload 6
    //   78: astore_0
    //   79: aload 6
    //   81: invokeinterface 455 1 0
    //   86: ifeq +259 -> 345
    //   89: aload 6
    //   91: astore_0
    //   92: aload 6
    //   94: aload 6
    //   96: getstatic 446	com/baidu/android/pushservice/util/k$j:b	Lcom/baidu/android/pushservice/util/k$j;
    //   99: invokevirtual 436	com/baidu/android/pushservice/util/k$j:name	()Ljava/lang/String;
    //   102: invokeinterface 478 2 0
    //   107: invokeinterface 90 2 0
    //   112: istore_2
    //   113: aload 6
    //   115: astore_0
    //   116: aload 6
    //   118: aload 6
    //   120: getstatic 448	com/baidu/android/pushservice/util/k$j:c	Lcom/baidu/android/pushservice/util/k$j;
    //   123: invokevirtual 436	com/baidu/android/pushservice/util/k$j:name	()Ljava/lang/String;
    //   126: invokeinterface 478 2 0
    //   131: invokeinterface 90 2 0
    //   136: istore_3
    //   137: aload 6
    //   139: astore_0
    //   140: aload 6
    //   142: aload 6
    //   144: getstatic 450	com/baidu/android/pushservice/util/k$j:d	Lcom/baidu/android/pushservice/util/k$j;
    //   147: invokevirtual 436	com/baidu/android/pushservice/util/k$j:name	()Ljava/lang/String;
    //   150: invokeinterface 478 2 0
    //   155: invokeinterface 90 2 0
    //   160: istore 4
    //   162: aload 6
    //   164: astore_0
    //   165: aload 6
    //   167: aload 6
    //   169: getstatic 452	com/baidu/android/pushservice/util/k$j:e	Lcom/baidu/android/pushservice/util/k$j;
    //   172: invokevirtual 436	com/baidu/android/pushservice/util/k$j:name	()Ljava/lang/String;
    //   175: invokeinterface 478 2 0
    //   180: invokeinterface 90 2 0
    //   185: istore 5
    //   187: aload 6
    //   189: astore_0
    //   190: ldc 96
    //   192: new 34	java/lang/StringBuilder
    //   195: dup
    //   196: invokespecial 192	java/lang/StringBuilder:<init>	()V
    //   199: aload_1
    //   200: invokevirtual 52	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   203: ldc_w 719
    //   206: invokevirtual 52	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   209: iload_2
    //   210: invokevirtual 424	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   213: ldc_w 426
    //   216: invokevirtual 52	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   219: iload_3
    //   220: invokevirtual 424	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   223: ldc_w 428
    //   226: invokevirtual 52	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   229: iload 4
    //   231: invokevirtual 424	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   234: ldc_w 430
    //   237: invokevirtual 52	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   240: iload 5
    //   242: invokevirtual 424	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   245: invokevirtual 66	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   248: invokestatic 106	com/baidu/android/pushservice/h/a:c	(Ljava/lang/String;Ljava/lang/String;)V
    //   251: iload_2
    //   252: ifne +46 -> 298
    //   255: iload_3
    //   256: ifne +42 -> 298
    //   259: iload 4
    //   261: ifne +37 -> 298
    //   264: iload 5
    //   266: ifne +32 -> 298
    //   269: aload 6
    //   271: ifnull +10 -> 281
    //   274: aload 6
    //   276: invokeinterface 93 1 0
    //   281: aload 8
    //   283: ifnull +8 -> 291
    //   286: aload 8
    //   288: invokevirtual 94	android/database/sqlite/SQLiteDatabase:close	()V
    //   291: aload 7
    //   293: monitorexit
    //   294: iconst_0
    //   295: newarray int
    //   297: areturn
    //   298: aload 6
    //   300: ifnull +10 -> 310
    //   303: aload 6
    //   305: invokeinterface 93 1 0
    //   310: aload 8
    //   312: ifnull +8 -> 320
    //   315: aload 8
    //   317: invokevirtual 94	android/database/sqlite/SQLiteDatabase:close	()V
    //   320: aload 7
    //   322: monitorexit
    //   323: iconst_4
    //   324: newarray int
    //   326: dup
    //   327: iconst_0
    //   328: iload_2
    //   329: iastore
    //   330: dup
    //   331: iconst_1
    //   332: iload_3
    //   333: iastore
    //   334: dup
    //   335: iconst_2
    //   336: iload 4
    //   338: iastore
    //   339: dup
    //   340: iconst_3
    //   341: iload 5
    //   343: iastore
    //   344: areturn
    //   345: aload 6
    //   347: astore_0
    //   348: ldc 96
    //   350: ldc_w 721
    //   353: invokestatic 106	com/baidu/android/pushservice/h/a:c	(Ljava/lang/String;Ljava/lang/String;)V
    //   356: aload 6
    //   358: ifnull +10 -> 368
    //   361: aload 6
    //   363: invokeinterface 93 1 0
    //   368: aload 8
    //   370: ifnull +8 -> 378
    //   373: aload 8
    //   375: invokevirtual 94	android/database/sqlite/SQLiteDatabase:close	()V
    //   378: aload 7
    //   380: monitorexit
    //   381: iconst_4
    //   382: newarray int
    //   384: dup
    //   385: iconst_0
    //   386: bipush 23
    //   388: iastore
    //   389: dup
    //   390: iconst_1
    //   391: iconst_0
    //   392: iastore
    //   393: dup
    //   394: iconst_2
    //   395: bipush 7
    //   397: iastore
    //   398: dup
    //   399: iconst_3
    //   400: iconst_0
    //   401: iastore
    //   402: areturn
    //   403: astore_1
    //   404: aconst_null
    //   405: astore 6
    //   407: aload 6
    //   409: astore_0
    //   410: ldc 96
    //   412: new 34	java/lang/StringBuilder
    //   415: dup
    //   416: ldc_w 723
    //   419: invokespecial 39	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   422: aload_1
    //   423: invokevirtual 101	java/lang/Exception:getMessage	()Ljava/lang/String;
    //   426: invokevirtual 52	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   429: invokevirtual 66	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   432: invokestatic 207	com/baidu/android/pushservice/h/a:e	(Ljava/lang/String;Ljava/lang/String;)V
    //   435: aload 6
    //   437: ifnull +10 -> 447
    //   440: aload 6
    //   442: invokeinterface 93 1 0
    //   447: aload 8
    //   449: ifnull +8 -> 457
    //   452: aload 8
    //   454: invokevirtual 94	android/database/sqlite/SQLiteDatabase:close	()V
    //   457: aload 7
    //   459: monitorexit
    //   460: aconst_null
    //   461: areturn
    //   462: aload_0
    //   463: ifnull +9 -> 472
    //   466: aload_0
    //   467: invokeinterface 93 1 0
    //   472: aload 8
    //   474: ifnull +8 -> 482
    //   477: aload 8
    //   479: invokevirtual 94	android/database/sqlite/SQLiteDatabase:close	()V
    //   482: aload_1
    //   483: athrow
    //   484: astore_0
    //   485: aload 7
    //   487: monitorexit
    //   488: aload_0
    //   489: athrow
    //   490: astore_1
    //   491: goto -29 -> 462
    //   494: astore_1
    //   495: goto -88 -> 407
    //   498: astore_1
    //   499: aconst_null
    //   500: astore_0
    //   501: goto -39 -> 462
    //
    // Exception table:
    //   from	to	target	type
    //   24	71	403	java/lang/Exception
    //   8	14	484	finally
    //   19	22	484	finally
    //   274	281	484	finally
    //   286	291	484	finally
    //   291	294	484	finally
    //   303	310	484	finally
    //   315	320	484	finally
    //   320	323	484	finally
    //   361	368	484	finally
    //   373	378	484	finally
    //   378	381	484	finally
    //   440	447	484	finally
    //   452	457	484	finally
    //   457	460	484	finally
    //   466	472	484	finally
    //   477	482	484	finally
    //   482	484	484	finally
    //   485	488	484	finally
    //   79	89	490	finally
    //   92	113	490	finally
    //   116	137	490	finally
    //   140	162	490	finally
    //   165	187	490	finally
    //   190	251	490	finally
    //   348	356	490	finally
    //   410	435	490	finally
    //   79	89	494	java/lang/Exception
    //   92	113	494	java/lang/Exception
    //   116	137	494	java/lang/Exception
    //   140	162	494	java/lang/Exception
    //   165	187	494	java/lang/Exception
    //   190	251	494	java/lang/Exception
    //   348	356	494	java/lang/Exception
    //   24	71	498	finally
  }

  private static k.e e(Context paramContext)
  {
    synchronized (c)
    {
      String str;
      if (a == null)
      {
        str = paramContext.getDatabasePath("pushstat_4.6.3.db").getPath();
        a("pushstat_4.6.3.db", paramContext);
        if (Build.VERSION.SDK_INT >= 11)
        {
          b = new k.d(null);
          a = new k.e(paramContext, str, 2, b);
        }
      }
      else
      {
        return a;
      }
      a = new k.e(paramContext, str, 2);
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.baidu.android.pushservice.util.k
 * JD-Core Version:    0.6.2
 */