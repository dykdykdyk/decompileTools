package com.baidu.android.pushservice.util;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.os.Environment;
import com.baidu.android.pushservice.h.a;
import com.baidu.android.pushservice.i.k;
import java.io.File;

public class j
{
  private static j.b a = null;
  private static Object b = new Object();

  // ERROR //
  public static long a(Context paramContext, k paramk)
  {
    // Byte code:
    //   0: ldc2_w 22
    //   3: lstore 4
    //   5: ldc 2
    //   7: monitorenter
    //   8: aload_0
    //   9: invokestatic 26	com/baidu/android/pushservice/util/j:a	(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;
    //   12: astore 8
    //   14: aload 8
    //   16: ifnonnull +12 -> 28
    //   19: ldc2_w 22
    //   22: lstore_2
    //   23: ldc 2
    //   25: monitorexit
    //   26: lload_2
    //   27: lreturn
    //   28: new 28	android/content/ContentValues
    //   31: dup
    //   32: invokespecial 29	android/content/ContentValues:<init>	()V
    //   35: astore 9
    //   37: aload 9
    //   39: getstatic 34	com/baidu/android/pushservice/util/j$a:b	Lcom/baidu/android/pushservice/util/j$a;
    //   42: invokevirtual 38	com/baidu/android/pushservice/util/j$a:name	()Ljava/lang/String;
    //   45: aload_1
    //   46: getfield 43	com/baidu/android/pushservice/i/k:a	I
    //   49: invokestatic 49	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   52: invokevirtual 53	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/Integer;)V
    //   55: aload 9
    //   57: getstatic 56	com/baidu/android/pushservice/util/j$a:c	Lcom/baidu/android/pushservice/util/j$a;
    //   60: invokevirtual 38	com/baidu/android/pushservice/util/j$a:name	()Ljava/lang/String;
    //   63: aload_1
    //   64: getfield 58	com/baidu/android/pushservice/i/k:b	I
    //   67: invokestatic 49	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   70: invokevirtual 53	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/Integer;)V
    //   73: aload 9
    //   75: getstatic 61	com/baidu/android/pushservice/util/j$a:d	Lcom/baidu/android/pushservice/util/j$a;
    //   78: invokevirtual 38	com/baidu/android/pushservice/util/j$a:name	()Ljava/lang/String;
    //   81: aload_1
    //   82: getfield 63	com/baidu/android/pushservice/i/k:c	I
    //   85: invokestatic 49	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   88: invokevirtual 53	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/Integer;)V
    //   91: aload 9
    //   93: getstatic 66	com/baidu/android/pushservice/util/j$a:e	Lcom/baidu/android/pushservice/util/j$a;
    //   96: invokevirtual 38	com/baidu/android/pushservice/util/j$a:name	()Ljava/lang/String;
    //   99: aload_1
    //   100: getfield 68	com/baidu/android/pushservice/i/k:d	I
    //   103: invokestatic 49	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   106: invokevirtual 53	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/Integer;)V
    //   109: aload 9
    //   111: getstatic 71	com/baidu/android/pushservice/util/j$a:f	Lcom/baidu/android/pushservice/util/j$a;
    //   114: invokevirtual 38	com/baidu/android/pushservice/util/j$a:name	()Ljava/lang/String;
    //   117: aload_1
    //   118: getfield 74	com/baidu/android/pushservice/i/k:e	J
    //   121: invokestatic 79	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   124: invokevirtual 82	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/Long;)V
    //   127: aload 8
    //   129: ldc 84
    //   131: aconst_null
    //   132: aconst_null
    //   133: aconst_null
    //   134: aconst_null
    //   135: aconst_null
    //   136: aconst_null
    //   137: invokevirtual 90	android/database/sqlite/SQLiteDatabase:query	(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   140: astore 7
    //   142: aload 7
    //   144: ifnull +162 -> 306
    //   147: aload 7
    //   149: astore 6
    //   151: lload 4
    //   153: lstore_2
    //   154: aload 7
    //   156: invokeinterface 96 1 0
    //   161: ifeq +145 -> 306
    //   164: aload 7
    //   166: astore 6
    //   168: lload 4
    //   170: lstore_2
    //   171: aload 8
    //   173: ldc 84
    //   175: aload 9
    //   177: new 98	java/lang/StringBuilder
    //   180: dup
    //   181: invokespecial 99	java/lang/StringBuilder:<init>	()V
    //   184: getstatic 101	com/baidu/android/pushservice/util/j$a:a	Lcom/baidu/android/pushservice/util/j$a;
    //   187: invokevirtual 38	com/baidu/android/pushservice/util/j$a:name	()Ljava/lang/String;
    //   190: invokevirtual 105	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   193: ldc 107
    //   195: invokevirtual 105	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   198: invokevirtual 110	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   201: aconst_null
    //   202: invokevirtual 114	android/database/sqlite/SQLiteDatabase:update	(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    //   205: i2l
    //   206: lstore 4
    //   208: aload 7
    //   210: astore 6
    //   212: lload 4
    //   214: lstore_2
    //   215: ldc 116
    //   217: ldc 118
    //   219: invokestatic 123	com/baidu/android/pushservice/h/a:c	(Ljava/lang/String;Ljava/lang/String;)V
    //   222: aload 7
    //   224: astore 6
    //   226: lload 4
    //   228: lstore_2
    //   229: ldc 118
    //   231: aload_0
    //   232: invokestatic 128	com/baidu/android/pushservice/util/m:a	(Ljava/lang/String;Landroid/content/Context;)V
    //   235: lload 4
    //   237: lstore_2
    //   238: aload 7
    //   240: astore 6
    //   242: new 98	java/lang/StringBuilder
    //   245: dup
    //   246: ldc 130
    //   248: invokespecial 133	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   251: aload_1
    //   252: invokevirtual 136	com/baidu/android/pushservice/i/k:a	()Lorg/json/JSONObject;
    //   255: invokevirtual 139	org/json/JSONObject:toString	()Ljava/lang/String;
    //   258: invokevirtual 105	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   261: invokevirtual 110	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   264: aload_0
    //   265: invokestatic 128	com/baidu/android/pushservice/util/m:a	(Ljava/lang/String;Landroid/content/Context;)V
    //   268: aload 7
    //   270: ifnull +20 -> 290
    //   273: aload 7
    //   275: invokeinterface 143 1 0
    //   280: ifne +10 -> 290
    //   283: aload 7
    //   285: invokeinterface 146 1 0
    //   290: lload_2
    //   291: lstore 4
    //   293: aload 8
    //   295: ifnull +189 -> 484
    //   298: aload 8
    //   300: invokevirtual 147	android/database/sqlite/SQLiteDatabase:close	()V
    //   303: goto -280 -> 23
    //   306: aload 7
    //   308: astore 6
    //   310: lload 4
    //   312: lstore_2
    //   313: aload 8
    //   315: ldc 84
    //   317: aconst_null
    //   318: aload 9
    //   320: invokevirtual 151	android/database/sqlite/SQLiteDatabase:insert	(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    //   323: lstore 4
    //   325: aload 7
    //   327: astore 6
    //   329: lload 4
    //   331: lstore_2
    //   332: ldc 116
    //   334: ldc 153
    //   336: invokestatic 123	com/baidu/android/pushservice/h/a:c	(Ljava/lang/String;Ljava/lang/String;)V
    //   339: aload 7
    //   341: astore 6
    //   343: lload 4
    //   345: lstore_2
    //   346: ldc 153
    //   348: aload_0
    //   349: invokestatic 128	com/baidu/android/pushservice/util/m:a	(Ljava/lang/String;Landroid/content/Context;)V
    //   352: lload 4
    //   354: lstore_2
    //   355: goto -117 -> 238
    //   358: astore_0
    //   359: aconst_null
    //   360: astore 7
    //   362: ldc2_w 22
    //   365: lstore_2
    //   366: aload 7
    //   368: astore 6
    //   370: ldc 116
    //   372: new 98	java/lang/StringBuilder
    //   375: dup
    //   376: ldc 155
    //   378: invokespecial 133	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   381: aload_0
    //   382: invokevirtual 158	java/lang/Exception:getMessage	()Ljava/lang/String;
    //   385: invokevirtual 105	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   388: invokevirtual 110	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   391: invokestatic 123	com/baidu/android/pushservice/h/a:c	(Ljava/lang/String;Ljava/lang/String;)V
    //   394: aload 7
    //   396: ifnull +20 -> 416
    //   399: aload 7
    //   401: invokeinterface 143 1 0
    //   406: ifne +10 -> 416
    //   409: aload 7
    //   411: invokeinterface 146 1 0
    //   416: lload_2
    //   417: lstore 4
    //   419: aload 8
    //   421: ifnull +63 -> 484
    //   424: aload 8
    //   426: invokevirtual 147	android/database/sqlite/SQLiteDatabase:close	()V
    //   429: goto -406 -> 23
    //   432: aload 6
    //   434: ifnull +20 -> 454
    //   437: aload 6
    //   439: invokeinterface 143 1 0
    //   444: ifne +10 -> 454
    //   447: aload 6
    //   449: invokeinterface 146 1 0
    //   454: aload 8
    //   456: ifnull +8 -> 464
    //   459: aload 8
    //   461: invokevirtual 147	android/database/sqlite/SQLiteDatabase:close	()V
    //   464: aload_0
    //   465: athrow
    //   466: astore_0
    //   467: ldc 2
    //   469: monitorexit
    //   470: aload_0
    //   471: athrow
    //   472: astore_0
    //   473: goto -41 -> 432
    //   476: astore_0
    //   477: goto -111 -> 366
    //   480: astore_0
    //   481: goto -115 -> 366
    //   484: lload 4
    //   486: lstore_2
    //   487: goto -464 -> 23
    //   490: astore_0
    //   491: aconst_null
    //   492: astore 6
    //   494: goto -62 -> 432
    //
    // Exception table:
    //   from	to	target	type
    //   127	142	358	java/lang/Exception
    //   8	14	466	finally
    //   28	127	466	finally
    //   273	290	466	finally
    //   298	303	466	finally
    //   399	416	466	finally
    //   424	429	466	finally
    //   437	454	466	finally
    //   459	464	466	finally
    //   464	466	466	finally
    //   154	164	472	finally
    //   171	208	472	finally
    //   215	222	472	finally
    //   229	235	472	finally
    //   242	268	472	finally
    //   313	325	472	finally
    //   332	339	472	finally
    //   346	352	472	finally
    //   370	394	472	finally
    //   154	164	476	java/lang/Exception
    //   171	208	476	java/lang/Exception
    //   215	222	476	java/lang/Exception
    //   229	235	476	java/lang/Exception
    //   313	325	476	java/lang/Exception
    //   332	339	476	java/lang/Exception
    //   346	352	476	java/lang/Exception
    //   242	268	480	java/lang/Exception
    //   127	142	490	finally
  }

  public static SQLiteDatabase a(Context paramContext)
  {
    paramContext = d(paramContext);
    if (paramContext == null)
      return null;
    try
    {
      paramContext = paramContext.getWritableDatabase();
      return paramContext;
    }
    catch (Exception paramContext)
    {
      a.e("PushClientDataBase", "getDb Exception: " + paramContext);
    }
    return null;
  }

  // ERROR //
  public static void a(Context paramContext, int paramInt)
  {
    // Byte code:
    //   0: ldc 2
    //   2: monitorenter
    //   3: aload_0
    //   4: invokestatic 26	com/baidu/android/pushservice/util/j:a	(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;
    //   7: astore 4
    //   9: aload 4
    //   11: ifnonnull +7 -> 18
    //   14: ldc 2
    //   16: monitorexit
    //   17: return
    //   18: aload 4
    //   20: ldc 84
    //   22: aconst_null
    //   23: aconst_null
    //   24: aconst_null
    //   25: aconst_null
    //   26: aconst_null
    //   27: aconst_null
    //   28: invokevirtual 90	android/database/sqlite/SQLiteDatabase:query	(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   31: astore_3
    //   32: aload_3
    //   33: ifnull +132 -> 165
    //   36: aload_3
    //   37: astore_2
    //   38: aload_3
    //   39: invokeinterface 96 1 0
    //   44: ifeq +121 -> 165
    //   47: aload_3
    //   48: astore_2
    //   49: new 98	java/lang/StringBuilder
    //   52: dup
    //   53: ldc 177
    //   55: invokespecial 133	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   58: getstatic 66	com/baidu/android/pushservice/util/j$a:e	Lcom/baidu/android/pushservice/util/j$a;
    //   61: invokevirtual 38	com/baidu/android/pushservice/util/j$a:name	()Ljava/lang/String;
    //   64: invokevirtual 105	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   67: ldc 179
    //   69: invokevirtual 105	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   72: iload_1
    //   73: invokevirtual 182	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   76: ldc 184
    //   78: invokevirtual 105	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   81: getstatic 101	com/baidu/android/pushservice/util/j$a:a	Lcom/baidu/android/pushservice/util/j$a;
    //   84: invokevirtual 172	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   87: ldc 186
    //   89: invokevirtual 105	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   92: invokevirtual 110	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   95: astore_0
    //   96: aload_3
    //   97: astore_2
    //   98: ldc 116
    //   100: new 98	java/lang/StringBuilder
    //   103: dup
    //   104: ldc 188
    //   106: invokespecial 133	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   109: aload_0
    //   110: invokevirtual 105	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   113: invokevirtual 110	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   116: invokestatic 123	com/baidu/android/pushservice/h/a:c	(Ljava/lang/String;Ljava/lang/String;)V
    //   119: aload_3
    //   120: astore_2
    //   121: aload 4
    //   123: aload_0
    //   124: invokevirtual 191	android/database/sqlite/SQLiteDatabase:execSQL	(Ljava/lang/String;)V
    //   127: aload_3
    //   128: ifnull +18 -> 146
    //   131: aload_3
    //   132: invokeinterface 143 1 0
    //   137: ifne +9 -> 146
    //   140: aload_3
    //   141: invokeinterface 146 1 0
    //   146: aload 4
    //   148: ifnull -134 -> 14
    //   151: aload 4
    //   153: invokevirtual 147	android/database/sqlite/SQLiteDatabase:close	()V
    //   156: goto -142 -> 14
    //   159: astore_0
    //   160: ldc 2
    //   162: monitorexit
    //   163: aload_0
    //   164: athrow
    //   165: aload_3
    //   166: astore_2
    //   167: new 40	com/baidu/android/pushservice/i/k
    //   170: dup
    //   171: invokespecial 192	com/baidu/android/pushservice/i/k:<init>	()V
    //   174: astore 5
    //   176: aload_3
    //   177: astore_2
    //   178: aload 5
    //   180: iconst_0
    //   181: putfield 43	com/baidu/android/pushservice/i/k:a	I
    //   184: aload_3
    //   185: astore_2
    //   186: aload 5
    //   188: bipush 10
    //   190: putfield 58	com/baidu/android/pushservice/i/k:b	I
    //   193: aload_3
    //   194: astore_2
    //   195: aload 5
    //   197: bipush 10
    //   199: putfield 63	com/baidu/android/pushservice/i/k:c	I
    //   202: aload_3
    //   203: astore_2
    //   204: aload 5
    //   206: iload_1
    //   207: putfield 68	com/baidu/android/pushservice/i/k:d	I
    //   210: aload_3
    //   211: astore_2
    //   212: aload 5
    //   214: invokestatic 195	com/baidu/android/pushservice/util/m:c	()J
    //   217: putfield 74	com/baidu/android/pushservice/i/k:e	J
    //   220: aload_3
    //   221: astore_2
    //   222: aload_0
    //   223: aload 5
    //   225: invokestatic 197	com/baidu/android/pushservice/util/j:a	(Landroid/content/Context;Lcom/baidu/android/pushservice/i/k;)J
    //   228: pop2
    //   229: goto -102 -> 127
    //   232: astore_0
    //   233: aload_3
    //   234: astore_2
    //   235: ldc 116
    //   237: aload_0
    //   238: invokestatic 200	com/baidu/android/pushservice/h/a:a	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   241: aload_3
    //   242: ifnull +18 -> 260
    //   245: aload_3
    //   246: invokeinterface 143 1 0
    //   251: ifne +9 -> 260
    //   254: aload_3
    //   255: invokeinterface 146 1 0
    //   260: aload 4
    //   262: ifnull -248 -> 14
    //   265: aload 4
    //   267: invokevirtual 147	android/database/sqlite/SQLiteDatabase:close	()V
    //   270: goto -256 -> 14
    //   273: aload_2
    //   274: ifnull +18 -> 292
    //   277: aload_2
    //   278: invokeinterface 143 1 0
    //   283: ifne +9 -> 292
    //   286: aload_2
    //   287: invokeinterface 146 1 0
    //   292: aload 4
    //   294: ifnull +8 -> 302
    //   297: aload 4
    //   299: invokevirtual 147	android/database/sqlite/SQLiteDatabase:close	()V
    //   302: aload_0
    //   303: athrow
    //   304: astore_0
    //   305: goto -32 -> 273
    //   308: astore_0
    //   309: aconst_null
    //   310: astore_3
    //   311: goto -78 -> 233
    //   314: astore_0
    //   315: aconst_null
    //   316: astore_2
    //   317: goto -44 -> 273
    //
    // Exception table:
    //   from	to	target	type
    //   3	9	159	finally
    //   131	146	159	finally
    //   151	156	159	finally
    //   245	260	159	finally
    //   265	270	159	finally
    //   277	292	159	finally
    //   297	302	159	finally
    //   302	304	159	finally
    //   38	47	232	java/lang/Exception
    //   49	96	232	java/lang/Exception
    //   98	119	232	java/lang/Exception
    //   121	127	232	java/lang/Exception
    //   167	176	232	java/lang/Exception
    //   178	184	232	java/lang/Exception
    //   186	193	232	java/lang/Exception
    //   195	202	232	java/lang/Exception
    //   204	210	232	java/lang/Exception
    //   212	220	232	java/lang/Exception
    //   222	229	232	java/lang/Exception
    //   38	47	304	finally
    //   49	96	304	finally
    //   98	119	304	finally
    //   121	127	304	finally
    //   167	176	304	finally
    //   178	184	304	finally
    //   186	193	304	finally
    //   195	202	304	finally
    //   204	210	304	finally
    //   212	220	304	finally
    //   222	229	304	finally
    //   235	241	304	finally
    //   18	32	308	java/lang/Exception
    //   18	32	314	finally
  }

  // ERROR //
  public static void a(Context paramContext, long paramLong)
  {
    // Byte code:
    //   0: ldc 2
    //   2: monitorenter
    //   3: aload_0
    //   4: invokestatic 26	com/baidu/android/pushservice/util/j:a	(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;
    //   7: astore 5
    //   9: aload 5
    //   11: ifnonnull +7 -> 18
    //   14: ldc 2
    //   16: monitorexit
    //   17: return
    //   18: aload 5
    //   20: ldc 84
    //   22: aconst_null
    //   23: aconst_null
    //   24: aconst_null
    //   25: aconst_null
    //   26: aconst_null
    //   27: aconst_null
    //   28: invokevirtual 90	android/database/sqlite/SQLiteDatabase:query	(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   31: astore 4
    //   33: aload 4
    //   35: ifnull +140 -> 175
    //   38: aload 4
    //   40: astore_3
    //   41: aload 4
    //   43: invokeinterface 96 1 0
    //   48: ifeq +127 -> 175
    //   51: aload 4
    //   53: astore_3
    //   54: new 98	java/lang/StringBuilder
    //   57: dup
    //   58: ldc 177
    //   60: invokespecial 133	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   63: getstatic 71	com/baidu/android/pushservice/util/j$a:f	Lcom/baidu/android/pushservice/util/j$a;
    //   66: invokevirtual 38	com/baidu/android/pushservice/util/j$a:name	()Ljava/lang/String;
    //   69: invokevirtual 105	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   72: ldc 179
    //   74: invokevirtual 105	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   77: lload_1
    //   78: invokevirtual 204	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   81: ldc 184
    //   83: invokevirtual 105	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   86: getstatic 101	com/baidu/android/pushservice/util/j$a:a	Lcom/baidu/android/pushservice/util/j$a;
    //   89: invokevirtual 172	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   92: ldc 186
    //   94: invokevirtual 105	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   97: invokevirtual 110	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   100: astore_0
    //   101: aload 4
    //   103: astore_3
    //   104: ldc 116
    //   106: new 98	java/lang/StringBuilder
    //   109: dup
    //   110: ldc 188
    //   112: invokespecial 133	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   115: aload_0
    //   116: invokevirtual 105	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   119: invokevirtual 110	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   122: invokestatic 123	com/baidu/android/pushservice/h/a:c	(Ljava/lang/String;Ljava/lang/String;)V
    //   125: aload 4
    //   127: astore_3
    //   128: aload 5
    //   130: aload_0
    //   131: invokevirtual 191	android/database/sqlite/SQLiteDatabase:execSQL	(Ljava/lang/String;)V
    //   134: aload 4
    //   136: ifnull +20 -> 156
    //   139: aload 4
    //   141: invokeinterface 143 1 0
    //   146: ifne +10 -> 156
    //   149: aload 4
    //   151: invokeinterface 146 1 0
    //   156: aload 5
    //   158: ifnull -144 -> 14
    //   161: aload 5
    //   163: invokevirtual 147	android/database/sqlite/SQLiteDatabase:close	()V
    //   166: goto -152 -> 14
    //   169: astore_0
    //   170: ldc 2
    //   172: monitorexit
    //   173: aload_0
    //   174: athrow
    //   175: aload 4
    //   177: astore_3
    //   178: new 40	com/baidu/android/pushservice/i/k
    //   181: dup
    //   182: invokespecial 192	com/baidu/android/pushservice/i/k:<init>	()V
    //   185: astore 6
    //   187: aload 4
    //   189: astore_3
    //   190: aload 6
    //   192: iconst_0
    //   193: putfield 43	com/baidu/android/pushservice/i/k:a	I
    //   196: aload 4
    //   198: astore_3
    //   199: aload 6
    //   201: bipush 10
    //   203: putfield 58	com/baidu/android/pushservice/i/k:b	I
    //   206: aload 4
    //   208: astore_3
    //   209: aload 6
    //   211: bipush 10
    //   213: putfield 63	com/baidu/android/pushservice/i/k:c	I
    //   216: aload 4
    //   218: astore_3
    //   219: aload 6
    //   221: iconst_0
    //   222: putfield 68	com/baidu/android/pushservice/i/k:d	I
    //   225: aload 4
    //   227: astore_3
    //   228: aload 6
    //   230: lload_1
    //   231: putfield 74	com/baidu/android/pushservice/i/k:e	J
    //   234: aload 4
    //   236: astore_3
    //   237: aload_0
    //   238: aload 6
    //   240: invokestatic 197	com/baidu/android/pushservice/util/j:a	(Landroid/content/Context;Lcom/baidu/android/pushservice/i/k;)J
    //   243: pop2
    //   244: goto -110 -> 134
    //   247: astore_0
    //   248: aload 4
    //   250: astore_3
    //   251: ldc 116
    //   253: aload_0
    //   254: invokestatic 200	com/baidu/android/pushservice/h/a:a	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   257: aload 4
    //   259: ifnull +20 -> 279
    //   262: aload 4
    //   264: invokeinterface 143 1 0
    //   269: ifne +10 -> 279
    //   272: aload 4
    //   274: invokeinterface 146 1 0
    //   279: aload 5
    //   281: ifnull -267 -> 14
    //   284: aload 5
    //   286: invokevirtual 147	android/database/sqlite/SQLiteDatabase:close	()V
    //   289: goto -275 -> 14
    //   292: aload_3
    //   293: ifnull +18 -> 311
    //   296: aload_3
    //   297: invokeinterface 143 1 0
    //   302: ifne +9 -> 311
    //   305: aload_3
    //   306: invokeinterface 146 1 0
    //   311: aload 5
    //   313: ifnull +8 -> 321
    //   316: aload 5
    //   318: invokevirtual 147	android/database/sqlite/SQLiteDatabase:close	()V
    //   321: aload_0
    //   322: athrow
    //   323: astore_0
    //   324: goto -32 -> 292
    //   327: astore_0
    //   328: aconst_null
    //   329: astore 4
    //   331: goto -83 -> 248
    //   334: astore_0
    //   335: aconst_null
    //   336: astore_3
    //   337: goto -45 -> 292
    //
    // Exception table:
    //   from	to	target	type
    //   3	9	169	finally
    //   139	156	169	finally
    //   161	166	169	finally
    //   262	279	169	finally
    //   284	289	169	finally
    //   296	311	169	finally
    //   316	321	169	finally
    //   321	323	169	finally
    //   41	51	247	java/lang/Exception
    //   54	101	247	java/lang/Exception
    //   104	125	247	java/lang/Exception
    //   128	134	247	java/lang/Exception
    //   178	187	247	java/lang/Exception
    //   190	196	247	java/lang/Exception
    //   199	206	247	java/lang/Exception
    //   209	216	247	java/lang/Exception
    //   219	225	247	java/lang/Exception
    //   228	234	247	java/lang/Exception
    //   237	244	247	java/lang/Exception
    //   41	51	323	finally
    //   54	101	323	finally
    //   104	125	323	finally
    //   128	134	323	finally
    //   178	187	323	finally
    //   190	196	323	finally
    //   199	206	323	finally
    //   209	216	323	finally
    //   219	225	323	finally
    //   228	234	323	finally
    //   237	244	323	finally
    //   251	257	323	finally
    //   18	33	327	java/lang/Exception
    //   18	33	334	finally
  }

  // ERROR //
  public static void a(Context paramContext, boolean paramBoolean)
  {
    // Byte code:
    //   0: ldc 2
    //   2: monitorenter
    //   3: aload_0
    //   4: invokestatic 26	com/baidu/android/pushservice/util/j:a	(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;
    //   7: astore 5
    //   9: aload 5
    //   11: ifnonnull +7 -> 18
    //   14: ldc 2
    //   16: monitorexit
    //   17: return
    //   18: aload 5
    //   20: ldc 84
    //   22: aconst_null
    //   23: aconst_null
    //   24: aconst_null
    //   25: aconst_null
    //   26: aconst_null
    //   27: aconst_null
    //   28: invokevirtual 90	android/database/sqlite/SQLiteDatabase:query	(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   31: astore 4
    //   33: aload 4
    //   35: ifnull +187 -> 222
    //   38: aload 4
    //   40: astore_3
    //   41: aload 4
    //   43: invokeinterface 96 1 0
    //   48: ifeq +174 -> 222
    //   51: iload_1
    //   52: ifeq +165 -> 217
    //   55: iconst_0
    //   56: istore_2
    //   57: aload 4
    //   59: astore_3
    //   60: new 98	java/lang/StringBuilder
    //   63: dup
    //   64: ldc 177
    //   66: invokespecial 133	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   69: getstatic 34	com/baidu/android/pushservice/util/j$a:b	Lcom/baidu/android/pushservice/util/j$a;
    //   72: invokevirtual 38	com/baidu/android/pushservice/util/j$a:name	()Ljava/lang/String;
    //   75: invokevirtual 105	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   78: ldc 179
    //   80: invokevirtual 105	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   83: iload_2
    //   84: invokevirtual 182	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   87: ldc 184
    //   89: invokevirtual 105	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   92: getstatic 101	com/baidu/android/pushservice/util/j$a:a	Lcom/baidu/android/pushservice/util/j$a;
    //   95: invokevirtual 172	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   98: ldc 186
    //   100: invokevirtual 105	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   103: invokevirtual 110	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   106: astore 6
    //   108: aload 4
    //   110: astore_3
    //   111: ldc 116
    //   113: new 98	java/lang/StringBuilder
    //   116: dup
    //   117: ldc 188
    //   119: invokespecial 133	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   122: aload 6
    //   124: invokevirtual 105	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   127: invokevirtual 110	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   130: invokestatic 123	com/baidu/android/pushservice/h/a:c	(Ljava/lang/String;Ljava/lang/String;)V
    //   133: aload 4
    //   135: astore_3
    //   136: new 98	java/lang/StringBuilder
    //   139: dup
    //   140: ldc 207
    //   142: invokespecial 133	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   145: iload_2
    //   146: invokevirtual 182	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   149: ldc 209
    //   151: invokevirtual 105	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   154: aload 6
    //   156: invokevirtual 105	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   159: invokevirtual 110	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   162: aload_0
    //   163: invokestatic 128	com/baidu/android/pushservice/util/m:a	(Ljava/lang/String;Landroid/content/Context;)V
    //   166: aload 4
    //   168: astore_3
    //   169: aload 5
    //   171: aload 6
    //   173: invokevirtual 191	android/database/sqlite/SQLiteDatabase:execSQL	(Ljava/lang/String;)V
    //   176: aload 4
    //   178: ifnull +20 -> 198
    //   181: aload 4
    //   183: invokeinterface 143 1 0
    //   188: ifne +10 -> 198
    //   191: aload 4
    //   193: invokeinterface 146 1 0
    //   198: aload 5
    //   200: ifnull -186 -> 14
    //   203: aload 5
    //   205: invokevirtual 147	android/database/sqlite/SQLiteDatabase:close	()V
    //   208: goto -194 -> 14
    //   211: astore_0
    //   212: ldc 2
    //   214: monitorexit
    //   215: aload_0
    //   216: athrow
    //   217: iconst_1
    //   218: istore_2
    //   219: goto -162 -> 57
    //   222: aload 4
    //   224: astore_3
    //   225: new 40	com/baidu/android/pushservice/i/k
    //   228: dup
    //   229: invokespecial 192	com/baidu/android/pushservice/i/k:<init>	()V
    //   232: astore 6
    //   234: aload 4
    //   236: astore_3
    //   237: aload 6
    //   239: iconst_0
    //   240: putfield 43	com/baidu/android/pushservice/i/k:a	I
    //   243: aload 4
    //   245: astore_3
    //   246: aload 6
    //   248: bipush 10
    //   250: putfield 58	com/baidu/android/pushservice/i/k:b	I
    //   253: aload 4
    //   255: astore_3
    //   256: aload 6
    //   258: bipush 10
    //   260: putfield 63	com/baidu/android/pushservice/i/k:c	I
    //   263: aload 4
    //   265: astore_3
    //   266: aload 6
    //   268: iconst_0
    //   269: putfield 68	com/baidu/android/pushservice/i/k:d	I
    //   272: aload 4
    //   274: astore_3
    //   275: aload 6
    //   277: invokestatic 195	com/baidu/android/pushservice/util/m:c	()J
    //   280: putfield 74	com/baidu/android/pushservice/i/k:e	J
    //   283: aload 4
    //   285: astore_3
    //   286: aload_0
    //   287: aload 6
    //   289: invokestatic 197	com/baidu/android/pushservice/util/j:a	(Landroid/content/Context;Lcom/baidu/android/pushservice/i/k;)J
    //   292: pop2
    //   293: goto -117 -> 176
    //   296: astore_0
    //   297: aload 4
    //   299: astore_3
    //   300: ldc 116
    //   302: aload_0
    //   303: invokestatic 200	com/baidu/android/pushservice/h/a:a	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   306: aload 4
    //   308: ifnull +20 -> 328
    //   311: aload 4
    //   313: invokeinterface 143 1 0
    //   318: ifne +10 -> 328
    //   321: aload 4
    //   323: invokeinterface 146 1 0
    //   328: aload 5
    //   330: ifnull -316 -> 14
    //   333: aload 5
    //   335: invokevirtual 147	android/database/sqlite/SQLiteDatabase:close	()V
    //   338: goto -324 -> 14
    //   341: aload_3
    //   342: ifnull +18 -> 360
    //   345: aload_3
    //   346: invokeinterface 143 1 0
    //   351: ifne +9 -> 360
    //   354: aload_3
    //   355: invokeinterface 146 1 0
    //   360: aload 5
    //   362: ifnull +8 -> 370
    //   365: aload 5
    //   367: invokevirtual 147	android/database/sqlite/SQLiteDatabase:close	()V
    //   370: aload_0
    //   371: athrow
    //   372: astore_0
    //   373: goto -32 -> 341
    //   376: astore_0
    //   377: aconst_null
    //   378: astore 4
    //   380: goto -83 -> 297
    //   383: astore_0
    //   384: aconst_null
    //   385: astore_3
    //   386: goto -45 -> 341
    //
    // Exception table:
    //   from	to	target	type
    //   3	9	211	finally
    //   181	198	211	finally
    //   203	208	211	finally
    //   311	328	211	finally
    //   333	338	211	finally
    //   345	360	211	finally
    //   365	370	211	finally
    //   370	372	211	finally
    //   41	51	296	java/lang/Exception
    //   60	108	296	java/lang/Exception
    //   111	133	296	java/lang/Exception
    //   136	166	296	java/lang/Exception
    //   169	176	296	java/lang/Exception
    //   225	234	296	java/lang/Exception
    //   237	243	296	java/lang/Exception
    //   246	253	296	java/lang/Exception
    //   256	263	296	java/lang/Exception
    //   266	272	296	java/lang/Exception
    //   275	283	296	java/lang/Exception
    //   286	293	296	java/lang/Exception
    //   41	51	372	finally
    //   60	108	372	finally
    //   111	133	372	finally
    //   136	166	372	finally
    //   169	176	372	finally
    //   225	234	372	finally
    //   237	243	372	finally
    //   246	253	372	finally
    //   256	263	372	finally
    //   266	272	372	finally
    //   275	283	372	finally
    //   286	293	372	finally
    //   300	306	372	finally
    //   18	33	376	java/lang/Exception
    //   18	33	383	finally
  }

  public static void b(Context paramContext)
  {
    try
    {
      k localk = new k();
      localk.a = 0;
      localk.b = 10;
      localk.c = 10;
      localk.d = 0;
      localk.e = System.currentTimeMillis();
      a(paramContext, localk);
      a.c("PushClientDataBase", "initPushClientDataBase with initValue");
      m.a("initPushClientDataBase with initValue", paramContext);
      return;
    }
    catch (Exception paramContext)
    {
      while (true)
        a.a("PushClientDataBase", paramContext);
    }
    finally
    {
    }
    throw paramContext;
  }

  // ERROR //
  public static com.baidu.android.pushservice.i.l c(Context paramContext)
  {
    // Byte code:
    //   0: ldc 2
    //   2: monitorenter
    //   3: aload_0
    //   4: invokestatic 26	com/baidu/android/pushservice/util/j:a	(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;
    //   7: astore_1
    //   8: aload_1
    //   9: ifnonnull +10 -> 19
    //   12: aconst_null
    //   13: astore_0
    //   14: ldc 2
    //   16: monitorexit
    //   17: aload_0
    //   18: areturn
    //   19: new 220	com/baidu/android/pushservice/i/l
    //   22: dup
    //   23: invokespecial 221	com/baidu/android/pushservice/i/l:<init>	()V
    //   26: astore_0
    //   27: aload_1
    //   28: ldc 84
    //   30: aconst_null
    //   31: aconst_null
    //   32: aconst_null
    //   33: aconst_null
    //   34: aconst_null
    //   35: aconst_null
    //   36: invokevirtual 90	android/database/sqlite/SQLiteDatabase:query	(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   39: astore_2
    //   40: aload_2
    //   41: invokeinterface 224 1 0
    //   46: ifeq +113 -> 159
    //   49: aload_0
    //   50: aload_2
    //   51: aload_2
    //   52: getstatic 34	com/baidu/android/pushservice/util/j$a:b	Lcom/baidu/android/pushservice/util/j$a;
    //   55: invokevirtual 38	com/baidu/android/pushservice/util/j$a:name	()Ljava/lang/String;
    //   58: invokeinterface 228 2 0
    //   63: invokeinterface 232 2 0
    //   68: invokevirtual 235	com/baidu/android/pushservice/i/l:a	(I)V
    //   71: aload_0
    //   72: aload_2
    //   73: aload_2
    //   74: getstatic 56	com/baidu/android/pushservice/util/j$a:c	Lcom/baidu/android/pushservice/util/j$a;
    //   77: invokevirtual 38	com/baidu/android/pushservice/util/j$a:name	()Ljava/lang/String;
    //   80: invokeinterface 228 2 0
    //   85: invokeinterface 232 2 0
    //   90: invokevirtual 237	com/baidu/android/pushservice/i/l:b	(I)V
    //   93: aload_0
    //   94: aload_2
    //   95: aload_2
    //   96: getstatic 61	com/baidu/android/pushservice/util/j$a:d	Lcom/baidu/android/pushservice/util/j$a;
    //   99: invokevirtual 38	com/baidu/android/pushservice/util/j$a:name	()Ljava/lang/String;
    //   102: invokeinterface 228 2 0
    //   107: invokeinterface 232 2 0
    //   112: invokevirtual 239	com/baidu/android/pushservice/i/l:c	(I)V
    //   115: aload_0
    //   116: aload_2
    //   117: aload_2
    //   118: getstatic 66	com/baidu/android/pushservice/util/j$a:e	Lcom/baidu/android/pushservice/util/j$a;
    //   121: invokevirtual 38	com/baidu/android/pushservice/util/j$a:name	()Ljava/lang/String;
    //   124: invokeinterface 228 2 0
    //   129: invokeinterface 232 2 0
    //   134: invokevirtual 241	com/baidu/android/pushservice/i/l:d	(I)V
    //   137: aload_0
    //   138: aload_2
    //   139: aload_2
    //   140: getstatic 71	com/baidu/android/pushservice/util/j$a:f	Lcom/baidu/android/pushservice/util/j$a;
    //   143: invokevirtual 38	com/baidu/android/pushservice/util/j$a:name	()Ljava/lang/String;
    //   146: invokeinterface 228 2 0
    //   151: invokeinterface 245 2 0
    //   156: invokevirtual 248	com/baidu/android/pushservice/i/l:a	(J)V
    //   159: aload_1
    //   160: ifnull +7 -> 167
    //   163: aload_1
    //   164: invokevirtual 147	android/database/sqlite/SQLiteDatabase:close	()V
    //   167: goto -153 -> 14
    //   170: astore_2
    //   171: ldc 116
    //   173: new 98	java/lang/StringBuilder
    //   176: dup
    //   177: ldc 155
    //   179: invokespecial 133	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   182: aload_2
    //   183: invokevirtual 158	java/lang/Exception:getMessage	()Ljava/lang/String;
    //   186: invokevirtual 105	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   189: invokevirtual 110	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   192: invokestatic 123	com/baidu/android/pushservice/h/a:c	(Ljava/lang/String;Ljava/lang/String;)V
    //   195: aload_1
    //   196: ifnull -29 -> 167
    //   199: aload_1
    //   200: invokevirtual 147	android/database/sqlite/SQLiteDatabase:close	()V
    //   203: goto -36 -> 167
    //   206: astore_0
    //   207: ldc 2
    //   209: monitorexit
    //   210: aload_0
    //   211: athrow
    //   212: astore_0
    //   213: aload_1
    //   214: ifnull +7 -> 221
    //   217: aload_1
    //   218: invokevirtual 147	android/database/sqlite/SQLiteDatabase:close	()V
    //   221: aload_0
    //   222: athrow
    //
    // Exception table:
    //   from	to	target	type
    //   27	159	170	java/lang/Exception
    //   3	8	206	finally
    //   19	27	206	finally
    //   163	167	206	finally
    //   199	203	206	finally
    //   217	221	206	finally
    //   221	223	206	finally
    //   27	159	212	finally
    //   171	195	212	finally
  }

  private static j.b d(Context paramContext)
  {
    synchronized (b)
    {
      if (a == null)
      {
        Object localObject2 = new File(Environment.getDataDirectory().getAbsolutePath() + "/data" + File.separator + paramContext.getPackageName() + "/database");
        a.c("PushClientDataBase", "File Path is  " + Environment.getDataDirectory().getAbsolutePath() + "/data" + File.separator + paramContext.getPackageName() + "/database");
        if (!((File)localObject2).exists())
          ((File)localObject2).mkdirs();
        localObject2 = ((File)localObject2).getAbsolutePath() + File.separator + "pushclientinfo.db";
        a.c("PushClientDataBase", "dbname is :" + (String)localObject2);
        a = new j.b(paramContext, (String)localObject2, null, 2);
      }
      return a;
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.baidu.android.pushservice.util.j
 * JD-Core Version:    0.6.2
 */