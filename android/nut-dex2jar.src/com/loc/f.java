package com.loc;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

public final class f
{
  SQLiteDatabase a;
  es b;
  private h c;

  public f(Context paramContext, es parames)
  {
    try
    {
      this.c = new h(paramContext, parames.b(), parames);
      this.b = parames;
      return;
    }
    catch (Throwable paramContext)
    {
      while (true)
        paramContext.printStackTrace();
    }
  }

  public static String a(Map<String, String> paramMap)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    Iterator localIterator = paramMap.keySet().iterator();
    int i = 1;
    while (localIterator.hasNext())
    {
      String str = (String)localIterator.next();
      if (i != 0)
      {
        localStringBuilder.append(str).append(" = '").append((String)paramMap.get(str)).append("'");
        i = 0;
      }
      else
      {
        localStringBuilder.append(" and ").append(str).append(" = '").append((String)paramMap.get(str)).append("'");
      }
    }
    return localStringBuilder.toString();
  }

  private SQLiteDatabase b()
  {
    try
    {
      this.a = this.c.getReadableDatabase();
      return this.a;
    }
    catch (Throwable localThrowable)
    {
      while (true)
        localThrowable.printStackTrace();
    }
  }

  final SQLiteDatabase a()
  {
    try
    {
      this.a = this.c.getWritableDatabase();
      return this.a;
    }
    catch (Throwable localThrowable)
    {
      while (true)
        localThrowable.printStackTrace();
    }
  }

  // ERROR //
  public final <T> java.util.List<T> a(String paramString, g<T> paramg)
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 31	com/loc/f:b	Lcom/loc/es;
    //   4: astore 4
    //   6: aload 4
    //   8: monitorenter
    //   9: new 94	java/util/ArrayList
    //   12: dup
    //   13: invokespecial 95	java/util/ArrayList:<init>	()V
    //   16: astore 5
    //   18: aload_0
    //   19: getfield 88	com/loc/f:a	Landroid/database/sqlite/SQLiteDatabase;
    //   22: ifnonnull +11 -> 33
    //   25: aload_0
    //   26: aload_0
    //   27: invokespecial 97	com/loc/f:b	()Landroid/database/sqlite/SQLiteDatabase;
    //   30: putfield 88	com/loc/f:a	Landroid/database/sqlite/SQLiteDatabase;
    //   33: aload_0
    //   34: getfield 88	com/loc/f:a	Landroid/database/sqlite/SQLiteDatabase;
    //   37: ifnull +7 -> 44
    //   40: aload_1
    //   41: ifnonnull +9 -> 50
    //   44: aload 4
    //   46: monitorexit
    //   47: aload 5
    //   49: areturn
    //   50: aload_0
    //   51: getfield 88	com/loc/f:a	Landroid/database/sqlite/SQLiteDatabase;
    //   54: aload_2
    //   55: invokeinterface 100 1 0
    //   60: aconst_null
    //   61: aload_1
    //   62: aconst_null
    //   63: aconst_null
    //   64: aconst_null
    //   65: aconst_null
    //   66: invokevirtual 106	android/database/sqlite/SQLiteDatabase:query	(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   69: astore_3
    //   70: aload_3
    //   71: ifnonnull +54 -> 125
    //   74: aload_3
    //   75: astore_1
    //   76: aload_0
    //   77: getfield 88	com/loc/f:a	Landroid/database/sqlite/SQLiteDatabase;
    //   80: invokevirtual 109	android/database/sqlite/SQLiteDatabase:close	()V
    //   83: aload_3
    //   84: astore_1
    //   85: aload_0
    //   86: aconst_null
    //   87: putfield 88	com/loc/f:a	Landroid/database/sqlite/SQLiteDatabase;
    //   90: aload_3
    //   91: ifnull +9 -> 100
    //   94: aload_3
    //   95: invokeinterface 112 1 0
    //   100: aload_0
    //   101: getfield 88	com/loc/f:a	Landroid/database/sqlite/SQLiteDatabase;
    //   104: ifnull +15 -> 119
    //   107: aload_0
    //   108: getfield 88	com/loc/f:a	Landroid/database/sqlite/SQLiteDatabase;
    //   111: invokevirtual 109	android/database/sqlite/SQLiteDatabase:close	()V
    //   114: aload_0
    //   115: aconst_null
    //   116: putfield 88	com/loc/f:a	Landroid/database/sqlite/SQLiteDatabase;
    //   119: aload 4
    //   121: monitorexit
    //   122: aload 5
    //   124: areturn
    //   125: aload_3
    //   126: astore_1
    //   127: aload_3
    //   128: invokeinterface 115 1 0
    //   133: ifeq +153 -> 286
    //   136: aload_3
    //   137: astore_1
    //   138: aload 5
    //   140: aload_2
    //   141: aload_3
    //   142: invokeinterface 118 2 0
    //   147: invokeinterface 124 2 0
    //   152: pop
    //   153: goto -28 -> 125
    //   156: astore_2
    //   157: aload_3
    //   158: astore_1
    //   159: aload_2
    //   160: invokevirtual 34	java/lang/Throwable:printStackTrace	()V
    //   163: aload_3
    //   164: ifnull +9 -> 173
    //   167: aload_3
    //   168: invokeinterface 112 1 0
    //   173: aload_0
    //   174: getfield 88	com/loc/f:a	Landroid/database/sqlite/SQLiteDatabase;
    //   177: ifnull +15 -> 192
    //   180: aload_0
    //   181: getfield 88	com/loc/f:a	Landroid/database/sqlite/SQLiteDatabase;
    //   184: invokevirtual 109	android/database/sqlite/SQLiteDatabase:close	()V
    //   187: aload_0
    //   188: aconst_null
    //   189: putfield 88	com/loc/f:a	Landroid/database/sqlite/SQLiteDatabase;
    //   192: aload 4
    //   194: monitorexit
    //   195: aload 5
    //   197: areturn
    //   198: astore_1
    //   199: aload_1
    //   200: invokevirtual 34	java/lang/Throwable:printStackTrace	()V
    //   203: aload_2
    //   204: athrow
    //   205: astore_1
    //   206: aload 4
    //   208: monitorexit
    //   209: aload_1
    //   210: athrow
    //   211: astore_2
    //   212: aconst_null
    //   213: astore_1
    //   214: aload_1
    //   215: ifnull +9 -> 224
    //   218: aload_1
    //   219: invokeinterface 112 1 0
    //   224: aload_0
    //   225: getfield 88	com/loc/f:a	Landroid/database/sqlite/SQLiteDatabase;
    //   228: ifnull -25 -> 203
    //   231: aload_0
    //   232: getfield 88	com/loc/f:a	Landroid/database/sqlite/SQLiteDatabase;
    //   235: invokevirtual 109	android/database/sqlite/SQLiteDatabase:close	()V
    //   238: aload_0
    //   239: aconst_null
    //   240: putfield 88	com/loc/f:a	Landroid/database/sqlite/SQLiteDatabase;
    //   243: goto -40 -> 203
    //   246: astore_1
    //   247: aload_1
    //   248: invokevirtual 34	java/lang/Throwable:printStackTrace	()V
    //   251: goto -27 -> 224
    //   254: astore_1
    //   255: aload_1
    //   256: invokevirtual 34	java/lang/Throwable:printStackTrace	()V
    //   259: goto -86 -> 173
    //   262: astore_1
    //   263: aload_1
    //   264: invokevirtual 34	java/lang/Throwable:printStackTrace	()V
    //   267: goto -75 -> 192
    //   270: astore_1
    //   271: aload_1
    //   272: invokevirtual 34	java/lang/Throwable:printStackTrace	()V
    //   275: goto -175 -> 100
    //   278: astore_1
    //   279: aload_1
    //   280: invokevirtual 34	java/lang/Throwable:printStackTrace	()V
    //   283: goto -164 -> 119
    //   286: aload_3
    //   287: ifnull +9 -> 296
    //   290: aload_3
    //   291: invokeinterface 112 1 0
    //   296: aload_0
    //   297: getfield 88	com/loc/f:a	Landroid/database/sqlite/SQLiteDatabase;
    //   300: ifnull -108 -> 192
    //   303: aload_0
    //   304: getfield 88	com/loc/f:a	Landroid/database/sqlite/SQLiteDatabase;
    //   307: invokevirtual 109	android/database/sqlite/SQLiteDatabase:close	()V
    //   310: aload_0
    //   311: aconst_null
    //   312: putfield 88	com/loc/f:a	Landroid/database/sqlite/SQLiteDatabase;
    //   315: goto -123 -> 192
    //   318: astore_1
    //   319: aload_1
    //   320: invokevirtual 34	java/lang/Throwable:printStackTrace	()V
    //   323: goto -131 -> 192
    //   326: astore_1
    //   327: aload_1
    //   328: invokevirtual 34	java/lang/Throwable:printStackTrace	()V
    //   331: goto -35 -> 296
    //   334: astore_2
    //   335: goto -121 -> 214
    //   338: astore_2
    //   339: aconst_null
    //   340: astore_3
    //   341: goto -184 -> 157
    //
    // Exception table:
    //   from	to	target	type
    //   76	83	156	java/lang/Throwable
    //   85	90	156	java/lang/Throwable
    //   127	136	156	java/lang/Throwable
    //   138	153	156	java/lang/Throwable
    //   224	243	198	java/lang/Throwable
    //   9	33	205	finally
    //   33	40	205	finally
    //   44	47	205	finally
    //   94	100	205	finally
    //   100	119	205	finally
    //   119	122	205	finally
    //   167	173	205	finally
    //   173	192	205	finally
    //   192	195	205	finally
    //   199	203	205	finally
    //   203	205	205	finally
    //   206	209	205	finally
    //   218	224	205	finally
    //   224	243	205	finally
    //   247	251	205	finally
    //   255	259	205	finally
    //   263	267	205	finally
    //   271	275	205	finally
    //   279	283	205	finally
    //   290	296	205	finally
    //   296	315	205	finally
    //   319	323	205	finally
    //   327	331	205	finally
    //   50	70	211	finally
    //   218	224	246	java/lang/Throwable
    //   167	173	254	java/lang/Throwable
    //   173	192	262	java/lang/Throwable
    //   94	100	270	java/lang/Throwable
    //   100	119	278	java/lang/Throwable
    //   296	315	318	java/lang/Throwable
    //   290	296	326	java/lang/Throwable
    //   76	83	334	finally
    //   85	90	334	finally
    //   127	136	334	finally
    //   138	153	334	finally
    //   159	163	334	finally
    //   50	70	338	java/lang/Throwable
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.loc.f
 * JD-Core Version:    0.6.2
 */