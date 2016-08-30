package com.tencent.wxop.stat;

import android.content.ContentValues;
import android.content.Context;
import android.database.DatabaseUtils;
import android.database.sqlite.SQLiteDatabase;
import com.tencent.wxop.stat.b.f;
import com.tencent.wxop.stat.b.r;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map.Entry;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;

public class ai
{
  static com.tencent.wxop.stat.b.b d = com.tencent.wxop.stat.b.l.c();
  private static Context i = null;
  private static ai j = null;
  f a = null;
  volatile int b = 0;
  com.tencent.wxop.stat.b.c c = null;
  private d e = null;
  private d f = null;
  private String g = "";
  private String h = "";
  private int k = 0;
  private ConcurrentHashMap<com.tencent.wxop.stat.a.d, String> l = null;
  private boolean m = false;
  private HashMap<String, String> n = new HashMap();

  private ai(Context paramContext)
  {
    try
    {
      this.a = new f();
      i = paramContext.getApplicationContext();
      this.l = new ConcurrentHashMap();
      this.g = com.tencent.wxop.stat.b.l.o(paramContext);
      this.h = ("pri_" + com.tencent.wxop.stat.b.l.o(paramContext));
      this.e = new d(i, this.g);
      this.f = new d(i, this.h);
      a(true);
      a(false);
      c();
      b(i);
      g();
      h();
      return;
    }
    catch (Throwable paramContext)
    {
      d.b(paramContext);
    }
  }

  public static ai a()
  {
    return j;
  }

  public static ai a(Context paramContext)
  {
    if (j == null);
    try
    {
      if (j == null)
        j = new ai(paramContext);
      return j;
    }
    finally
    {
    }
    throw paramContext;
  }

  private static String a(List<e> paramList)
  {
    StringBuilder localStringBuilder = new StringBuilder(paramList.size() * 3);
    localStringBuilder.append("event_id in (");
    int i2 = paramList.size();
    paramList = paramList.iterator();
    int i1 = 0;
    while (paramList.hasNext())
    {
      localStringBuilder.append(((e)paramList.next()).a);
      if (i1 != i2 - 1)
        localStringBuilder.append(",");
      i1 += 1;
    }
    localStringBuilder.append(")");
    return localStringBuilder.toString();
  }

  private void a(int paramInt, boolean paramBoolean)
  {
    try
    {
      if ((this.b > 0) && (paramInt > 0))
      {
        boolean bool = v.a();
        if (!bool)
          break label24;
      }
      while (true)
      {
        return;
        label24: if (t.b())
          d.a("Load " + this.b + " unsent events");
        ArrayList localArrayList = new ArrayList(paramInt);
        b(localArrayList, paramInt, paramBoolean);
        if (localArrayList.size() > 0)
        {
          if (t.b())
            d.a("Peek " + localArrayList.size() + " unsent events.");
          a(localArrayList, 2, paramBoolean);
          l.b(i).a(localArrayList, new b(this, localArrayList, paramBoolean));
        }
      }
    }
    catch (Throwable localThrowable)
    {
      while (true)
        d.b(localThrowable);
    }
    finally
    {
    }
  }

  // ERROR //
  private void a(i parami)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_1
    //   3: getfield 267	com/tencent/wxop/stat/i:b	Lorg/json/JSONObject;
    //   6: invokevirtual 270	org/json/JSONObject:toString	()Ljava/lang/String;
    //   9: astore 7
    //   11: aload 7
    //   13: invokestatic 273	com/tencent/wxop/stat/b/l:a	(Ljava/lang/String;)Ljava/lang/String;
    //   16: astore 5
    //   18: new 275	android/content/ContentValues
    //   21: dup
    //   22: invokespecial 276	android/content/ContentValues:<init>	()V
    //   25: astore 8
    //   27: aload 8
    //   29: ldc_w 278
    //   32: aload_1
    //   33: getfield 267	com/tencent/wxop/stat/i:b	Lorg/json/JSONObject;
    //   36: invokevirtual 270	org/json/JSONObject:toString	()Ljava/lang/String;
    //   39: invokevirtual 282	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   42: aload 8
    //   44: ldc_w 284
    //   47: aload 5
    //   49: invokevirtual 282	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   52: aload_1
    //   53: aload 5
    //   55: putfield 286	com/tencent/wxop/stat/i:c	Ljava/lang/String;
    //   58: aload 8
    //   60: ldc_w 288
    //   63: aload_1
    //   64: getfield 290	com/tencent/wxop/stat/i:d	I
    //   67: invokestatic 296	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   70: invokevirtual 299	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/Integer;)V
    //   73: aload_0
    //   74: getfield 53	com/tencent/wxop/stat/ai:e	Lcom/tencent/wxop/stat/d;
    //   77: invokevirtual 303	com/tencent/wxop/stat/d:getReadableDatabase	()Landroid/database/sqlite/SQLiteDatabase;
    //   80: ldc_w 305
    //   83: aconst_null
    //   84: aconst_null
    //   85: aconst_null
    //   86: aconst_null
    //   87: aconst_null
    //   88: aconst_null
    //   89: invokevirtual 311	android/database/sqlite/SQLiteDatabase:query	(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   92: astore 6
    //   94: aload 6
    //   96: astore 5
    //   98: aload 6
    //   100: invokeinterface 316 1 0
    //   105: ifeq +324 -> 429
    //   108: aload 6
    //   110: astore 5
    //   112: aload 6
    //   114: iconst_0
    //   115: invokeinterface 320 2 0
    //   120: aload_1
    //   121: getfield 322	com/tencent/wxop/stat/i:a	I
    //   124: if_icmpne -30 -> 94
    //   127: iconst_1
    //   128: istore_2
    //   129: aload 6
    //   131: astore 5
    //   133: aload_0
    //   134: getfield 53	com/tencent/wxop/stat/ai:e	Lcom/tencent/wxop/stat/d;
    //   137: invokevirtual 325	com/tencent/wxop/stat/d:getWritableDatabase	()Landroid/database/sqlite/SQLiteDatabase;
    //   140: invokevirtual 328	android/database/sqlite/SQLiteDatabase:beginTransaction	()V
    //   143: iconst_1
    //   144: iload_2
    //   145: if_icmpne +116 -> 261
    //   148: aload 6
    //   150: astore 5
    //   152: aload_0
    //   153: getfield 53	com/tencent/wxop/stat/ai:e	Lcom/tencent/wxop/stat/d;
    //   156: invokevirtual 325	com/tencent/wxop/stat/d:getWritableDatabase	()Landroid/database/sqlite/SQLiteDatabase;
    //   159: ldc_w 305
    //   162: aload 8
    //   164: ldc_w 330
    //   167: iconst_1
    //   168: anewarray 332	java/lang/String
    //   171: dup
    //   172: iconst_0
    //   173: aload_1
    //   174: getfield 322	com/tencent/wxop/stat/i:a	I
    //   177: invokestatic 335	java/lang/Integer:toString	(I)Ljava/lang/String;
    //   180: aastore
    //   181: invokevirtual 339	android/database/sqlite/SQLiteDatabase:update	(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    //   184: i2l
    //   185: lstore_3
    //   186: lload_3
    //   187: ldc2_w 340
    //   190: lcmp
    //   191: ifne +113 -> 304
    //   194: aload 6
    //   196: astore 5
    //   198: getstatic 40	com/tencent/wxop/stat/ai:d	Lcom/tencent/wxop/stat/b/b;
    //   201: new 96	java/lang/StringBuilder
    //   204: dup
    //   205: ldc_w 343
    //   208: invokespecial 101	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   211: aload 7
    //   213: invokevirtual 105	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   216: invokevirtual 109	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   219: invokevirtual 345	com/tencent/wxop/stat/b/b:e	(Ljava/lang/Object;)V
    //   222: aload 6
    //   224: astore 5
    //   226: aload_0
    //   227: getfield 53	com/tencent/wxop/stat/ai:e	Lcom/tencent/wxop/stat/d;
    //   230: invokevirtual 325	com/tencent/wxop/stat/d:getWritableDatabase	()Landroid/database/sqlite/SQLiteDatabase;
    //   233: invokevirtual 348	android/database/sqlite/SQLiteDatabase:setTransactionSuccessful	()V
    //   236: aload 6
    //   238: ifnull +10 -> 248
    //   241: aload 6
    //   243: invokeinterface 351 1 0
    //   248: aload_0
    //   249: getfield 53	com/tencent/wxop/stat/ai:e	Lcom/tencent/wxop/stat/d;
    //   252: invokevirtual 325	com/tencent/wxop/stat/d:getWritableDatabase	()Landroid/database/sqlite/SQLiteDatabase;
    //   255: invokevirtual 354	android/database/sqlite/SQLiteDatabase:endTransaction	()V
    //   258: aload_0
    //   259: monitorexit
    //   260: return
    //   261: aload 6
    //   263: astore 5
    //   265: aload 8
    //   267: ldc_w 356
    //   270: aload_1
    //   271: getfield 322	com/tencent/wxop/stat/i:a	I
    //   274: invokestatic 296	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   277: invokevirtual 299	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/Integer;)V
    //   280: aload 6
    //   282: astore 5
    //   284: aload_0
    //   285: getfield 53	com/tencent/wxop/stat/ai:e	Lcom/tencent/wxop/stat/d;
    //   288: invokevirtual 325	com/tencent/wxop/stat/d:getWritableDatabase	()Landroid/database/sqlite/SQLiteDatabase;
    //   291: ldc_w 305
    //   294: aconst_null
    //   295: aload 8
    //   297: invokevirtual 360	android/database/sqlite/SQLiteDatabase:insert	(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    //   300: lstore_3
    //   301: goto -115 -> 186
    //   304: aload 6
    //   306: astore 5
    //   308: getstatic 40	com/tencent/wxop/stat/ai:d	Lcom/tencent/wxop/stat/b/b;
    //   311: new 96	java/lang/StringBuilder
    //   314: dup
    //   315: ldc_w 362
    //   318: invokespecial 101	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   321: aload 7
    //   323: invokevirtual 105	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   326: invokevirtual 109	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   329: invokevirtual 364	com/tencent/wxop/stat/b/b:g	(Ljava/lang/Object;)V
    //   332: goto -110 -> 222
    //   335: astore_1
    //   336: aload 6
    //   338: astore 5
    //   340: getstatic 40	com/tencent/wxop/stat/ai:d	Lcom/tencent/wxop/stat/b/b;
    //   343: aload_1
    //   344: invokevirtual 131	com/tencent/wxop/stat/b/b:b	(Ljava/lang/Throwable;)V
    //   347: aload 6
    //   349: ifnull +10 -> 359
    //   352: aload 6
    //   354: invokeinterface 351 1 0
    //   359: aload_0
    //   360: getfield 53	com/tencent/wxop/stat/ai:e	Lcom/tencent/wxop/stat/d;
    //   363: invokevirtual 325	com/tencent/wxop/stat/d:getWritableDatabase	()Landroid/database/sqlite/SQLiteDatabase;
    //   366: invokevirtual 354	android/database/sqlite/SQLiteDatabase:endTransaction	()V
    //   369: goto -111 -> 258
    //   372: astore_1
    //   373: goto -115 -> 258
    //   376: astore_1
    //   377: aconst_null
    //   378: astore 5
    //   380: aload 5
    //   382: ifnull +10 -> 392
    //   385: aload 5
    //   387: invokeinterface 351 1 0
    //   392: aload_0
    //   393: getfield 53	com/tencent/wxop/stat/ai:e	Lcom/tencent/wxop/stat/d;
    //   396: invokevirtual 325	com/tencent/wxop/stat/d:getWritableDatabase	()Landroid/database/sqlite/SQLiteDatabase;
    //   399: invokevirtual 354	android/database/sqlite/SQLiteDatabase:endTransaction	()V
    //   402: aload_1
    //   403: athrow
    //   404: astore_1
    //   405: aload_0
    //   406: monitorexit
    //   407: aload_1
    //   408: athrow
    //   409: astore 5
    //   411: goto -9 -> 402
    //   414: astore_1
    //   415: goto -35 -> 380
    //   418: astore_1
    //   419: aconst_null
    //   420: astore 6
    //   422: goto -86 -> 336
    //   425: astore_1
    //   426: goto -168 -> 258
    //   429: iconst_0
    //   430: istore_2
    //   431: goto -302 -> 129
    //
    // Exception table:
    //   from	to	target	type
    //   98	108	335	java/lang/Throwable
    //   112	127	335	java/lang/Throwable
    //   133	143	335	java/lang/Throwable
    //   152	186	335	java/lang/Throwable
    //   198	222	335	java/lang/Throwable
    //   226	236	335	java/lang/Throwable
    //   265	280	335	java/lang/Throwable
    //   284	301	335	java/lang/Throwable
    //   308	332	335	java/lang/Throwable
    //   359	369	372	java/lang/Exception
    //   2	94	376	finally
    //   241	248	404	finally
    //   248	258	404	finally
    //   352	359	404	finally
    //   359	369	404	finally
    //   385	392	404	finally
    //   392	402	404	finally
    //   402	404	404	finally
    //   392	402	409	java/lang/Exception
    //   98	108	414	finally
    //   112	127	414	finally
    //   133	143	414	finally
    //   152	186	414	finally
    //   198	222	414	finally
    //   226	236	414	finally
    //   265	280	414	finally
    //   284	301	414	finally
    //   308	332	414	finally
    //   340	347	414	finally
    //   2	94	418	java/lang/Throwable
    //   248	258	425	java/lang/Exception
  }

  // ERROR //
  private void a(List<e> paramList, int paramInt, boolean paramBoolean)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 8
    //   3: aconst_null
    //   4: astore 7
    //   6: aload_0
    //   7: monitorenter
    //   8: aload_1
    //   9: invokeinterface 142 1 0
    //   14: istore 4
    //   16: iload 4
    //   18: ifne +6 -> 24
    //   21: aload_0
    //   22: monitorexit
    //   23: return
    //   24: iload_3
    //   25: ifne +208 -> 233
    //   28: invokestatic 366	com/tencent/wxop/stat/t:f	()I
    //   31: istore 4
    //   33: aload_0
    //   34: iload_3
    //   35: invokespecial 369	com/tencent/wxop/stat/ai:b	(Z)Landroid/database/sqlite/SQLiteDatabase;
    //   38: astore 6
    //   40: iload_2
    //   41: iconst_2
    //   42: if_icmpne +199 -> 241
    //   45: aload 6
    //   47: astore 5
    //   49: new 96	java/lang/StringBuilder
    //   52: dup
    //   53: ldc_w 371
    //   56: invokespecial 101	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   59: iload_2
    //   60: invokevirtual 189	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   63: ldc_w 373
    //   66: invokevirtual 105	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   69: aload_1
    //   70: invokestatic 375	com/tencent/wxop/stat/ai:a	(Ljava/util/List;)Ljava/lang/String;
    //   73: invokevirtual 105	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   76: invokevirtual 109	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   79: astore 8
    //   81: aload 7
    //   83: astore_1
    //   84: aload 8
    //   86: astore 7
    //   88: aload 6
    //   90: astore 5
    //   92: invokestatic 184	com/tencent/wxop/stat/t:b	()Z
    //   95: ifeq +31 -> 126
    //   98: aload 6
    //   100: astore 5
    //   102: getstatic 40	com/tencent/wxop/stat/ai:d	Lcom/tencent/wxop/stat/b/b;
    //   105: new 96	java/lang/StringBuilder
    //   108: dup
    //   109: ldc_w 377
    //   112: invokespecial 101	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   115: aload 7
    //   117: invokevirtual 105	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   120: invokevirtual 109	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   123: invokevirtual 194	com/tencent/wxop/stat/b/b:a	(Ljava/lang/Object;)V
    //   126: aload 6
    //   128: astore 5
    //   130: aload 6
    //   132: invokevirtual 328	android/database/sqlite/SQLiteDatabase:beginTransaction	()V
    //   135: aload 6
    //   137: astore 5
    //   139: aload 6
    //   141: aload 7
    //   143: invokevirtual 380	android/database/sqlite/SQLiteDatabase:execSQL	(Ljava/lang/String;)V
    //   146: aload_1
    //   147: ifnull +48 -> 195
    //   150: aload 6
    //   152: astore 5
    //   154: getstatic 40	com/tencent/wxop/stat/ai:d	Lcom/tencent/wxop/stat/b/b;
    //   157: new 96	java/lang/StringBuilder
    //   160: dup
    //   161: ldc_w 382
    //   164: invokespecial 101	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   167: aload_1
    //   168: invokevirtual 105	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   171: invokevirtual 109	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   174: invokevirtual 194	com/tencent/wxop/stat/b/b:a	(Ljava/lang/Object;)V
    //   177: aload 6
    //   179: astore 5
    //   181: aload 6
    //   183: aload_1
    //   184: invokevirtual 380	android/database/sqlite/SQLiteDatabase:execSQL	(Ljava/lang/String;)V
    //   187: aload 6
    //   189: astore 5
    //   191: aload_0
    //   192: invokespecial 119	com/tencent/wxop/stat/ai:c	()V
    //   195: aload 6
    //   197: astore 5
    //   199: aload 6
    //   201: invokevirtual 348	android/database/sqlite/SQLiteDatabase:setTransactionSuccessful	()V
    //   204: aload 6
    //   206: ifnull -185 -> 21
    //   209: aload 6
    //   211: invokevirtual 354	android/database/sqlite/SQLiteDatabase:endTransaction	()V
    //   214: goto -193 -> 21
    //   217: astore_1
    //   218: getstatic 40	com/tencent/wxop/stat/ai:d	Lcom/tencent/wxop/stat/b/b;
    //   221: aload_1
    //   222: invokevirtual 131	com/tencent/wxop/stat/b/b:b	(Ljava/lang/Throwable;)V
    //   225: goto -204 -> 21
    //   228: astore_1
    //   229: aload_0
    //   230: monitorexit
    //   231: aload_1
    //   232: athrow
    //   233: invokestatic 383	com/tencent/wxop/stat/t:d	()I
    //   236: istore 4
    //   238: goto -205 -> 33
    //   241: aload 6
    //   243: astore 5
    //   245: new 96	java/lang/StringBuilder
    //   248: dup
    //   249: ldc_w 371
    //   252: invokespecial 101	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   255: iload_2
    //   256: invokevirtual 189	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   259: ldc_w 385
    //   262: invokevirtual 105	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   265: aload_1
    //   266: invokestatic 375	com/tencent/wxop/stat/ai:a	(Ljava/util/List;)Ljava/lang/String;
    //   269: invokevirtual 105	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   272: invokevirtual 109	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   275: astore 7
    //   277: aload 8
    //   279: astore_1
    //   280: aload 6
    //   282: astore 5
    //   284: aload_0
    //   285: getfield 69	com/tencent/wxop/stat/ai:k	I
    //   288: iconst_3
    //   289: irem
    //   290: ifne +26 -> 316
    //   293: aload 6
    //   295: astore 5
    //   297: new 96	java/lang/StringBuilder
    //   300: dup
    //   301: ldc_w 387
    //   304: invokespecial 101	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   307: iload 4
    //   309: invokevirtual 189	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   312: invokevirtual 109	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   315: astore_1
    //   316: aload 6
    //   318: astore 5
    //   320: aload_0
    //   321: aload_0
    //   322: getfield 69	com/tencent/wxop/stat/ai:k	I
    //   325: iconst_1
    //   326: iadd
    //   327: putfield 69	com/tencent/wxop/stat/ai:k	I
    //   330: goto -242 -> 88
    //   333: astore_1
    //   334: aconst_null
    //   335: astore 6
    //   337: aload 6
    //   339: astore 5
    //   341: getstatic 40	com/tencent/wxop/stat/ai:d	Lcom/tencent/wxop/stat/b/b;
    //   344: aload_1
    //   345: invokevirtual 131	com/tencent/wxop/stat/b/b:b	(Ljava/lang/Throwable;)V
    //   348: aload 6
    //   350: ifnull -329 -> 21
    //   353: aload 6
    //   355: invokevirtual 354	android/database/sqlite/SQLiteDatabase:endTransaction	()V
    //   358: goto -337 -> 21
    //   361: astore_1
    //   362: getstatic 40	com/tencent/wxop/stat/ai:d	Lcom/tencent/wxop/stat/b/b;
    //   365: aload_1
    //   366: invokevirtual 131	com/tencent/wxop/stat/b/b:b	(Ljava/lang/Throwable;)V
    //   369: goto -348 -> 21
    //   372: astore_1
    //   373: aconst_null
    //   374: astore 5
    //   376: aload 5
    //   378: ifnull +8 -> 386
    //   381: aload 5
    //   383: invokevirtual 354	android/database/sqlite/SQLiteDatabase:endTransaction	()V
    //   386: aload_1
    //   387: athrow
    //   388: astore 5
    //   390: getstatic 40	com/tencent/wxop/stat/ai:d	Lcom/tencent/wxop/stat/b/b;
    //   393: aload 5
    //   395: invokevirtual 131	com/tencent/wxop/stat/b/b:b	(Ljava/lang/Throwable;)V
    //   398: goto -12 -> 386
    //   401: astore_1
    //   402: goto -26 -> 376
    //   405: astore_1
    //   406: goto -69 -> 337
    //
    // Exception table:
    //   from	to	target	type
    //   209	214	217	java/lang/Throwable
    //   8	16	228	finally
    //   28	33	228	finally
    //   209	214	228	finally
    //   218	225	228	finally
    //   233	238	228	finally
    //   353	358	228	finally
    //   362	369	228	finally
    //   381	386	228	finally
    //   386	388	228	finally
    //   390	398	228	finally
    //   33	40	333	java/lang/Throwable
    //   353	358	361	java/lang/Throwable
    //   33	40	372	finally
    //   381	386	388	java/lang/Throwable
    //   49	81	401	finally
    //   92	98	401	finally
    //   102	126	401	finally
    //   130	135	401	finally
    //   139	146	401	finally
    //   154	177	401	finally
    //   181	187	401	finally
    //   191	195	401	finally
    //   199	204	401	finally
    //   245	277	401	finally
    //   284	293	401	finally
    //   297	316	401	finally
    //   320	330	401	finally
    //   341	348	401	finally
    //   49	81	405	java/lang/Throwable
    //   92	98	405	java/lang/Throwable
    //   102	126	405	java/lang/Throwable
    //   130	135	405	java/lang/Throwable
    //   139	146	405	java/lang/Throwable
    //   154	177	405	java/lang/Throwable
    //   181	187	405	java/lang/Throwable
    //   191	195	405	java/lang/Throwable
    //   199	204	405	java/lang/Throwable
    //   245	277	405	java/lang/Throwable
    //   284	293	405	java/lang/Throwable
    //   297	316	405	java/lang/Throwable
    //   320	330	405	java/lang/Throwable
  }

  // ERROR //
  private void a(List<e> paramList, boolean paramBoolean)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 5
    //   3: aconst_null
    //   4: astore 6
    //   6: aload_0
    //   7: monitorenter
    //   8: aload_1
    //   9: invokeinterface 142 1 0
    //   14: istore_3
    //   15: iload_3
    //   16: ifne +6 -> 22
    //   19: aload_0
    //   20: monitorexit
    //   21: return
    //   22: invokestatic 184	com/tencent/wxop/stat/t:b	()Z
    //   25: ifeq +41 -> 66
    //   28: getstatic 40	com/tencent/wxop/stat/ai:d	Lcom/tencent/wxop/stat/b/b;
    //   31: new 96	java/lang/StringBuilder
    //   34: dup
    //   35: ldc_w 390
    //   38: invokespecial 101	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   41: aload_1
    //   42: invokeinterface 142 1 0
    //   47: invokevirtual 189	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   50: ldc_w 392
    //   53: invokevirtual 105	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   56: iload_2
    //   57: invokevirtual 238	java/lang/StringBuilder:append	(Z)Ljava/lang/StringBuilder;
    //   60: invokevirtual 109	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   63: invokevirtual 194	com/tencent/wxop/stat/b/b:a	(Ljava/lang/Object;)V
    //   66: new 96	java/lang/StringBuilder
    //   69: dup
    //   70: aload_1
    //   71: invokeinterface 142 1 0
    //   76: iconst_3
    //   77: imul
    //   78: invokespecial 145	java/lang/StringBuilder:<init>	(I)V
    //   81: astore 7
    //   83: aload 7
    //   85: ldc 147
    //   87: invokevirtual 105	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   90: pop
    //   91: aload_1
    //   92: invokeinterface 142 1 0
    //   97: istore 4
    //   99: aload_1
    //   100: invokeinterface 151 1 0
    //   105: astore_1
    //   106: iconst_0
    //   107: istore_3
    //   108: aload_1
    //   109: invokeinterface 157 1 0
    //   114: ifeq +40 -> 154
    //   117: aload 7
    //   119: aload_1
    //   120: invokeinterface 161 1 0
    //   125: checkcast 163	com/tencent/wxop/stat/e
    //   128: getfield 166	com/tencent/wxop/stat/e:a	J
    //   131: invokevirtual 169	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   134: pop
    //   135: iload_3
    //   136: iload 4
    //   138: iconst_1
    //   139: isub
    //   140: if_icmpeq +264 -> 404
    //   143: aload 7
    //   145: ldc 171
    //   147: invokevirtual 105	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   150: pop
    //   151: goto +253 -> 404
    //   154: aload 7
    //   156: ldc 173
    //   158: invokevirtual 105	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   161: pop
    //   162: aload 6
    //   164: astore_1
    //   165: aload_0
    //   166: iload_2
    //   167: invokespecial 369	com/tencent/wxop/stat/ai:b	(Z)Landroid/database/sqlite/SQLiteDatabase;
    //   170: astore 6
    //   172: aload 6
    //   174: astore_1
    //   175: aload 6
    //   177: astore 5
    //   179: aload 6
    //   181: invokevirtual 328	android/database/sqlite/SQLiteDatabase:beginTransaction	()V
    //   184: aload 6
    //   186: astore_1
    //   187: aload 6
    //   189: astore 5
    //   191: aload 6
    //   193: ldc_w 394
    //   196: aload 7
    //   198: invokevirtual 109	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   201: aconst_null
    //   202: invokevirtual 398	android/database/sqlite/SQLiteDatabase:delete	(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    //   205: istore_3
    //   206: aload 6
    //   208: astore_1
    //   209: aload 6
    //   211: astore 5
    //   213: invokestatic 184	com/tencent/wxop/stat/t:b	()Z
    //   216: ifeq +58 -> 274
    //   219: aload 6
    //   221: astore_1
    //   222: aload 6
    //   224: astore 5
    //   226: getstatic 40	com/tencent/wxop/stat/ai:d	Lcom/tencent/wxop/stat/b/b;
    //   229: new 96	java/lang/StringBuilder
    //   232: dup
    //   233: ldc_w 400
    //   236: invokespecial 101	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   239: iload 4
    //   241: invokevirtual 189	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   244: ldc_w 402
    //   247: invokevirtual 105	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   250: aload 7
    //   252: invokevirtual 109	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   255: invokevirtual 105	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   258: ldc_w 404
    //   261: invokevirtual 105	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   264: iload_3
    //   265: invokevirtual 189	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   268: invokevirtual 109	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   271: invokevirtual 194	com/tencent/wxop/stat/b/b:a	(Ljava/lang/Object;)V
    //   274: aload 6
    //   276: astore_1
    //   277: aload 6
    //   279: astore 5
    //   281: aload_0
    //   282: aload_0
    //   283: getfield 65	com/tencent/wxop/stat/ai:b	I
    //   286: iload_3
    //   287: isub
    //   288: putfield 65	com/tencent/wxop/stat/ai:b	I
    //   291: aload 6
    //   293: astore_1
    //   294: aload 6
    //   296: astore 5
    //   298: aload 6
    //   300: invokevirtual 348	android/database/sqlite/SQLiteDatabase:setTransactionSuccessful	()V
    //   303: aload 6
    //   305: astore_1
    //   306: aload 6
    //   308: astore 5
    //   310: aload_0
    //   311: invokespecial 119	com/tencent/wxop/stat/ai:c	()V
    //   314: aload 6
    //   316: ifnull -297 -> 19
    //   319: aload 6
    //   321: invokevirtual 354	android/database/sqlite/SQLiteDatabase:endTransaction	()V
    //   324: goto -305 -> 19
    //   327: astore_1
    //   328: getstatic 40	com/tencent/wxop/stat/ai:d	Lcom/tencent/wxop/stat/b/b;
    //   331: aload_1
    //   332: invokevirtual 131	com/tencent/wxop/stat/b/b:b	(Ljava/lang/Throwable;)V
    //   335: goto -316 -> 19
    //   338: astore_1
    //   339: aload_0
    //   340: monitorexit
    //   341: aload_1
    //   342: athrow
    //   343: astore 6
    //   345: aload_1
    //   346: astore 5
    //   348: getstatic 40	com/tencent/wxop/stat/ai:d	Lcom/tencent/wxop/stat/b/b;
    //   351: aload 6
    //   353: invokevirtual 131	com/tencent/wxop/stat/b/b:b	(Ljava/lang/Throwable;)V
    //   356: aload_1
    //   357: ifnull -338 -> 19
    //   360: aload_1
    //   361: invokevirtual 354	android/database/sqlite/SQLiteDatabase:endTransaction	()V
    //   364: goto -345 -> 19
    //   367: astore_1
    //   368: getstatic 40	com/tencent/wxop/stat/ai:d	Lcom/tencent/wxop/stat/b/b;
    //   371: aload_1
    //   372: invokevirtual 131	com/tencent/wxop/stat/b/b:b	(Ljava/lang/Throwable;)V
    //   375: goto -356 -> 19
    //   378: astore_1
    //   379: aload 5
    //   381: ifnull +8 -> 389
    //   384: aload 5
    //   386: invokevirtual 354	android/database/sqlite/SQLiteDatabase:endTransaction	()V
    //   389: aload_1
    //   390: athrow
    //   391: astore 5
    //   393: getstatic 40	com/tencent/wxop/stat/ai:d	Lcom/tencent/wxop/stat/b/b;
    //   396: aload 5
    //   398: invokevirtual 131	com/tencent/wxop/stat/b/b:b	(Ljava/lang/Throwable;)V
    //   401: goto -12 -> 389
    //   404: iload_3
    //   405: iconst_1
    //   406: iadd
    //   407: istore_3
    //   408: goto -300 -> 108
    //
    // Exception table:
    //   from	to	target	type
    //   319	324	327	java/lang/Throwable
    //   8	15	338	finally
    //   22	66	338	finally
    //   66	106	338	finally
    //   108	135	338	finally
    //   143	151	338	finally
    //   154	162	338	finally
    //   319	324	338	finally
    //   328	335	338	finally
    //   360	364	338	finally
    //   368	375	338	finally
    //   384	389	338	finally
    //   389	391	338	finally
    //   393	401	338	finally
    //   165	172	343	java/lang/Throwable
    //   179	184	343	java/lang/Throwable
    //   191	206	343	java/lang/Throwable
    //   213	219	343	java/lang/Throwable
    //   226	274	343	java/lang/Throwable
    //   281	291	343	java/lang/Throwable
    //   298	303	343	java/lang/Throwable
    //   310	314	343	java/lang/Throwable
    //   360	364	367	java/lang/Throwable
    //   165	172	378	finally
    //   179	184	378	finally
    //   191	206	378	finally
    //   213	219	378	finally
    //   226	274	378	finally
    //   281	291	378	finally
    //   298	303	378	finally
    //   310	314	378	finally
    //   348	356	378	finally
    //   384	389	391	java/lang/Throwable
  }

  private void a(boolean paramBoolean)
  {
    Object localObject3 = null;
    Object localObject1 = null;
    try
    {
      SQLiteDatabase localSQLiteDatabase = b(paramBoolean);
      localObject1 = localSQLiteDatabase;
      localObject3 = localSQLiteDatabase;
      localSQLiteDatabase.beginTransaction();
      localObject1 = localSQLiteDatabase;
      localObject3 = localSQLiteDatabase;
      ContentValues localContentValues = new ContentValues();
      localObject1 = localSQLiteDatabase;
      localObject3 = localSQLiteDatabase;
      localContentValues.put("status", Integer.valueOf(1));
      localObject1 = localSQLiteDatabase;
      localObject3 = localSQLiteDatabase;
      int i1 = localSQLiteDatabase.update("events", localContentValues, "status=?", new String[] { Long.toString(2L) });
      localObject1 = localSQLiteDatabase;
      localObject3 = localSQLiteDatabase;
      if (t.b())
      {
        localObject1 = localSQLiteDatabase;
        localObject3 = localSQLiteDatabase;
        d.a("update " + i1 + " unsent events.");
      }
      localObject1 = localSQLiteDatabase;
      localObject3 = localSQLiteDatabase;
      localSQLiteDatabase.setTransactionSuccessful();
      if (localSQLiteDatabase != null);
      try
      {
        localSQLiteDatabase.endTransaction();
        return;
      }
      catch (Throwable localThrowable1)
      {
        d.b(localThrowable1);
        return;
      }
    }
    catch (Throwable localThrowable4)
    {
      do
      {
        localObject3 = localThrowable1;
        d.b(localThrowable4);
      }
      while (localThrowable1 == null);
      try
      {
        localThrowable1.endTransaction();
        return;
      }
      catch (Throwable localThrowable2)
      {
        d.b(localThrowable2);
        return;
      }
    }
    finally
    {
      if (localObject3 == null);
    }
    try
    {
      localObject3.endTransaction();
      throw localObject2;
    }
    catch (Throwable localThrowable3)
    {
      while (true)
        d.b(localThrowable3);
    }
  }

  private SQLiteDatabase b(boolean paramBoolean)
  {
    if (!paramBoolean)
      return this.e.getWritableDatabase();
    return this.f.getWritableDatabase();
  }

  // ERROR //
  private void b(com.tencent.wxop.stat.a.d paramd, k paramk, boolean paramBoolean1, boolean paramBoolean2)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 11
    //   3: aconst_null
    //   4: astore 10
    //   6: aload_0
    //   7: monitorenter
    //   8: invokestatic 420	com/tencent/wxop/stat/t:i	()I
    //   11: ifle +382 -> 393
    //   14: getstatic 422	com/tencent/wxop/stat/t:n	I
    //   17: istore 5
    //   19: iload 5
    //   21: ifle +12 -> 33
    //   24: iload_3
    //   25: ifne +8 -> 33
    //   28: iload 4
    //   30: ifeq +492 -> 522
    //   33: aload_0
    //   34: iload_3
    //   35: invokespecial 369	com/tencent/wxop/stat/ai:b	(Z)Landroid/database/sqlite/SQLiteDatabase;
    //   38: astore 12
    //   40: aload 12
    //   42: astore 10
    //   44: aload 12
    //   46: astore 11
    //   48: aload 12
    //   50: invokevirtual 328	android/database/sqlite/SQLiteDatabase:beginTransaction	()V
    //   53: iload_3
    //   54: ifne +72 -> 126
    //   57: aload 12
    //   59: astore 10
    //   61: aload 12
    //   63: astore 11
    //   65: aload_0
    //   66: getfield 65	com/tencent/wxop/stat/ai:b	I
    //   69: invokestatic 420	com/tencent/wxop/stat/t:i	()I
    //   72: if_icmple +54 -> 126
    //   75: aload 12
    //   77: astore 10
    //   79: aload 12
    //   81: astore 11
    //   83: getstatic 40	com/tencent/wxop/stat/ai:d	Lcom/tencent/wxop/stat/b/b;
    //   86: ldc_w 424
    //   89: invokevirtual 426	com/tencent/wxop/stat/b/b:b	(Ljava/lang/Object;)V
    //   92: aload 12
    //   94: astore 10
    //   96: aload 12
    //   98: astore 11
    //   100: aload_0
    //   101: aload_0
    //   102: getfield 65	com/tencent/wxop/stat/ai:b	I
    //   105: aload_0
    //   106: getfield 53	com/tencent/wxop/stat/ai:e	Lcom/tencent/wxop/stat/d;
    //   109: invokevirtual 325	com/tencent/wxop/stat/d:getWritableDatabase	()Landroid/database/sqlite/SQLiteDatabase;
    //   112: ldc_w 394
    //   115: ldc_w 428
    //   118: aconst_null
    //   119: invokevirtual 398	android/database/sqlite/SQLiteDatabase:delete	(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    //   122: isub
    //   123: putfield 65	com/tencent/wxop/stat/ai:b	I
    //   126: aload 12
    //   128: astore 10
    //   130: aload 12
    //   132: astore 11
    //   134: new 275	android/content/ContentValues
    //   137: dup
    //   138: invokespecial 276	android/content/ContentValues:<init>	()V
    //   141: astore 13
    //   143: aload 12
    //   145: astore 10
    //   147: aload 12
    //   149: astore 11
    //   151: aload_1
    //   152: invokevirtual 432	com/tencent/wxop/stat/a/d:f	()Ljava/lang/String;
    //   155: astore 14
    //   157: aload 12
    //   159: astore 10
    //   161: aload 12
    //   163: astore 11
    //   165: invokestatic 184	com/tencent/wxop/stat/t:b	()Z
    //   168: ifeq +35 -> 203
    //   171: aload 12
    //   173: astore 10
    //   175: aload 12
    //   177: astore 11
    //   179: getstatic 40	com/tencent/wxop/stat/ai:d	Lcom/tencent/wxop/stat/b/b;
    //   182: new 96	java/lang/StringBuilder
    //   185: dup
    //   186: ldc_w 434
    //   189: invokespecial 101	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   192: aload 14
    //   194: invokevirtual 105	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   197: invokevirtual 109	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   200: invokevirtual 194	com/tencent/wxop/stat/b/b:a	(Ljava/lang/Object;)V
    //   203: aload 12
    //   205: astore 10
    //   207: aload 12
    //   209: astore 11
    //   211: aload 13
    //   213: ldc_w 278
    //   216: aload 14
    //   218: invokestatic 438	com/tencent/wxop/stat/b/r:b	(Ljava/lang/String;)Ljava/lang/String;
    //   221: invokevirtual 282	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   224: aload 12
    //   226: astore 10
    //   228: aload 12
    //   230: astore 11
    //   232: aload 13
    //   234: ldc_w 440
    //   237: ldc_w 442
    //   240: invokevirtual 282	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   243: aload 12
    //   245: astore 10
    //   247: aload 12
    //   249: astore 11
    //   251: aload 13
    //   253: ldc_w 407
    //   256: iconst_1
    //   257: invokestatic 335	java/lang/Integer:toString	(I)Ljava/lang/String;
    //   260: invokevirtual 282	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   263: aload 12
    //   265: astore 10
    //   267: aload 12
    //   269: astore 11
    //   271: aload 13
    //   273: ldc_w 444
    //   276: aload_1
    //   277: invokevirtual 447	com/tencent/wxop/stat/a/d:c	()J
    //   280: invokestatic 450	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   283: invokevirtual 453	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/Long;)V
    //   286: aload 12
    //   288: astore 10
    //   290: aload 12
    //   292: astore 11
    //   294: aload 12
    //   296: ldc_w 394
    //   299: aconst_null
    //   300: aload 13
    //   302: invokevirtual 360	android/database/sqlite/SQLiteDatabase:insert	(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    //   305: lstore 6
    //   307: aload 12
    //   309: astore 10
    //   311: aload 12
    //   313: astore 11
    //   315: aload 12
    //   317: invokevirtual 348	android/database/sqlite/SQLiteDatabase:setTransactionSuccessful	()V
    //   320: lload 6
    //   322: lstore 8
    //   324: aload 12
    //   326: ifnull +343 -> 669
    //   329: aload 12
    //   331: invokevirtual 354	android/database/sqlite/SQLiteDatabase:endTransaction	()V
    //   334: lload 6
    //   336: lconst_0
    //   337: lcmp
    //   338: ifle +155 -> 493
    //   341: aload_0
    //   342: aload_0
    //   343: getfield 65	com/tencent/wxop/stat/ai:b	I
    //   346: iconst_1
    //   347: iadd
    //   348: putfield 65	com/tencent/wxop/stat/ai:b	I
    //   351: invokestatic 184	com/tencent/wxop/stat/t:b	()Z
    //   354: ifeq +29 -> 383
    //   357: getstatic 40	com/tencent/wxop/stat/ai:d	Lcom/tencent/wxop/stat/b/b;
    //   360: new 96	java/lang/StringBuilder
    //   363: dup
    //   364: ldc_w 455
    //   367: invokespecial 101	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   370: aload_1
    //   371: invokevirtual 432	com/tencent/wxop/stat/a/d:f	()Ljava/lang/String;
    //   374: invokevirtual 105	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   377: invokevirtual 109	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   380: invokevirtual 364	com/tencent/wxop/stat/b/b:g	(Ljava/lang/Object;)V
    //   383: aload_2
    //   384: ifnull +9 -> 393
    //   387: aload_2
    //   388: invokeinterface 459 1 0
    //   393: aload_0
    //   394: monitorexit
    //   395: return
    //   396: astore 10
    //   398: getstatic 40	com/tencent/wxop/stat/ai:d	Lcom/tencent/wxop/stat/b/b;
    //   401: aload 10
    //   403: invokevirtual 131	com/tencent/wxop/stat/b/b:b	(Ljava/lang/Throwable;)V
    //   406: goto -72 -> 334
    //   409: astore 12
    //   411: ldc2_w 340
    //   414: lstore 8
    //   416: aload 10
    //   418: astore 11
    //   420: getstatic 40	com/tencent/wxop/stat/ai:d	Lcom/tencent/wxop/stat/b/b;
    //   423: aload 12
    //   425: invokevirtual 131	com/tencent/wxop/stat/b/b:b	(Ljava/lang/Throwable;)V
    //   428: aload 10
    //   430: ifnull +239 -> 669
    //   433: aload 10
    //   435: invokevirtual 354	android/database/sqlite/SQLiteDatabase:endTransaction	()V
    //   438: ldc2_w 340
    //   441: lstore 6
    //   443: goto -109 -> 334
    //   446: astore 10
    //   448: getstatic 40	com/tencent/wxop/stat/ai:d	Lcom/tencent/wxop/stat/b/b;
    //   451: aload 10
    //   453: invokevirtual 131	com/tencent/wxop/stat/b/b:b	(Ljava/lang/Throwable;)V
    //   456: ldc2_w 340
    //   459: lstore 6
    //   461: goto -127 -> 334
    //   464: astore_1
    //   465: aload 11
    //   467: ifnull +8 -> 475
    //   470: aload 11
    //   472: invokevirtual 354	android/database/sqlite/SQLiteDatabase:endTransaction	()V
    //   475: aload_1
    //   476: athrow
    //   477: astore_1
    //   478: aload_0
    //   479: monitorexit
    //   480: aload_1
    //   481: athrow
    //   482: astore_2
    //   483: getstatic 40	com/tencent/wxop/stat/ai:d	Lcom/tencent/wxop/stat/b/b;
    //   486: aload_2
    //   487: invokevirtual 131	com/tencent/wxop/stat/b/b:b	(Ljava/lang/Throwable;)V
    //   490: goto -15 -> 475
    //   493: getstatic 40	com/tencent/wxop/stat/ai:d	Lcom/tencent/wxop/stat/b/b;
    //   496: new 96	java/lang/StringBuilder
    //   499: dup
    //   500: ldc_w 461
    //   503: invokespecial 101	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   506: aload_1
    //   507: invokevirtual 432	com/tencent/wxop/stat/a/d:f	()Ljava/lang/String;
    //   510: invokevirtual 105	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   513: invokevirtual 109	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   516: invokevirtual 463	com/tencent/wxop/stat/b/b:d	(Ljava/lang/Object;)V
    //   519: goto -126 -> 393
    //   522: getstatic 422	com/tencent/wxop/stat/t:n	I
    //   525: ifle -132 -> 393
    //   528: invokestatic 184	com/tencent/wxop/stat/t:b	()Z
    //   531: ifeq +83 -> 614
    //   534: getstatic 40	com/tencent/wxop/stat/ai:d	Lcom/tencent/wxop/stat/b/b;
    //   537: new 96	java/lang/StringBuilder
    //   540: dup
    //   541: ldc_w 465
    //   544: invokespecial 101	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   547: aload_0
    //   548: getfield 71	com/tencent/wxop/stat/ai:l	Ljava/util/concurrent/ConcurrentHashMap;
    //   551: invokevirtual 466	java/util/concurrent/ConcurrentHashMap:size	()I
    //   554: invokevirtual 189	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   557: ldc_w 468
    //   560: invokevirtual 105	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   563: getstatic 422	com/tencent/wxop/stat/t:n	I
    //   566: invokevirtual 189	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   569: ldc_w 470
    //   572: invokevirtual 105	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   575: aload_0
    //   576: getfield 65	com/tencent/wxop/stat/ai:b	I
    //   579: invokevirtual 189	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   582: invokevirtual 109	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   585: invokevirtual 194	com/tencent/wxop/stat/b/b:a	(Ljava/lang/Object;)V
    //   588: getstatic 40	com/tencent/wxop/stat/ai:d	Lcom/tencent/wxop/stat/b/b;
    //   591: new 96	java/lang/StringBuilder
    //   594: dup
    //   595: ldc_w 472
    //   598: invokespecial 101	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   601: aload_1
    //   602: invokevirtual 432	com/tencent/wxop/stat/a/d:f	()Ljava/lang/String;
    //   605: invokevirtual 105	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   608: invokevirtual 109	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   611: invokevirtual 194	com/tencent/wxop/stat/b/b:a	(Ljava/lang/Object;)V
    //   614: aload_0
    //   615: getfield 71	com/tencent/wxop/stat/ai:l	Ljava/util/concurrent/ConcurrentHashMap;
    //   618: aload_1
    //   619: ldc 59
    //   621: invokevirtual 475	java/util/concurrent/ConcurrentHashMap:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   624: pop
    //   625: aload_0
    //   626: getfield 71	com/tencent/wxop/stat/ai:l	Ljava/util/concurrent/ConcurrentHashMap;
    //   629: invokevirtual 466	java/util/concurrent/ConcurrentHashMap:size	()I
    //   632: getstatic 422	com/tencent/wxop/stat/t:n	I
    //   635: if_icmplt +7 -> 642
    //   638: aload_0
    //   639: invokespecial 222	com/tencent/wxop/stat/ai:f	()V
    //   642: aload_2
    //   643: ifnull -250 -> 393
    //   646: aload_0
    //   647: getfield 71	com/tencent/wxop/stat/ai:l	Ljava/util/concurrent/ConcurrentHashMap;
    //   650: invokevirtual 466	java/util/concurrent/ConcurrentHashMap:size	()I
    //   653: ifle +7 -> 660
    //   656: aload_0
    //   657: invokespecial 222	com/tencent/wxop/stat/ai:f	()V
    //   660: aload_2
    //   661: invokeinterface 459 1 0
    //   666: goto -273 -> 393
    //   669: lload 8
    //   671: lstore 6
    //   673: goto -339 -> 334
    //
    // Exception table:
    //   from	to	target	type
    //   329	334	396	java/lang/Throwable
    //   33	40	409	java/lang/Throwable
    //   48	53	409	java/lang/Throwable
    //   65	75	409	java/lang/Throwable
    //   83	92	409	java/lang/Throwable
    //   100	126	409	java/lang/Throwable
    //   134	143	409	java/lang/Throwable
    //   151	157	409	java/lang/Throwable
    //   165	171	409	java/lang/Throwable
    //   179	203	409	java/lang/Throwable
    //   211	224	409	java/lang/Throwable
    //   232	243	409	java/lang/Throwable
    //   251	263	409	java/lang/Throwable
    //   271	286	409	java/lang/Throwable
    //   294	307	409	java/lang/Throwable
    //   315	320	409	java/lang/Throwable
    //   433	438	446	java/lang/Throwable
    //   33	40	464	finally
    //   48	53	464	finally
    //   65	75	464	finally
    //   83	92	464	finally
    //   100	126	464	finally
    //   134	143	464	finally
    //   151	157	464	finally
    //   165	171	464	finally
    //   179	203	464	finally
    //   211	224	464	finally
    //   232	243	464	finally
    //   251	263	464	finally
    //   271	286	464	finally
    //   294	307	464	finally
    //   315	320	464	finally
    //   420	428	464	finally
    //   8	19	477	finally
    //   329	334	477	finally
    //   341	383	477	finally
    //   387	393	477	finally
    //   398	406	477	finally
    //   433	438	477	finally
    //   448	456	477	finally
    //   470	475	477	finally
    //   475	477	477	finally
    //   483	490	477	finally
    //   493	519	477	finally
    //   522	614	477	finally
    //   614	642	477	finally
    //   646	660	477	finally
    //   660	666	477	finally
    //   470	475	482	java/lang/Throwable
  }

  // ERROR //
  private void b(List<e> paramList, int paramInt, boolean paramBoolean)
  {
    // Byte code:
    //   0: iload_3
    //   1: ifne +232 -> 233
    //   4: aload_0
    //   5: getfield 53	com/tencent/wxop/stat/ai:e	Lcom/tencent/wxop/stat/d;
    //   8: invokevirtual 303	com/tencent/wxop/stat/d:getReadableDatabase	()Landroid/database/sqlite/SQLiteDatabase;
    //   11: astore 7
    //   13: iconst_1
    //   14: invokestatic 335	java/lang/Integer:toString	(I)Ljava/lang/String;
    //   17: astore 8
    //   19: iload_2
    //   20: invokestatic 335	java/lang/Integer:toString	(I)Ljava/lang/String;
    //   23: astore 9
    //   25: aload 7
    //   27: ldc_w 394
    //   30: aconst_null
    //   31: ldc_w 409
    //   34: iconst_1
    //   35: anewarray 332	java/lang/String
    //   38: dup
    //   39: iconst_0
    //   40: aload 8
    //   42: aastore
    //   43: aconst_null
    //   44: aconst_null
    //   45: aconst_null
    //   46: aload 9
    //   48: invokevirtual 478	android/database/sqlite/SQLiteDatabase:query	(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   51: astore 7
    //   53: aload 7
    //   55: invokeinterface 316 1 0
    //   60: ifeq +185 -> 245
    //   63: aload 7
    //   65: iconst_0
    //   66: invokeinterface 482 2 0
    //   71: lstore 5
    //   73: aload 7
    //   75: iconst_1
    //   76: invokeinterface 485 2 0
    //   81: astore 9
    //   83: aload 9
    //   85: astore 8
    //   87: getstatic 487	com/tencent/wxop/stat/t:g	Z
    //   90: ifne +10 -> 100
    //   93: aload 9
    //   95: invokestatic 488	com/tencent/wxop/stat/b/r:a	(Ljava/lang/String;)Ljava/lang/String;
    //   98: astore 8
    //   100: aload 7
    //   102: iconst_2
    //   103: invokeinterface 320 2 0
    //   108: istore_2
    //   109: aload 7
    //   111: iconst_3
    //   112: invokeinterface 320 2 0
    //   117: istore 4
    //   119: new 163	com/tencent/wxop/stat/e
    //   122: dup
    //   123: lload 5
    //   125: aload 8
    //   127: iload_2
    //   128: iload 4
    //   130: invokespecial 491	com/tencent/wxop/stat/e:<init>	(JLjava/lang/String;II)V
    //   133: astore 8
    //   135: invokestatic 184	com/tencent/wxop/stat/t:b	()Z
    //   138: ifeq +55 -> 193
    //   141: getstatic 40	com/tencent/wxop/stat/ai:d	Lcom/tencent/wxop/stat/b/b;
    //   144: new 96	java/lang/StringBuilder
    //   147: dup
    //   148: ldc_w 493
    //   151: invokespecial 101	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   154: lload 5
    //   156: invokevirtual 169	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   159: ldc_w 495
    //   162: invokevirtual 105	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   165: iload 4
    //   167: invokevirtual 189	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   170: ldc_w 497
    //   173: invokevirtual 105	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   176: aload 7
    //   178: iconst_4
    //   179: invokeinterface 482 2 0
    //   184: invokevirtual 169	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   187: invokevirtual 109	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   190: invokevirtual 194	com/tencent/wxop/stat/b/b:a	(Ljava/lang/Object;)V
    //   193: aload_1
    //   194: aload 8
    //   196: invokeinterface 501 2 0
    //   201: pop
    //   202: goto -149 -> 53
    //   205: astore 8
    //   207: aload 7
    //   209: astore_1
    //   210: aload 8
    //   212: astore 7
    //   214: getstatic 40	com/tencent/wxop/stat/ai:d	Lcom/tencent/wxop/stat/b/b;
    //   217: aload 7
    //   219: invokevirtual 131	com/tencent/wxop/stat/b/b:b	(Ljava/lang/Throwable;)V
    //   222: aload_1
    //   223: ifnull +9 -> 232
    //   226: aload_1
    //   227: invokeinterface 351 1 0
    //   232: return
    //   233: aload_0
    //   234: getfield 55	com/tencent/wxop/stat/ai:f	Lcom/tencent/wxop/stat/d;
    //   237: invokevirtual 303	com/tencent/wxop/stat/d:getReadableDatabase	()Landroid/database/sqlite/SQLiteDatabase;
    //   240: astore 7
    //   242: goto -229 -> 13
    //   245: aload 7
    //   247: ifnull -15 -> 232
    //   250: aload 7
    //   252: invokeinterface 351 1 0
    //   257: return
    //   258: astore_1
    //   259: aconst_null
    //   260: astore 7
    //   262: aload 7
    //   264: ifnull +10 -> 274
    //   267: aload 7
    //   269: invokeinterface 351 1 0
    //   274: aload_1
    //   275: athrow
    //   276: astore_1
    //   277: goto -15 -> 262
    //   280: astore 8
    //   282: aload_1
    //   283: astore 7
    //   285: aload 8
    //   287: astore_1
    //   288: goto -26 -> 262
    //   291: astore 7
    //   293: aconst_null
    //   294: astore_1
    //   295: goto -81 -> 214
    //
    // Exception table:
    //   from	to	target	type
    //   53	83	205	java/lang/Throwable
    //   87	100	205	java/lang/Throwable
    //   100	193	205	java/lang/Throwable
    //   193	202	205	java/lang/Throwable
    //   4	13	258	finally
    //   13	53	258	finally
    //   233	242	258	finally
    //   53	83	276	finally
    //   87	100	276	finally
    //   100	193	276	finally
    //   193	202	276	finally
    //   214	222	280	finally
    //   4	13	291	java/lang/Throwable
    //   13	53	291	java/lang/Throwable
    //   233	242	291	java/lang/Throwable
  }

  private void c()
  {
    this.b = (d() + e());
  }

  private int d()
  {
    return (int)DatabaseUtils.queryNumEntries(this.e.getReadableDatabase(), "events");
  }

  private int e()
  {
    return (int)DatabaseUtils.queryNumEntries(this.f.getReadableDatabase(), "events");
  }

  private void f()
  {
    Object localObject5 = null;
    Object localObject1 = null;
    if (this.m)
      return;
    synchronized (this.l)
    {
      if (this.l.size() == 0)
        return;
    }
    this.m = true;
    if (t.b())
      d.a("insert " + this.l.size() + " events ,numEventsCachedInMemory:" + t.n + ",numStoredEvents:" + this.b);
    try
    {
      SQLiteDatabase localSQLiteDatabase = this.e.getWritableDatabase();
      localObject3 = localSQLiteDatabase;
      localObject5 = localSQLiteDatabase;
      localSQLiteDatabase.beginTransaction();
      localObject3 = localSQLiteDatabase;
      localObject5 = localSQLiteDatabase;
      Iterator localIterator = this.l.entrySet().iterator();
      while (true)
      {
        localObject3 = localSQLiteDatabase;
        localObject5 = localSQLiteDatabase;
        if (!localIterator.hasNext())
          break;
        localObject3 = localSQLiteDatabase;
        localObject5 = localSQLiteDatabase;
        com.tencent.wxop.stat.a.d locald = (com.tencent.wxop.stat.a.d)((Map.Entry)localIterator.next()).getKey();
        localObject3 = localSQLiteDatabase;
        localObject5 = localSQLiteDatabase;
        ContentValues localContentValues = new ContentValues();
        localObject3 = localSQLiteDatabase;
        localObject5 = localSQLiteDatabase;
        String str = locald.f();
        localObject3 = localSQLiteDatabase;
        localObject5 = localSQLiteDatabase;
        if (t.b())
        {
          localObject3 = localSQLiteDatabase;
          localObject5 = localSQLiteDatabase;
          d.a("insert content:" + str);
        }
        localObject3 = localSQLiteDatabase;
        localObject5 = localSQLiteDatabase;
        localContentValues.put("content", r.b(str));
        localObject3 = localSQLiteDatabase;
        localObject5 = localSQLiteDatabase;
        localContentValues.put("send_count", "0");
        localObject3 = localSQLiteDatabase;
        localObject5 = localSQLiteDatabase;
        localContentValues.put("status", Integer.toString(1));
        localObject3 = localSQLiteDatabase;
        localObject5 = localSQLiteDatabase;
        localContentValues.put("timestamp", Long.valueOf(locald.c()));
        localObject3 = localSQLiteDatabase;
        localObject5 = localSQLiteDatabase;
        localSQLiteDatabase.insert("events", null, localContentValues);
        localObject3 = localSQLiteDatabase;
        localObject5 = localSQLiteDatabase;
        localIterator.remove();
      }
    }
    catch (Throwable localThrowable4)
    {
      Object localObject3;
      localObject5 = localObject3;
      d.b(localThrowable4);
      if (localObject3 != null);
      try
      {
        localObject3.endTransaction();
        c();
        while (true)
        {
          this.m = false;
          if (t.b())
            d.a("after insert, cacheEventsInMemory.size():" + this.l.size() + ",numEventsCachedInMemory:" + t.n + ",numStoredEvents:" + this.b);
          return;
          localObject3 = localThrowable4;
          localObject5 = localThrowable4;
          localThrowable4.setTransactionSuccessful();
          if (localThrowable4 != null)
            try
            {
              localThrowable4.endTransaction();
              c();
            }
            catch (Throwable localThrowable1)
            {
              d.b(localThrowable1);
            }
        }
      }
      catch (Throwable localThrowable2)
      {
        while (true)
          d.b(localThrowable2);
      }
    }
    finally
    {
      if (localObject5 == null);
    }
    try
    {
      localObject5.endTransaction();
      c();
      throw localObject4;
    }
    catch (Throwable localThrowable3)
    {
      while (true)
        d.b(localThrowable3);
    }
  }

  // ERROR //
  private void g()
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 53	com/tencent/wxop/stat/ai:e	Lcom/tencent/wxop/stat/d;
    //   4: invokevirtual 303	com/tencent/wxop/stat/d:getReadableDatabase	()Landroid/database/sqlite/SQLiteDatabase;
    //   7: ldc_w 305
    //   10: aconst_null
    //   11: aconst_null
    //   12: aconst_null
    //   13: aconst_null
    //   14: aconst_null
    //   15: aconst_null
    //   16: invokevirtual 311	android/database/sqlite/SQLiteDatabase:query	(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   19: astore 4
    //   21: aload 4
    //   23: astore_3
    //   24: aload 4
    //   26: invokeinterface 316 1 0
    //   31: ifeq +151 -> 182
    //   34: aload 4
    //   36: astore_3
    //   37: aload 4
    //   39: iconst_0
    //   40: invokeinterface 320 2 0
    //   45: istore_1
    //   46: aload 4
    //   48: astore_3
    //   49: aload 4
    //   51: iconst_1
    //   52: invokeinterface 485 2 0
    //   57: astore 5
    //   59: aload 4
    //   61: astore_3
    //   62: aload 4
    //   64: iconst_2
    //   65: invokeinterface 485 2 0
    //   70: astore 6
    //   72: aload 4
    //   74: astore_3
    //   75: aload 4
    //   77: iconst_3
    //   78: invokeinterface 320 2 0
    //   83: istore_2
    //   84: aload 4
    //   86: astore_3
    //   87: new 264	com/tencent/wxop/stat/i
    //   90: dup
    //   91: iload_1
    //   92: invokespecial 531	com/tencent/wxop/stat/i:<init>	(I)V
    //   95: astore 7
    //   97: aload 4
    //   99: astore_3
    //   100: aload 7
    //   102: iload_1
    //   103: putfield 322	com/tencent/wxop/stat/i:a	I
    //   106: aload 4
    //   108: astore_3
    //   109: aload 7
    //   111: new 269	org/json/JSONObject
    //   114: dup
    //   115: aload 5
    //   117: invokespecial 532	org/json/JSONObject:<init>	(Ljava/lang/String;)V
    //   120: putfield 267	com/tencent/wxop/stat/i:b	Lorg/json/JSONObject;
    //   123: aload 4
    //   125: astore_3
    //   126: aload 7
    //   128: aload 6
    //   130: putfield 286	com/tencent/wxop/stat/i:c	Ljava/lang/String;
    //   133: aload 4
    //   135: astore_3
    //   136: aload 7
    //   138: iload_2
    //   139: putfield 290	com/tencent/wxop/stat/i:d	I
    //   142: aload 4
    //   144: astore_3
    //   145: getstatic 42	com/tencent/wxop/stat/ai:i	Landroid/content/Context;
    //   148: aload 7
    //   150: invokestatic 535	com/tencent/wxop/stat/t:a	(Landroid/content/Context;Lcom/tencent/wxop/stat/i;)V
    //   153: goto -132 -> 21
    //   156: astore 5
    //   158: aload 4
    //   160: astore_3
    //   161: getstatic 40	com/tencent/wxop/stat/ai:d	Lcom/tencent/wxop/stat/b/b;
    //   164: aload 5
    //   166: invokevirtual 131	com/tencent/wxop/stat/b/b:b	(Ljava/lang/Throwable;)V
    //   169: aload 4
    //   171: ifnull +10 -> 181
    //   174: aload 4
    //   176: invokeinterface 351 1 0
    //   181: return
    //   182: aload 4
    //   184: ifnull -3 -> 181
    //   187: aload 4
    //   189: invokeinterface 351 1 0
    //   194: return
    //   195: astore 4
    //   197: aconst_null
    //   198: astore_3
    //   199: aload_3
    //   200: ifnull +9 -> 209
    //   203: aload_3
    //   204: invokeinterface 351 1 0
    //   209: aload 4
    //   211: athrow
    //   212: astore 4
    //   214: goto -15 -> 199
    //   217: astore 5
    //   219: aconst_null
    //   220: astore 4
    //   222: goto -64 -> 158
    //
    // Exception table:
    //   from	to	target	type
    //   24	34	156	java/lang/Throwable
    //   37	46	156	java/lang/Throwable
    //   49	59	156	java/lang/Throwable
    //   62	72	156	java/lang/Throwable
    //   75	84	156	java/lang/Throwable
    //   87	97	156	java/lang/Throwable
    //   100	106	156	java/lang/Throwable
    //   109	123	156	java/lang/Throwable
    //   126	133	156	java/lang/Throwable
    //   136	142	156	java/lang/Throwable
    //   145	153	156	java/lang/Throwable
    //   0	21	195	finally
    //   24	34	212	finally
    //   37	46	212	finally
    //   49	59	212	finally
    //   62	72	212	finally
    //   75	84	212	finally
    //   87	97	212	finally
    //   100	106	212	finally
    //   109	123	212	finally
    //   126	133	212	finally
    //   136	142	212	finally
    //   145	153	212	finally
    //   161	169	212	finally
    //   0	21	217	java/lang/Throwable
  }

  // ERROR //
  private void h()
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 53	com/tencent/wxop/stat/ai:e	Lcom/tencent/wxop/stat/d;
    //   4: invokevirtual 303	com/tencent/wxop/stat/d:getReadableDatabase	()Landroid/database/sqlite/SQLiteDatabase;
    //   7: ldc_w 537
    //   10: aconst_null
    //   11: aconst_null
    //   12: aconst_null
    //   13: aconst_null
    //   14: aconst_null
    //   15: aconst_null
    //   16: invokevirtual 311	android/database/sqlite/SQLiteDatabase:query	(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   19: astore_2
    //   20: aload_2
    //   21: astore_1
    //   22: aload_2
    //   23: invokeinterface 316 1 0
    //   28: ifeq +51 -> 79
    //   31: aload_2
    //   32: astore_1
    //   33: aload_0
    //   34: getfield 78	com/tencent/wxop/stat/ai:n	Ljava/util/HashMap;
    //   37: aload_2
    //   38: iconst_0
    //   39: invokeinterface 485 2 0
    //   44: aload_2
    //   45: iconst_1
    //   46: invokeinterface 485 2 0
    //   51: invokevirtual 538	java/util/HashMap:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   54: pop
    //   55: goto -35 -> 20
    //   58: astore_3
    //   59: aload_2
    //   60: astore_1
    //   61: getstatic 40	com/tencent/wxop/stat/ai:d	Lcom/tencent/wxop/stat/b/b;
    //   64: aload_3
    //   65: invokevirtual 131	com/tencent/wxop/stat/b/b:b	(Ljava/lang/Throwable;)V
    //   68: aload_2
    //   69: ifnull +9 -> 78
    //   72: aload_2
    //   73: invokeinterface 351 1 0
    //   78: return
    //   79: aload_2
    //   80: ifnull -2 -> 78
    //   83: aload_2
    //   84: invokeinterface 351 1 0
    //   89: return
    //   90: astore_2
    //   91: aconst_null
    //   92: astore_1
    //   93: aload_1
    //   94: ifnull +9 -> 103
    //   97: aload_1
    //   98: invokeinterface 351 1 0
    //   103: aload_2
    //   104: athrow
    //   105: astore_2
    //   106: goto -13 -> 93
    //   109: astore_3
    //   110: aconst_null
    //   111: astore_2
    //   112: goto -53 -> 59
    //
    // Exception table:
    //   from	to	target	type
    //   22	31	58	java/lang/Throwable
    //   33	55	58	java/lang/Throwable
    //   0	20	90	finally
    //   22	31	105	finally
    //   33	55	105	finally
    //   61	68	105	finally
    //   0	20	109	java/lang/Throwable
  }

  final void a(int paramInt)
  {
    this.a.a(new c(this, paramInt));
  }

  final void a(com.tencent.wxop.stat.a.d paramd, k paramk, boolean paramBoolean1, boolean paramBoolean2)
  {
    if (this.a != null)
      this.a.a(new am(this, paramd, paramk, paramBoolean1, paramBoolean2));
  }

  // ERROR //
  public final com.tencent.wxop.stat.b.c b(Context paramContext)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 67	com/tencent/wxop/stat/ai:c	Lcom/tencent/wxop/stat/b/c;
    //   6: ifnull +12 -> 18
    //   9: aload_0
    //   10: getfield 67	com/tencent/wxop/stat/ai:c	Lcom/tencent/wxop/stat/b/c;
    //   13: astore_1
    //   14: aload_0
    //   15: monitorexit
    //   16: aload_1
    //   17: areturn
    //   18: aload_0
    //   19: getfield 53	com/tencent/wxop/stat/ai:e	Lcom/tencent/wxop/stat/d;
    //   22: invokevirtual 325	com/tencent/wxop/stat/d:getWritableDatabase	()Landroid/database/sqlite/SQLiteDatabase;
    //   25: invokevirtual 328	android/database/sqlite/SQLiteDatabase:beginTransaction	()V
    //   28: invokestatic 184	com/tencent/wxop/stat/t:b	()Z
    //   31: ifeq +12 -> 43
    //   34: getstatic 40	com/tencent/wxop/stat/ai:d	Lcom/tencent/wxop/stat/b/b;
    //   37: ldc_w 552
    //   40: invokevirtual 194	com/tencent/wxop/stat/b/b:a	(Ljava/lang/Object;)V
    //   43: aload_0
    //   44: getfield 53	com/tencent/wxop/stat/ai:e	Lcom/tencent/wxop/stat/d;
    //   47: invokevirtual 303	com/tencent/wxop/stat/d:getReadableDatabase	()Landroid/database/sqlite/SQLiteDatabase;
    //   50: ldc_w 554
    //   53: aconst_null
    //   54: aconst_null
    //   55: aconst_null
    //   56: aconst_null
    //   57: aconst_null
    //   58: aconst_null
    //   59: aconst_null
    //   60: invokevirtual 478	android/database/sqlite/SQLiteDatabase:query	(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   63: astore 11
    //   65: iconst_0
    //   66: istore_2
    //   67: aload 11
    //   69: invokeinterface 316 1 0
    //   74: ifeq +365 -> 439
    //   77: aload 11
    //   79: iconst_0
    //   80: invokeinterface 485 2 0
    //   85: astore 16
    //   87: aload 16
    //   89: invokestatic 488	com/tencent/wxop/stat/b/r:a	(Ljava/lang/String;)Ljava/lang/String;
    //   92: astore 12
    //   94: aload 11
    //   96: iconst_1
    //   97: invokeinterface 320 2 0
    //   102: istore 5
    //   104: aload 11
    //   106: iconst_2
    //   107: invokeinterface 485 2 0
    //   112: astore 10
    //   114: aload 11
    //   116: iconst_3
    //   117: invokeinterface 482 2 0
    //   122: lstore 6
    //   124: invokestatic 559	java/lang/System:currentTimeMillis	()J
    //   127: ldc2_w 560
    //   130: ldiv
    //   131: lstore 8
    //   133: iload 5
    //   135: iconst_1
    //   136: if_icmpeq +754 -> 890
    //   139: lload 6
    //   141: ldc2_w 560
    //   144: lmul
    //   145: invokestatic 563	com/tencent/wxop/stat/b/l:a	(J)Ljava/lang/String;
    //   148: ldc2_w 560
    //   151: lload 8
    //   153: lmul
    //   154: invokestatic 563	com/tencent/wxop/stat/b/l:a	(J)Ljava/lang/String;
    //   157: invokevirtual 566	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   160: ifne +730 -> 890
    //   163: iconst_1
    //   164: istore_2
    //   165: aload 10
    //   167: aload_1
    //   168: invokestatic 568	com/tencent/wxop/stat/b/l:l	(Landroid/content/Context;)Ljava/lang/String;
    //   171: invokevirtual 566	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   174: ifne +711 -> 885
    //   177: iload_2
    //   178: iconst_2
    //   179: ior
    //   180: istore_3
    //   181: aload 12
    //   183: ldc 171
    //   185: invokevirtual 572	java/lang/String:split	(Ljava/lang/String;)[Ljava/lang/String;
    //   188: astore 14
    //   190: iconst_0
    //   191: istore 4
    //   193: iconst_0
    //   194: istore_2
    //   195: aload 14
    //   197: ifnull +441 -> 638
    //   200: aload 14
    //   202: arraylength
    //   203: ifle +435 -> 638
    //   206: aload 14
    //   208: iconst_0
    //   209: aaload
    //   210: astore 10
    //   212: aload 10
    //   214: ifnull +13 -> 227
    //   217: aload 10
    //   219: invokevirtual 575	java/lang/String:length	()I
    //   222: bipush 11
    //   224: if_icmpge +646 -> 870
    //   227: aload_1
    //   228: invokestatic 577	com/tencent/wxop/stat/b/r:a	(Landroid/content/Context;)Ljava/lang/String;
    //   231: astore 13
    //   233: aload 13
    //   235: ifnull +629 -> 864
    //   238: aload 13
    //   240: invokevirtual 575	java/lang/String:length	()I
    //   243: bipush 10
    //   245: if_icmple +619 -> 864
    //   248: iconst_1
    //   249: istore_2
    //   250: aload 13
    //   252: astore 10
    //   254: goto +642 -> 896
    //   257: aload 14
    //   259: ifnull +394 -> 653
    //   262: aload 14
    //   264: arraylength
    //   265: iconst_2
    //   266: if_icmplt +387 -> 653
    //   269: aload 14
    //   271: iconst_1
    //   272: aaload
    //   273: astore 14
    //   275: new 96	java/lang/StringBuilder
    //   278: dup
    //   279: invokespecial 578	java/lang/StringBuilder:<init>	()V
    //   282: aload 12
    //   284: invokevirtual 105	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   287: ldc 171
    //   289: invokevirtual 105	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   292: aload 14
    //   294: invokevirtual 105	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   297: invokevirtual 109	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   300: astore 13
    //   302: iload_2
    //   303: istore 4
    //   305: aload_0
    //   306: new 580	com/tencent/wxop/stat/b/c
    //   309: dup
    //   310: aload 12
    //   312: aload 14
    //   314: iload_3
    //   315: invokespecial 583	com/tencent/wxop/stat/b/c:<init>	(Ljava/lang/String;Ljava/lang/String;I)V
    //   318: putfield 67	com/tencent/wxop/stat/ai:c	Lcom/tencent/wxop/stat/b/c;
    //   321: new 275	android/content/ContentValues
    //   324: dup
    //   325: invokespecial 276	android/content/ContentValues:<init>	()V
    //   328: astore 10
    //   330: aload 10
    //   332: ldc_w 585
    //   335: aload 13
    //   337: invokestatic 438	com/tencent/wxop/stat/b/r:b	(Ljava/lang/String;)Ljava/lang/String;
    //   340: invokevirtual 282	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   343: aload 10
    //   345: ldc_w 587
    //   348: iload_3
    //   349: invokestatic 296	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   352: invokevirtual 299	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/Integer;)V
    //   355: aload 10
    //   357: ldc_w 589
    //   360: aload_1
    //   361: invokestatic 568	com/tencent/wxop/stat/b/l:l	(Landroid/content/Context;)Ljava/lang/String;
    //   364: invokevirtual 282	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   367: aload 10
    //   369: ldc_w 591
    //   372: lload 8
    //   374: invokestatic 450	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   377: invokevirtual 453	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/Long;)V
    //   380: iload 4
    //   382: ifeq +31 -> 413
    //   385: aload_0
    //   386: getfield 53	com/tencent/wxop/stat/ai:e	Lcom/tencent/wxop/stat/d;
    //   389: invokevirtual 325	com/tencent/wxop/stat/d:getWritableDatabase	()Landroid/database/sqlite/SQLiteDatabase;
    //   392: ldc_w 554
    //   395: aload 10
    //   397: ldc_w 593
    //   400: iconst_1
    //   401: anewarray 332	java/lang/String
    //   404: dup
    //   405: iconst_0
    //   406: aload 16
    //   408: aastore
    //   409: invokevirtual 339	android/database/sqlite/SQLiteDatabase:update	(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    //   412: pop
    //   413: iload_3
    //   414: iload 5
    //   416: if_icmpeq +495 -> 911
    //   419: aload_0
    //   420: getfield 53	com/tencent/wxop/stat/ai:e	Lcom/tencent/wxop/stat/d;
    //   423: invokevirtual 325	com/tencent/wxop/stat/d:getWritableDatabase	()Landroid/database/sqlite/SQLiteDatabase;
    //   426: ldc_w 554
    //   429: aconst_null
    //   430: aload 10
    //   432: invokevirtual 596	android/database/sqlite/SQLiteDatabase:replace	(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    //   435: pop2
    //   436: goto +475 -> 911
    //   439: iload_2
    //   440: ifne +158 -> 598
    //   443: aload_1
    //   444: invokestatic 598	com/tencent/wxop/stat/b/l:b	(Landroid/content/Context;)Ljava/lang/String;
    //   447: astore 12
    //   449: aload_1
    //   450: invokestatic 600	com/tencent/wxop/stat/b/l:c	(Landroid/content/Context;)Ljava/lang/String;
    //   453: astore 13
    //   455: aload 13
    //   457: ifnull +400 -> 857
    //   460: aload 13
    //   462: invokevirtual 575	java/lang/String:length	()I
    //   465: ifle +392 -> 857
    //   468: new 96	java/lang/StringBuilder
    //   471: dup
    //   472: invokespecial 578	java/lang/StringBuilder:<init>	()V
    //   475: aload 12
    //   477: invokevirtual 105	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   480: ldc 171
    //   482: invokevirtual 105	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   485: aload 13
    //   487: invokevirtual 105	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   490: invokevirtual 109	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   493: astore 10
    //   495: invokestatic 559	java/lang/System:currentTimeMillis	()J
    //   498: ldc2_w 560
    //   501: ldiv
    //   502: lstore 6
    //   504: aload_1
    //   505: invokestatic 568	com/tencent/wxop/stat/b/l:l	(Landroid/content/Context;)Ljava/lang/String;
    //   508: astore_1
    //   509: new 275	android/content/ContentValues
    //   512: dup
    //   513: invokespecial 276	android/content/ContentValues:<init>	()V
    //   516: astore 14
    //   518: aload 14
    //   520: ldc_w 585
    //   523: aload 10
    //   525: invokestatic 438	com/tencent/wxop/stat/b/r:b	(Ljava/lang/String;)Ljava/lang/String;
    //   528: invokevirtual 282	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   531: aload 14
    //   533: ldc_w 587
    //   536: iconst_0
    //   537: invokestatic 296	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   540: invokevirtual 299	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/Integer;)V
    //   543: aload 14
    //   545: ldc_w 589
    //   548: aload_1
    //   549: invokevirtual 282	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   552: aload 14
    //   554: ldc_w 591
    //   557: lload 6
    //   559: invokestatic 450	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   562: invokevirtual 453	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/Long;)V
    //   565: aload_0
    //   566: getfield 53	com/tencent/wxop/stat/ai:e	Lcom/tencent/wxop/stat/d;
    //   569: invokevirtual 325	com/tencent/wxop/stat/d:getWritableDatabase	()Landroid/database/sqlite/SQLiteDatabase;
    //   572: ldc_w 554
    //   575: aconst_null
    //   576: aload 14
    //   578: invokevirtual 360	android/database/sqlite/SQLiteDatabase:insert	(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    //   581: pop2
    //   582: aload_0
    //   583: new 580	com/tencent/wxop/stat/b/c
    //   586: dup
    //   587: aload 12
    //   589: aload 13
    //   591: iconst_0
    //   592: invokespecial 583	com/tencent/wxop/stat/b/c:<init>	(Ljava/lang/String;Ljava/lang/String;I)V
    //   595: putfield 67	com/tencent/wxop/stat/ai:c	Lcom/tencent/wxop/stat/b/c;
    //   598: aload_0
    //   599: getfield 53	com/tencent/wxop/stat/ai:e	Lcom/tencent/wxop/stat/d;
    //   602: invokevirtual 325	com/tencent/wxop/stat/d:getWritableDatabase	()Landroid/database/sqlite/SQLiteDatabase;
    //   605: invokevirtual 348	android/database/sqlite/SQLiteDatabase:setTransactionSuccessful	()V
    //   608: aload 11
    //   610: ifnull +10 -> 620
    //   613: aload 11
    //   615: invokeinterface 351 1 0
    //   620: aload_0
    //   621: getfield 53	com/tencent/wxop/stat/ai:e	Lcom/tencent/wxop/stat/d;
    //   624: invokevirtual 325	com/tencent/wxop/stat/d:getWritableDatabase	()Landroid/database/sqlite/SQLiteDatabase;
    //   627: invokevirtual 354	android/database/sqlite/SQLiteDatabase:endTransaction	()V
    //   630: aload_0
    //   631: getfield 67	com/tencent/wxop/stat/ai:c	Lcom/tencent/wxop/stat/b/c;
    //   634: astore_1
    //   635: goto -621 -> 14
    //   638: aload_1
    //   639: invokestatic 598	com/tencent/wxop/stat/b/l:b	(Landroid/content/Context;)Ljava/lang/String;
    //   642: astore 10
    //   644: iconst_1
    //   645: istore_2
    //   646: aload 10
    //   648: astore 12
    //   650: goto -393 -> 257
    //   653: aload_1
    //   654: invokestatic 600	com/tencent/wxop/stat/b/l:c	(Landroid/content/Context;)Ljava/lang/String;
    //   657: astore 15
    //   659: iload_2
    //   660: istore 4
    //   662: aload 15
    //   664: astore 14
    //   666: aload 10
    //   668: astore 13
    //   670: aload 15
    //   672: ifnull -367 -> 305
    //   675: iload_2
    //   676: istore 4
    //   678: aload 15
    //   680: astore 14
    //   682: aload 10
    //   684: astore 13
    //   686: aload 15
    //   688: invokevirtual 575	java/lang/String:length	()I
    //   691: ifle -386 -> 305
    //   694: new 96	java/lang/StringBuilder
    //   697: dup
    //   698: invokespecial 578	java/lang/StringBuilder:<init>	()V
    //   701: aload 12
    //   703: invokevirtual 105	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   706: ldc 171
    //   708: invokevirtual 105	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   711: aload 15
    //   713: invokevirtual 105	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   716: invokevirtual 109	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   719: astore 13
    //   721: iconst_1
    //   722: istore 4
    //   724: aload 15
    //   726: astore 14
    //   728: goto -423 -> 305
    //   731: astore_1
    //   732: getstatic 40	com/tencent/wxop/stat/ai:d	Lcom/tencent/wxop/stat/b/b;
    //   735: aload_1
    //   736: invokevirtual 131	com/tencent/wxop/stat/b/b:b	(Ljava/lang/Throwable;)V
    //   739: goto -109 -> 630
    //   742: astore_1
    //   743: aload_0
    //   744: monitorexit
    //   745: aload_1
    //   746: athrow
    //   747: astore 10
    //   749: aconst_null
    //   750: astore_1
    //   751: getstatic 40	com/tencent/wxop/stat/ai:d	Lcom/tencent/wxop/stat/b/b;
    //   754: aload 10
    //   756: invokevirtual 131	com/tencent/wxop/stat/b/b:b	(Ljava/lang/Throwable;)V
    //   759: aload_1
    //   760: ifnull +9 -> 769
    //   763: aload_1
    //   764: invokeinterface 351 1 0
    //   769: aload_0
    //   770: getfield 53	com/tencent/wxop/stat/ai:e	Lcom/tencent/wxop/stat/d;
    //   773: invokevirtual 325	com/tencent/wxop/stat/d:getWritableDatabase	()Landroid/database/sqlite/SQLiteDatabase;
    //   776: invokevirtual 354	android/database/sqlite/SQLiteDatabase:endTransaction	()V
    //   779: goto -149 -> 630
    //   782: astore_1
    //   783: getstatic 40	com/tencent/wxop/stat/ai:d	Lcom/tencent/wxop/stat/b/b;
    //   786: aload_1
    //   787: invokevirtual 131	com/tencent/wxop/stat/b/b:b	(Ljava/lang/Throwable;)V
    //   790: goto -160 -> 630
    //   793: astore_1
    //   794: aconst_null
    //   795: astore 11
    //   797: aload 11
    //   799: ifnull +10 -> 809
    //   802: aload 11
    //   804: invokeinterface 351 1 0
    //   809: aload_0
    //   810: getfield 53	com/tencent/wxop/stat/ai:e	Lcom/tencent/wxop/stat/d;
    //   813: invokevirtual 325	com/tencent/wxop/stat/d:getWritableDatabase	()Landroid/database/sqlite/SQLiteDatabase;
    //   816: invokevirtual 354	android/database/sqlite/SQLiteDatabase:endTransaction	()V
    //   819: aload_1
    //   820: athrow
    //   821: astore 10
    //   823: getstatic 40	com/tencent/wxop/stat/ai:d	Lcom/tencent/wxop/stat/b/b;
    //   826: aload 10
    //   828: invokevirtual 131	com/tencent/wxop/stat/b/b:b	(Ljava/lang/Throwable;)V
    //   831: goto -12 -> 819
    //   834: astore_1
    //   835: goto -38 -> 797
    //   838: astore 10
    //   840: aload_1
    //   841: astore 11
    //   843: aload 10
    //   845: astore_1
    //   846: goto -49 -> 797
    //   849: astore 10
    //   851: aload 11
    //   853: astore_1
    //   854: goto -103 -> 751
    //   857: aload 12
    //   859: astore 10
    //   861: goto -366 -> 495
    //   864: iload 4
    //   866: istore_2
    //   867: goto +29 -> 896
    //   870: aload 10
    //   872: astore 13
    //   874: aload 12
    //   876: astore 10
    //   878: aload 13
    //   880: astore 12
    //   882: goto -625 -> 257
    //   885: iload_2
    //   886: istore_3
    //   887: goto -706 -> 181
    //   890: iload 5
    //   892: istore_2
    //   893: goto -728 -> 165
    //   896: aload 10
    //   898: astore 13
    //   900: aload 12
    //   902: astore 10
    //   904: aload 13
    //   906: astore 12
    //   908: goto -651 -> 257
    //   911: iconst_1
    //   912: istore_2
    //   913: goto -474 -> 439
    //
    // Exception table:
    //   from	to	target	type
    //   613	620	731	java/lang/Throwable
    //   620	630	731	java/lang/Throwable
    //   2	14	742	finally
    //   613	620	742	finally
    //   620	630	742	finally
    //   630	635	742	finally
    //   732	739	742	finally
    //   763	769	742	finally
    //   769	779	742	finally
    //   783	790	742	finally
    //   802	809	742	finally
    //   809	819	742	finally
    //   819	821	742	finally
    //   823	831	742	finally
    //   18	43	747	java/lang/Throwable
    //   43	65	747	java/lang/Throwable
    //   763	769	782	java/lang/Throwable
    //   769	779	782	java/lang/Throwable
    //   18	43	793	finally
    //   43	65	793	finally
    //   802	809	821	java/lang/Throwable
    //   809	819	821	java/lang/Throwable
    //   67	133	834	finally
    //   139	163	834	finally
    //   165	177	834	finally
    //   181	190	834	finally
    //   200	206	834	finally
    //   217	227	834	finally
    //   227	233	834	finally
    //   238	248	834	finally
    //   262	269	834	finally
    //   275	302	834	finally
    //   305	380	834	finally
    //   385	413	834	finally
    //   419	436	834	finally
    //   443	455	834	finally
    //   460	495	834	finally
    //   495	598	834	finally
    //   598	608	834	finally
    //   638	644	834	finally
    //   653	659	834	finally
    //   686	721	834	finally
    //   751	759	838	finally
    //   67	133	849	java/lang/Throwable
    //   139	163	849	java/lang/Throwable
    //   165	177	849	java/lang/Throwable
    //   181	190	849	java/lang/Throwable
    //   200	206	849	java/lang/Throwable
    //   217	227	849	java/lang/Throwable
    //   227	233	849	java/lang/Throwable
    //   238	248	849	java/lang/Throwable
    //   262	269	849	java/lang/Throwable
    //   275	302	849	java/lang/Throwable
    //   305	380	849	java/lang/Throwable
    //   385	413	849	java/lang/Throwable
    //   419	436	849	java/lang/Throwable
    //   443	455	849	java/lang/Throwable
    //   460	495	849	java/lang/Throwable
    //   495	598	849	java/lang/Throwable
    //   598	608	849	java/lang/Throwable
    //   638	644	849	java/lang/Throwable
    //   653	659	849	java/lang/Throwable
    //   686	721	849	java/lang/Throwable
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.tencent.wxop.stat.ai
 * JD-Core Version:    0.6.2
 */