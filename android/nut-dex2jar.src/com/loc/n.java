package com.loc;

import android.content.Context;
import java.io.File;
import java.util.List;

final class n
{
  static String a(Context paramContext)
  {
    return paramContext.getFilesDir().getAbsolutePath() + File.separator + "dex";
  }

  static String a(Context paramContext, f paramf, eo parameo)
  {
    List localList = paramf.a(u.a(parameo.c, "copy"), new u());
    if (localList.size() == 0)
      return null;
    a(localList);
    int i = 0;
    Object localObject1;
    Object localObject2;
    if (i < localList.size())
    {
      localObject1 = (v)localList.get(i);
      localObject2 = ((v)localObject1).a;
      if (!a(paramf, (String)localObject2, a(paramContext, (String)localObject2), parameo));
    }
    while (true)
    {
      try
      {
        localObject2 = new w(b(parameo.c, parameo.a), ((v)localObject1).b, parameo.c, parameo.a, ((v)localObject1).e);
        ((w)localObject2).f = "usedex";
        a(paramContext, paramf, parameo, ((w)localObject2).a(), a(paramContext, ((v)localObject1).a));
        localObject1 = ((v)localObject1).e;
        paramContext = (Context)localObject1;
        return paramContext;
      }
      catch (Throwable localThrowable)
      {
        localThrowable.printStackTrace();
      }
      while (true)
      {
        i += 1;
        break;
        a(paramContext, paramf, localThrowable.a);
      }
      paramContext = null;
    }
  }

  static String a(Context paramContext, String paramString)
  {
    return a(paramContext) + File.separator + paramString;
  }

  static String a(Context paramContext, String paramString1, String paramString2)
  {
    return a(paramContext, b(paramString1, paramString2));
  }

  static String a(String paramString)
  {
    return paramString + ".dex";
  }

  // ERROR //
  static void a(Context paramContext, f paramf, eo parameo, v paramv, String paramString)
    throws Throwable
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 7
    //   3: aconst_null
    //   4: astore 8
    //   6: aconst_null
    //   7: astore 9
    //   9: aconst_null
    //   10: astore 10
    //   12: aconst_null
    //   13: astore 6
    //   15: aload_2
    //   16: getfield 46	com/loc/eo:c	Ljava/lang/String;
    //   19: astore 11
    //   21: aload_0
    //   22: aload_1
    //   23: aload_3
    //   24: getfield 76	com/loc/v:a	Ljava/lang/String;
    //   27: invokestatic 125	com/loc/n:b	(Landroid/content/Context;Lcom/loc/f;Ljava/lang/String;)V
    //   30: new 127	java/io/FileInputStream
    //   33: dup
    //   34: new 20	java/io/File
    //   37: dup
    //   38: aload 4
    //   40: invokespecial 130	java/io/File:<init>	(Ljava/lang/String;)V
    //   43: invokespecial 133	java/io/FileInputStream:<init>	(Ljava/io/File;)V
    //   46: astore 4
    //   48: aload 10
    //   50: astore 6
    //   52: aload 4
    //   54: astore 7
    //   56: new 135	java/io/FileOutputStream
    //   59: dup
    //   60: new 20	java/io/File
    //   63: dup
    //   64: aload_0
    //   65: aload 11
    //   67: aload_2
    //   68: getfield 85	com/loc/eo:a	Ljava/lang/String;
    //   71: invokestatic 137	com/loc/n:a	(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   74: invokespecial 130	java/io/File:<init>	(Ljava/lang/String;)V
    //   77: iconst_1
    //   78: invokespecial 140	java/io/FileOutputStream:<init>	(Ljava/io/File;Z)V
    //   81: astore_0
    //   82: sipush 1024
    //   85: newarray byte
    //   87: astore_2
    //   88: aload 4
    //   90: aload_2
    //   91: invokevirtual 146	java/io/InputStream:read	([B)I
    //   94: istore 5
    //   96: iload 5
    //   98: ifle +51 -> 149
    //   101: aload_0
    //   102: aload_2
    //   103: iconst_0
    //   104: iload 5
    //   106: invokevirtual 150	java/io/FileOutputStream:write	([BII)V
    //   109: goto -21 -> 88
    //   112: astore_2
    //   113: aload 4
    //   115: astore_1
    //   116: aload_2
    //   117: athrow
    //   118: astore_2
    //   119: aload_1
    //   120: astore 4
    //   122: aload_0
    //   123: astore 6
    //   125: aload_2
    //   126: astore_0
    //   127: aload 4
    //   129: ifnull +8 -> 137
    //   132: aload 4
    //   134: invokevirtual 153	java/io/InputStream:close	()V
    //   137: aload 6
    //   139: ifnull +8 -> 147
    //   142: aload 6
    //   144: invokevirtual 154	java/io/FileOutputStream:close	()V
    //   147: aload_0
    //   148: athrow
    //   149: aload_1
    //   150: aload_3
    //   151: aload_3
    //   152: getfield 76	com/loc/v:a	Ljava/lang/String;
    //   155: invokestatic 156	com/loc/u:a	(Ljava/lang/String;)Ljava/lang/String;
    //   158: invokestatic 161	com/loc/p:a	(Lcom/loc/f;Lcom/loc/v;Ljava/lang/String;)V
    //   161: aload 4
    //   163: invokevirtual 153	java/io/InputStream:close	()V
    //   166: aload_0
    //   167: invokevirtual 154	java/io/FileOutputStream:close	()V
    //   170: return
    //   171: astore_1
    //   172: aload_1
    //   173: invokevirtual 162	java/io/IOException:printStackTrace	()V
    //   176: goto -10 -> 166
    //   179: astore_0
    //   180: aload_0
    //   181: invokevirtual 162	java/io/IOException:printStackTrace	()V
    //   184: return
    //   185: astore_0
    //   186: aconst_null
    //   187: astore 4
    //   189: aload 8
    //   191: astore 6
    //   193: aload 4
    //   195: astore 7
    //   197: aload_0
    //   198: athrow
    //   199: aload 4
    //   201: astore 7
    //   203: aload_0
    //   204: athrow
    //   205: astore_1
    //   206: aload_1
    //   207: invokevirtual 162	java/io/IOException:printStackTrace	()V
    //   210: goto -73 -> 137
    //   213: astore_1
    //   214: aload_1
    //   215: invokevirtual 162	java/io/IOException:printStackTrace	()V
    //   218: goto -71 -> 147
    //   221: astore_0
    //   222: aconst_null
    //   223: astore 4
    //   225: aload 7
    //   227: astore 6
    //   229: goto -102 -> 127
    //   232: astore_1
    //   233: aload_0
    //   234: astore 6
    //   236: aload_1
    //   237: astore_0
    //   238: goto -111 -> 127
    //   241: astore_0
    //   242: aload 9
    //   244: astore 6
    //   246: goto -47 -> 199
    //   249: astore_1
    //   250: aload_0
    //   251: astore 6
    //   253: aload_1
    //   254: astore_0
    //   255: goto -56 -> 199
    //   258: astore_0
    //   259: aload 8
    //   261: astore 6
    //   263: goto -70 -> 193
    //   266: astore_1
    //   267: aload_0
    //   268: astore 6
    //   270: aload_1
    //   271: astore_0
    //   272: goto -79 -> 193
    //   275: astore_2
    //   276: aconst_null
    //   277: astore_0
    //   278: aload 6
    //   280: astore_1
    //   281: goto -165 -> 116
    //   284: astore_2
    //   285: aconst_null
    //   286: astore_0
    //   287: aload 4
    //   289: astore_1
    //   290: goto -174 -> 116
    //   293: astore_0
    //   294: aload 7
    //   296: astore 4
    //   298: goto -171 -> 127
    //   301: astore_0
    //   302: aconst_null
    //   303: astore 4
    //   305: aload 9
    //   307: astore 6
    //   309: goto -110 -> 199
    //
    // Exception table:
    //   from	to	target	type
    //   82	88	112	java/io/FileNotFoundException
    //   88	96	112	java/io/FileNotFoundException
    //   101	109	112	java/io/FileNotFoundException
    //   149	161	112	java/io/FileNotFoundException
    //   116	118	118	finally
    //   161	166	171	java/io/IOException
    //   166	170	179	java/io/IOException
    //   15	48	185	java/io/IOException
    //   132	137	205	java/io/IOException
    //   142	147	213	java/io/IOException
    //   15	48	221	finally
    //   82	88	232	finally
    //   88	96	232	finally
    //   101	109	232	finally
    //   149	161	232	finally
    //   56	82	241	java/lang/Throwable
    //   82	88	249	java/lang/Throwable
    //   88	96	249	java/lang/Throwable
    //   101	109	249	java/lang/Throwable
    //   149	161	249	java/lang/Throwable
    //   56	82	258	java/io/IOException
    //   82	88	266	java/io/IOException
    //   88	96	266	java/io/IOException
    //   101	109	266	java/io/IOException
    //   149	161	266	java/io/IOException
    //   15	48	275	java/io/FileNotFoundException
    //   56	82	284	java/io/FileNotFoundException
    //   56	82	293	finally
    //   197	199	293	finally
    //   203	205	293	finally
    //   15	48	301	java/lang/Throwable
  }

  // ERROR //
  static void a(Context paramContext, f paramf, String paramString)
  {
    // Byte code:
    //   0: new 20	java/io/File
    //   3: dup
    //   4: aload_0
    //   5: aload_2
    //   6: invokestatic 79	com/loc/n:a	(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    //   9: invokespecial 130	java/io/File:<init>	(Ljava/lang/String;)V
    //   12: astore_0
    //   13: aload_0
    //   14: invokevirtual 167	java/io/File:exists	()Z
    //   17: ifeq +8 -> 25
    //   20: aload_0
    //   21: invokevirtual 170	java/io/File:delete	()Z
    //   24: pop
    //   25: aload_2
    //   26: invokestatic 156	com/loc/u:a	(Ljava/lang/String;)Ljava/lang/String;
    //   29: astore_2
    //   30: new 50	com/loc/u
    //   33: dup
    //   34: invokespecial 54	com/loc/u:<init>	()V
    //   37: astore_3
    //   38: aload_1
    //   39: getfield 173	com/loc/f:b	Lcom/loc/es;
    //   42: astore_0
    //   43: aload_0
    //   44: monitorenter
    //   45: aload_2
    //   46: ifnonnull +6 -> 52
    //   49: aload_0
    //   50: monitorexit
    //   51: return
    //   52: aload_1
    //   53: getfield 176	com/loc/f:a	Landroid/database/sqlite/SQLiteDatabase;
    //   56: ifnull +13 -> 69
    //   59: aload_1
    //   60: getfield 176	com/loc/f:a	Landroid/database/sqlite/SQLiteDatabase;
    //   63: invokevirtual 181	android/database/sqlite/SQLiteDatabase:isReadOnly	()Z
    //   66: ifeq +11 -> 77
    //   69: aload_1
    //   70: aload_1
    //   71: invokevirtual 184	com/loc/f:a	()Landroid/database/sqlite/SQLiteDatabase;
    //   74: putfield 176	com/loc/f:a	Landroid/database/sqlite/SQLiteDatabase;
    //   77: aload_1
    //   78: getfield 176	com/loc/f:a	Landroid/database/sqlite/SQLiteDatabase;
    //   81: ifnonnull +11 -> 92
    //   84: aload_0
    //   85: monitorexit
    //   86: return
    //   87: astore_1
    //   88: aload_0
    //   89: monitorexit
    //   90: aload_1
    //   91: athrow
    //   92: aload_1
    //   93: getfield 176	com/loc/f:a	Landroid/database/sqlite/SQLiteDatabase;
    //   96: aload_3
    //   97: invokeinterface 188 1 0
    //   102: aload_2
    //   103: aconst_null
    //   104: invokevirtual 191	android/database/sqlite/SQLiteDatabase:delete	(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    //   107: pop
    //   108: aload_1
    //   109: getfield 176	com/loc/f:a	Landroid/database/sqlite/SQLiteDatabase;
    //   112: ifnull +15 -> 127
    //   115: aload_1
    //   116: getfield 176	com/loc/f:a	Landroid/database/sqlite/SQLiteDatabase;
    //   119: invokevirtual 192	android/database/sqlite/SQLiteDatabase:close	()V
    //   122: aload_1
    //   123: aconst_null
    //   124: putfield 176	com/loc/f:a	Landroid/database/sqlite/SQLiteDatabase;
    //   127: aload_0
    //   128: monitorexit
    //   129: return
    //   130: astore_2
    //   131: aload_2
    //   132: invokevirtual 110	java/lang/Throwable:printStackTrace	()V
    //   135: aload_1
    //   136: getfield 176	com/loc/f:a	Landroid/database/sqlite/SQLiteDatabase;
    //   139: ifnull -12 -> 127
    //   142: aload_1
    //   143: getfield 176	com/loc/f:a	Landroid/database/sqlite/SQLiteDatabase;
    //   146: invokevirtual 192	android/database/sqlite/SQLiteDatabase:close	()V
    //   149: aload_1
    //   150: aconst_null
    //   151: putfield 176	com/loc/f:a	Landroid/database/sqlite/SQLiteDatabase;
    //   154: goto -27 -> 127
    //   157: astore_2
    //   158: aload_1
    //   159: getfield 176	com/loc/f:a	Landroid/database/sqlite/SQLiteDatabase;
    //   162: ifnull +15 -> 177
    //   165: aload_1
    //   166: getfield 176	com/loc/f:a	Landroid/database/sqlite/SQLiteDatabase;
    //   169: invokevirtual 192	android/database/sqlite/SQLiteDatabase:close	()V
    //   172: aload_1
    //   173: aconst_null
    //   174: putfield 176	com/loc/f:a	Landroid/database/sqlite/SQLiteDatabase;
    //   177: aload_2
    //   178: athrow
    //
    // Exception table:
    //   from	to	target	type
    //   49	51	87	finally
    //   52	69	87	finally
    //   69	77	87	finally
    //   77	86	87	finally
    //   88	90	87	finally
    //   108	127	87	finally
    //   127	129	87	finally
    //   135	154	87	finally
    //   158	177	87	finally
    //   177	179	87	finally
    //   92	108	130	java/lang/Throwable
    //   92	108	157	finally
    //   131	135	157	finally
  }

  static void a(List<v> paramList)
  {
    int i = 0;
    while (i < paramList.size() - 1)
    {
      int j = i + 1;
      while (j < paramList.size())
      {
        v localv1 = (v)paramList.get(i);
        v localv2 = (v)paramList.get(j);
        String str = localv1.e;
        if (x.a(localv2.e, str) > 0)
        {
          paramList.set(i, localv2);
          paramList.set(j, localv1);
        }
        j += 1;
      }
      i += 1;
    }
  }

  static boolean a(f paramf, String paramString1, String paramString2, eo parameo)
  {
    paramf = p.a(paramf, paramString1);
    if ((paramf == null) || (!parameo.a.equals(paramf.d)));
    while (!a(paramString2, paramf.b))
      return false;
    return true;
  }

  static boolean a(String paramString1, String paramString2)
  {
    paramString1 = ek.a(paramString1);
    return (paramString1 != null) && (paramString1.equalsIgnoreCase(paramString2));
  }

  static String b(String paramString1, String paramString2)
  {
    return ek.b(new StringBuilder().append(paramString1).append(paramString2).toString()) + ".jar";
  }

  static void b(Context paramContext, f paramf, String paramString)
  {
    a(paramContext, paramf, paramString);
    a(paramContext, paramf, a(paramString));
  }

  static void b(Context paramContext, String paramString1, String paramString2)
  {
    new o(paramContext, paramString1, paramString2).start();
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.loc.n
 * JD-Core Version:    0.6.2
 */