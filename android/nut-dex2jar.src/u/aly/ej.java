package u.aly;

import android.content.Context;
import android.content.SharedPreferences;
import java.util.ArrayList;
import java.util.List;

public final class ej
{
  public static Context f;
  eg a = null;
  public fa b = null;
  public boolean c = false;
  public boolean d = false;
  public long e = 0L;
  public List<String> g = new ArrayList();
  eu h = null;
  private ey i = null;
  private final String j = "main_fest_mode";
  private final String k = "main_fest_timestamp";
  private final Thread l = new Thread(new ek(this));

  private ej()
  {
    if (f != null)
    {
      if (this.a == null)
        this.a = new eg();
      if (this.i == null)
      {
        ey.a = f;
        this.i = ez.a();
      }
      if (this.b == null)
        this.b = new fa();
    }
    this.l.start();
  }

  public final void a()
  {
    SharedPreferences localSharedPreferences = f.getSharedPreferences("umeng_general_config", 0);
    this.d = localSharedPreferences.getBoolean("main_fest_mode", false);
    this.e = localSharedPreferences.getLong("main_fest_timestamp", 0L);
  }

  // ERROR //
  public final void a(long paramLong1, long paramLong2, String paramString)
  {
    // Byte code:
    //   0: new 118	u/aly/en
    //   3: dup
    //   4: aload_0
    //   5: invokespecial 119	u/aly/en:<init>	(Lu/aly/ej;)V
    //   8: astore 7
    //   10: getstatic 79	u/aly/ey:a	Landroid/content/Context;
    //   13: invokestatic 124	u/aly/as:a	(Landroid/content/Context;)Lu/aly/as;
    //   16: invokevirtual 127	u/aly/as:b	()Landroid/database/sqlite/SQLiteDatabase;
    //   19: astore 8
    //   21: aload 8
    //   23: ldc 129
    //   25: invokestatic 134	u/aly/a:b	(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)I
    //   28: istore 6
    //   30: invokestatic 139	u/aly/ex:a	()Lu/aly/ew;
    //   33: pop
    //   34: iload 6
    //   36: sipush 128
    //   39: if_icmpge +71 -> 110
    //   42: new 141	android/content/ContentValues
    //   45: dup
    //   46: invokespecial 142	android/content/ContentValues:<init>	()V
    //   49: astore 9
    //   51: aload 9
    //   53: ldc 144
    //   55: aload 5
    //   57: invokevirtual 148	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   60: aload 9
    //   62: ldc 150
    //   64: lload_3
    //   65: invokestatic 156	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   68: invokevirtual 159	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/Long;)V
    //   71: aload 9
    //   73: ldc 161
    //   75: lload_1
    //   76: invokestatic 156	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   79: invokevirtual 159	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/Long;)V
    //   82: aload 8
    //   84: ldc 129
    //   86: aconst_null
    //   87: aload 9
    //   89: invokevirtual 167	android/database/sqlite/SQLiteDatabase:insert	(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    //   92: pop2
    //   93: aload 7
    //   95: ldc 169
    //   97: invokevirtual 174	u/aly/ef:a	(Ljava/lang/Object;)V
    //   100: getstatic 79	u/aly/ey:a	Landroid/content/Context;
    //   103: invokestatic 124	u/aly/as:a	(Landroid/content/Context;)Lu/aly/as;
    //   106: invokevirtual 176	u/aly/as:c	()V
    //   109: return
    //   110: iload 6
    //   112: sipush 128
    //   115: if_icmpne +59 -> 174
    //   118: new 141	android/content/ContentValues
    //   121: dup
    //   122: invokespecial 142	android/content/ContentValues:<init>	()V
    //   125: astore 5
    //   127: aload 5
    //   129: ldc 144
    //   131: ldc 178
    //   133: invokevirtual 148	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   136: aload 5
    //   138: ldc 150
    //   140: invokestatic 184	java/lang/System:currentTimeMillis	()J
    //   143: invokestatic 156	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   146: invokevirtual 159	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/Long;)V
    //   149: aload 5
    //   151: ldc 161
    //   153: iconst_1
    //   154: invokestatic 189	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   157: invokevirtual 192	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/Integer;)V
    //   160: aload 8
    //   162: ldc 129
    //   164: aconst_null
    //   165: aload 5
    //   167: invokevirtual 167	android/database/sqlite/SQLiteDatabase:insert	(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    //   170: pop2
    //   171: goto -78 -> 93
    //   174: aload 8
    //   176: invokevirtual 195	android/database/sqlite/SQLiteDatabase:beginTransaction	()V
    //   179: aload 8
    //   181: new 197	java/lang/StringBuilder
    //   184: dup
    //   185: ldc 199
    //   187: invokespecial 202	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   190: ldc 178
    //   192: invokevirtual 206	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   195: ldc 208
    //   197: invokevirtual 206	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   200: invokevirtual 212	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   203: invokevirtual 215	android/database/sqlite/SQLiteDatabase:execSQL	(Ljava/lang/String;)V
    //   206: aload 8
    //   208: invokevirtual 218	android/database/sqlite/SQLiteDatabase:setTransactionSuccessful	()V
    //   211: aload 8
    //   213: ifnull -120 -> 93
    //   216: aload 8
    //   218: invokevirtual 221	android/database/sqlite/SQLiteDatabase:endTransaction	()V
    //   221: goto -128 -> 93
    //   224: astore 5
    //   226: ldc 223
    //   228: invokestatic 227	u/aly/ct:d	(Ljava/lang/String;)V
    //   231: getstatic 79	u/aly/ey:a	Landroid/content/Context;
    //   234: invokestatic 124	u/aly/as:a	(Landroid/content/Context;)Lu/aly/as;
    //   237: invokevirtual 176	u/aly/as:c	()V
    //   240: return
    //   241: astore 5
    //   243: aload 8
    //   245: ifnull -152 -> 93
    //   248: aload 8
    //   250: invokevirtual 221	android/database/sqlite/SQLiteDatabase:endTransaction	()V
    //   253: goto -160 -> 93
    //   256: astore 5
    //   258: getstatic 79	u/aly/ey:a	Landroid/content/Context;
    //   261: invokestatic 124	u/aly/as:a	(Landroid/content/Context;)Lu/aly/as;
    //   264: invokevirtual 176	u/aly/as:c	()V
    //   267: aload 5
    //   269: athrow
    //   270: astore 5
    //   272: aload 8
    //   274: ifnull +8 -> 282
    //   277: aload 8
    //   279: invokevirtual 221	android/database/sqlite/SQLiteDatabase:endTransaction	()V
    //   282: aload 5
    //   284: athrow
    //   285: astore 5
    //   287: goto -194 -> 93
    //
    // Exception table:
    //   from	to	target	type
    //   10	21	224	java/lang/Exception
    //   21	34	224	java/lang/Exception
    //   42	93	224	java/lang/Exception
    //   93	100	224	java/lang/Exception
    //   118	171	224	java/lang/Exception
    //   216	221	224	java/lang/Exception
    //   248	253	224	java/lang/Exception
    //   277	282	224	java/lang/Exception
    //   282	285	224	java/lang/Exception
    //   174	211	241	android/database/SQLException
    //   10	21	256	finally
    //   21	34	256	finally
    //   42	93	256	finally
    //   93	100	256	finally
    //   118	171	256	finally
    //   216	221	256	finally
    //   226	231	256	finally
    //   248	253	256	finally
    //   277	282	256	finally
    //   282	285	256	finally
    //   174	211	270	finally
    //   21	34	285	android/database/SQLException
    //   42	93	285	android/database/SQLException
    //   118	171	285	android/database/SQLException
    //   216	221	285	android/database/SQLException
    //   248	253	285	android/database/SQLException
    //   277	282	285	android/database/SQLException
    //   282	285	285	android/database/SQLException
  }

  // ERROR //
  public final void b()
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 33	u/aly/ej:a	Lu/aly/eg;
    //   4: getfield 232	u/aly/eg:a	Ljava/util/Map;
    //   7: invokeinterface 238 1 0
    //   12: ifle +54 -> 66
    //   15: new 240	u/aly/eq
    //   18: dup
    //   19: aload_0
    //   20: invokespecial 241	u/aly/eq:<init>	(Lu/aly/ej;)V
    //   23: astore_1
    //   24: aload_0
    //   25: getfield 33	u/aly/ej:a	Lu/aly/eg;
    //   28: getfield 232	u/aly/eg:a	Ljava/util/Map;
    //   31: astore_2
    //   32: getstatic 79	u/aly/ey:a	Landroid/content/Context;
    //   35: invokestatic 124	u/aly/as:a	(Landroid/content/Context;)Lu/aly/as;
    //   38: invokevirtual 127	u/aly/as:b	()Landroid/database/sqlite/SQLiteDatabase;
    //   41: aload_2
    //   42: invokeinterface 245 1 0
    //   47: invokestatic 248	u/aly/a:a	(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/Collection;)Z
    //   50: pop
    //   51: aload_1
    //   52: ldc 169
    //   54: invokevirtual 174	u/aly/ef:a	(Ljava/lang/Object;)V
    //   57: getstatic 79	u/aly/ey:a	Landroid/content/Context;
    //   60: invokestatic 124	u/aly/as:a	(Landroid/content/Context;)Lu/aly/as;
    //   63: invokevirtual 176	u/aly/as:c	()V
    //   66: aload_0
    //   67: getfield 37	u/aly/ej:b	Lu/aly/fa;
    //   70: getfield 249	u/aly/fa:a	Ljava/util/Map;
    //   73: invokeinterface 238 1 0
    //   78: ifle +21 -> 99
    //   81: new 251	u/aly/er
    //   84: dup
    //   85: aload_0
    //   86: invokespecial 252	u/aly/er:<init>	(Lu/aly/ej;)V
    //   89: aload_0
    //   90: getfield 37	u/aly/ej:b	Lu/aly/fa;
    //   93: getfield 249	u/aly/fa:a	Ljava/util/Map;
    //   96: invokestatic 255	u/aly/ey:a	(Lu/aly/ef;Ljava/util/Map;)V
    //   99: aload_0
    //   100: getfield 56	u/aly/ej:g	Ljava/util/List;
    //   103: invokeinterface 258 1 0
    //   108: ifle +17 -> 125
    //   111: new 171	u/aly/ef
    //   114: dup
    //   115: invokespecial 259	u/aly/ef:<init>	()V
    //   118: aload_0
    //   119: getfield 56	u/aly/ej:g	Ljava/util/List;
    //   122: invokestatic 262	u/aly/ey:a	(Lu/aly/ef;Ljava/util/List;)V
    //   125: return
    //   126: astore_1
    //   127: ldc_w 264
    //   130: invokestatic 227	u/aly/ct:d	(Ljava/lang/String;)V
    //   133: getstatic 79	u/aly/ey:a	Landroid/content/Context;
    //   136: invokestatic 124	u/aly/as:a	(Landroid/content/Context;)Lu/aly/as;
    //   139: invokevirtual 176	u/aly/as:c	()V
    //   142: goto -76 -> 66
    //   145: astore_1
    //   146: new 197	java/lang/StringBuilder
    //   149: dup
    //   150: ldc_w 266
    //   153: invokespecial 202	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   156: aload_1
    //   157: invokevirtual 267	java/lang/Throwable:toString	()Ljava/lang/String;
    //   160: invokevirtual 206	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   163: invokevirtual 212	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   166: invokestatic 269	u/aly/ct:a	(Ljava/lang/String;)V
    //   169: return
    //   170: astore_1
    //   171: getstatic 79	u/aly/ey:a	Landroid/content/Context;
    //   174: invokestatic 124	u/aly/as:a	(Landroid/content/Context;)Lu/aly/as;
    //   177: invokevirtual 176	u/aly/as:c	()V
    //   180: aload_1
    //   181: athrow
    //
    // Exception table:
    //   from	to	target	type
    //   32	57	126	java/lang/Exception
    //   0	32	145	java/lang/Throwable
    //   57	66	145	java/lang/Throwable
    //   66	99	145	java/lang/Throwable
    //   99	125	145	java/lang/Throwable
    //   133	142	145	java/lang/Throwable
    //   171	182	145	java/lang/Throwable
    //   32	57	170	finally
    //   127	133	170	finally
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     u.aly.ej
 * JD-Core Version:    0.6.2
 */