package com.amap.api.services.core;

import android.content.ContentValues;
import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

public class bj
{
  private bn a;
  private SQLiteDatabase b;
  private bi c;

  public bj(Context paramContext, bi parambi)
  {
    try
    {
      this.a = new bn(paramContext, parambi.a(), null, parambi.b(), parambi);
      this.c = parambi;
      return;
    }
    catch (Throwable paramContext)
    {
      while (true)
        paramContext.printStackTrace();
    }
  }

  private SQLiteDatabase a(boolean paramBoolean)
  {
    try
    {
      this.b = this.a.getReadableDatabase();
      return this.b;
    }
    catch (Throwable localThrowable)
    {
      while (true)
        if (!paramBoolean)
          ay.a(localThrowable, "DBOperation", "getReadAbleDataBase");
        else
          localThrowable.printStackTrace();
    }
  }

  public static String a(Map<String, String> paramMap)
  {
    if (paramMap == null)
      return "";
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

  private <T> void a(SQLiteDatabase paramSQLiteDatabase, bk<T> parambk)
  {
    if ((parambk == null) || (paramSQLiteDatabase == null));
    ContentValues localContentValues;
    do
    {
      return;
      localContentValues = parambk.a();
    }
    while ((localContentValues == null) || (parambk.b() == null));
    paramSQLiteDatabase.insert(parambk.b(), null, localContentValues);
  }

  private SQLiteDatabase b(boolean paramBoolean)
  {
    try
    {
      this.b = this.a.getWritableDatabase();
      return this.b;
    }
    catch (Throwable localThrowable)
    {
      while (true)
        ay.a(localThrowable, "DBOperation", "getReadAbleDataBase");
    }
  }

  public <T> void a(bk<T> parambk)
  {
    a(parambk, false);
  }

  public <T> void a(bk<T> parambk, boolean paramBoolean)
  {
    synchronized (this.c)
    {
      if ((this.b == null) || (this.b.isReadOnly()))
        this.b = b(paramBoolean);
      if (this.b == null)
        return;
    }
    try
    {
      a(this.b, parambk);
      if (this.b != null)
      {
        this.b.close();
        this.b = null;
      }
      return;
      parambk = finally;
      throw parambk;
    }
    catch (Throwable parambk)
    {
      while (true)
      {
        ay.a(parambk, "DataBase", "insertData");
        if (this.b != null)
        {
          this.b.close();
          this.b = null;
        }
      }
    }
    finally
    {
      if (this.b != null)
      {
        this.b.close();
        this.b = null;
      }
    }
    throw parambk;
  }

  public <T> void a(String paramString, bk<T> parambk)
  {
    synchronized (this.c)
    {
      if ((parambk.b() == null) || (paramString == null))
        return;
      if ((this.b == null) || (this.b.isReadOnly()))
        this.b = b(false);
      if (this.b == null)
        return;
    }
    try
    {
      this.b.delete(parambk.b(), paramString, null);
      if (this.b != null)
      {
        this.b.close();
        this.b = null;
      }
      return;
    }
    catch (Throwable paramString)
    {
      while (true)
      {
        ay.a(paramString, "DataBase", "deleteData");
        if (this.b != null)
        {
          this.b.close();
          this.b = null;
        }
      }
    }
    finally
    {
      if (this.b != null)
      {
        this.b.close();
        this.b = null;
      }
    }
  }

  public <T> void a(String paramString, bk<T> parambk, boolean paramBoolean)
  {
    bi localbi = this.c;
    if ((parambk != null) && (paramString != null));
    ContentValues localContentValues;
    try
    {
      if (parambk.b() == null)
        return;
      localContentValues = parambk.a();
      if (localContentValues == null)
        return;
    }
    finally
    {
    }
    if ((this.b == null) || (this.b.isReadOnly()))
      this.b = b(paramBoolean);
    if (this.b == null)
      return;
    try
    {
      this.b.update(parambk.b(), localContentValues, paramString, null);
      if (this.b != null)
      {
        this.b.close();
        this.b = null;
      }
      return;
    }
    catch (Throwable paramString)
    {
      if (!paramBoolean)
        ay.a(paramString, "DataBase", "updateData");
      while (this.b != null)
      {
        this.b.close();
        this.b = null;
        break;
        paramString.printStackTrace();
      }
    }
    finally
    {
      if (this.b != null)
      {
        this.b.close();
        this.b = null;
      }
    }
    throw paramString;
  }

  // ERROR //
  public <T> List<T> b(String paramString, bk<T> parambk, boolean paramBoolean)
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 34	com/amap/api/services/core/bj:c	Lcom/amap/api/services/core/bi;
    //   4: astore 5
    //   6: aload 5
    //   8: monitorenter
    //   9: new 160	java/util/ArrayList
    //   12: dup
    //   13: invokespecial 161	java/util/ArrayList:<init>	()V
    //   16: astore 6
    //   18: aload_0
    //   19: getfield 45	com/amap/api/services/core/bj:b	Landroid/database/sqlite/SQLiteDatabase;
    //   22: ifnonnull +12 -> 34
    //   25: aload_0
    //   26: aload_0
    //   27: iload_3
    //   28: invokespecial 163	com/amap/api/services/core/bj:a	(Z)Landroid/database/sqlite/SQLiteDatabase;
    //   31: putfield 45	com/amap/api/services/core/bj:b	Landroid/database/sqlite/SQLiteDatabase;
    //   34: aload_0
    //   35: getfield 45	com/amap/api/services/core/bj:b	Landroid/database/sqlite/SQLiteDatabase;
    //   38: ifnull +16 -> 54
    //   41: aload_2
    //   42: invokeinterface 111 1 0
    //   47: ifnull +7 -> 54
    //   50: aload_1
    //   51: ifnonnull +9 -> 60
    //   54: aload 5
    //   56: monitorexit
    //   57: aload 6
    //   59: areturn
    //   60: aload_0
    //   61: getfield 45	com/amap/api/services/core/bj:b	Landroid/database/sqlite/SQLiteDatabase;
    //   64: aload_2
    //   65: invokeinterface 111 1 0
    //   70: aconst_null
    //   71: aload_1
    //   72: aconst_null
    //   73: aconst_null
    //   74: aconst_null
    //   75: aconst_null
    //   76: invokevirtual 167	android/database/sqlite/SQLiteDatabase:query	(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   79: astore 4
    //   81: aload 4
    //   83: ifnonnull +96 -> 179
    //   86: aload 4
    //   88: astore_1
    //   89: aload_0
    //   90: getfield 45	com/amap/api/services/core/bj:b	Landroid/database/sqlite/SQLiteDatabase;
    //   93: invokevirtual 136	android/database/sqlite/SQLiteDatabase:close	()V
    //   96: aload 4
    //   98: astore_1
    //   99: aload_0
    //   100: aconst_null
    //   101: putfield 45	com/amap/api/services/core/bj:b	Landroid/database/sqlite/SQLiteDatabase;
    //   104: aload 4
    //   106: ifnull +10 -> 116
    //   109: aload 4
    //   111: invokeinterface 170 1 0
    //   116: aload_0
    //   117: getfield 45	com/amap/api/services/core/bj:b	Landroid/database/sqlite/SQLiteDatabase;
    //   120: ifnull +15 -> 135
    //   123: aload_0
    //   124: getfield 45	com/amap/api/services/core/bj:b	Landroid/database/sqlite/SQLiteDatabase;
    //   127: invokevirtual 136	android/database/sqlite/SQLiteDatabase:close	()V
    //   130: aload_0
    //   131: aconst_null
    //   132: putfield 45	com/amap/api/services/core/bj:b	Landroid/database/sqlite/SQLiteDatabase;
    //   135: aload 5
    //   137: monitorexit
    //   138: aload 6
    //   140: areturn
    //   141: astore_1
    //   142: iload_3
    //   143: ifne -27 -> 116
    //   146: aload_1
    //   147: ldc 138
    //   149: ldc 172
    //   151: invokestatic 54	com/amap/api/services/core/ay:a	(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    //   154: goto -38 -> 116
    //   157: astore_1
    //   158: aload 5
    //   160: monitorexit
    //   161: aload_1
    //   162: athrow
    //   163: astore_1
    //   164: iload_3
    //   165: ifne -30 -> 135
    //   168: aload_1
    //   169: ldc 138
    //   171: ldc 172
    //   173: invokestatic 54	com/amap/api/services/core/ay:a	(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    //   176: goto -41 -> 135
    //   179: aload 4
    //   181: astore_1
    //   182: aload 4
    //   184: invokeinterface 175 1 0
    //   189: ifeq +78 -> 267
    //   192: aload 4
    //   194: astore_1
    //   195: aload 6
    //   197: aload_2
    //   198: aload 4
    //   200: invokeinterface 178 2 0
    //   205: invokeinterface 184 2 0
    //   210: pop
    //   211: goto -32 -> 179
    //   214: astore_2
    //   215: iload_3
    //   216: ifne +14 -> 230
    //   219: aload 4
    //   221: astore_1
    //   222: aload_2
    //   223: ldc 138
    //   225: ldc 172
    //   227: invokestatic 54	com/amap/api/services/core/ay:a	(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    //   230: aload 4
    //   232: ifnull +10 -> 242
    //   235: aload 4
    //   237: invokeinterface 170 1 0
    //   242: aload_0
    //   243: getfield 45	com/amap/api/services/core/bj:b	Landroid/database/sqlite/SQLiteDatabase;
    //   246: ifnull +15 -> 261
    //   249: aload_0
    //   250: getfield 45	com/amap/api/services/core/bj:b	Landroid/database/sqlite/SQLiteDatabase;
    //   253: invokevirtual 136	android/database/sqlite/SQLiteDatabase:close	()V
    //   256: aload_0
    //   257: aconst_null
    //   258: putfield 45	com/amap/api/services/core/bj:b	Landroid/database/sqlite/SQLiteDatabase;
    //   261: aload 5
    //   263: monitorexit
    //   264: aload 6
    //   266: areturn
    //   267: aload 4
    //   269: ifnull +10 -> 279
    //   272: aload 4
    //   274: invokeinterface 170 1 0
    //   279: aload_0
    //   280: getfield 45	com/amap/api/services/core/bj:b	Landroid/database/sqlite/SQLiteDatabase;
    //   283: ifnull -22 -> 261
    //   286: aload_0
    //   287: getfield 45	com/amap/api/services/core/bj:b	Landroid/database/sqlite/SQLiteDatabase;
    //   290: invokevirtual 136	android/database/sqlite/SQLiteDatabase:close	()V
    //   293: aload_0
    //   294: aconst_null
    //   295: putfield 45	com/amap/api/services/core/bj:b	Landroid/database/sqlite/SQLiteDatabase;
    //   298: goto -37 -> 261
    //   301: astore_1
    //   302: iload_3
    //   303: ifne -42 -> 261
    //   306: aload_1
    //   307: ldc 138
    //   309: ldc 172
    //   311: invokestatic 54	com/amap/api/services/core/ay:a	(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    //   314: goto -53 -> 261
    //   317: astore_1
    //   318: iload_3
    //   319: ifne -40 -> 279
    //   322: aload_1
    //   323: ldc 138
    //   325: ldc 172
    //   327: invokestatic 54	com/amap/api/services/core/ay:a	(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    //   330: goto -51 -> 279
    //   333: astore_1
    //   334: iload_3
    //   335: ifne -93 -> 242
    //   338: aload_1
    //   339: ldc 138
    //   341: ldc 172
    //   343: invokestatic 54	com/amap/api/services/core/ay:a	(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    //   346: goto -104 -> 242
    //   349: astore_1
    //   350: iload_3
    //   351: ifne -90 -> 261
    //   354: aload_1
    //   355: ldc 138
    //   357: ldc 172
    //   359: invokestatic 54	com/amap/api/services/core/ay:a	(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    //   362: goto -101 -> 261
    //   365: astore_2
    //   366: aconst_null
    //   367: astore_1
    //   368: aload_1
    //   369: ifnull +9 -> 378
    //   372: aload_1
    //   373: invokeinterface 170 1 0
    //   378: aload_0
    //   379: getfield 45	com/amap/api/services/core/bj:b	Landroid/database/sqlite/SQLiteDatabase;
    //   382: ifnull +15 -> 397
    //   385: aload_0
    //   386: getfield 45	com/amap/api/services/core/bj:b	Landroid/database/sqlite/SQLiteDatabase;
    //   389: invokevirtual 136	android/database/sqlite/SQLiteDatabase:close	()V
    //   392: aload_0
    //   393: aconst_null
    //   394: putfield 45	com/amap/api/services/core/bj:b	Landroid/database/sqlite/SQLiteDatabase;
    //   397: aload_2
    //   398: athrow
    //   399: astore_1
    //   400: iload_3
    //   401: ifne -23 -> 378
    //   404: aload_1
    //   405: ldc 138
    //   407: ldc 172
    //   409: invokestatic 54	com/amap/api/services/core/ay:a	(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    //   412: goto -34 -> 378
    //   415: astore_1
    //   416: iload_3
    //   417: ifne -20 -> 397
    //   420: aload_1
    //   421: ldc 138
    //   423: ldc 172
    //   425: invokestatic 54	com/amap/api/services/core/ay:a	(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    //   428: goto -31 -> 397
    //   431: astore_2
    //   432: goto -64 -> 368
    //   435: astore_2
    //   436: aconst_null
    //   437: astore 4
    //   439: goto -224 -> 215
    //
    // Exception table:
    //   from	to	target	type
    //   109	116	141	java/lang/Throwable
    //   9	34	157	finally
    //   34	50	157	finally
    //   54	57	157	finally
    //   109	116	157	finally
    //   116	135	157	finally
    //   135	138	157	finally
    //   146	154	157	finally
    //   158	161	157	finally
    //   168	176	157	finally
    //   235	242	157	finally
    //   242	261	157	finally
    //   261	264	157	finally
    //   272	279	157	finally
    //   279	298	157	finally
    //   306	314	157	finally
    //   322	330	157	finally
    //   338	346	157	finally
    //   354	362	157	finally
    //   372	378	157	finally
    //   378	397	157	finally
    //   397	399	157	finally
    //   404	412	157	finally
    //   420	428	157	finally
    //   116	135	163	java/lang/Throwable
    //   89	96	214	java/lang/Throwable
    //   99	104	214	java/lang/Throwable
    //   182	192	214	java/lang/Throwable
    //   195	211	214	java/lang/Throwable
    //   279	298	301	java/lang/Throwable
    //   272	279	317	java/lang/Throwable
    //   235	242	333	java/lang/Throwable
    //   242	261	349	java/lang/Throwable
    //   60	81	365	finally
    //   372	378	399	java/lang/Throwable
    //   378	397	415	java/lang/Throwable
    //   89	96	431	finally
    //   99	104	431	finally
    //   182	192	431	finally
    //   195	211	431	finally
    //   222	230	431	finally
    //   60	81	435	java/lang/Throwable
  }

  public <T> void b(String paramString, bk<T> parambk)
  {
    a(paramString, parambk, false);
  }

  public <T> List<T> c(String paramString, bk<T> parambk)
  {
    return b(paramString, parambk, false);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.amap.api.services.core.bj
 * JD-Core Version:    0.6.2
 */