package com.tencent.open.b;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import com.tencent.open.utils.g;

public final class f extends SQLiteOpenHelper
{
  protected static final String[] a = { "key" };
  protected static f b;

  private f(Context paramContext)
  {
    super(paramContext, "sdk_report.db", null, 2);
  }

  public static f a()
  {
    try
    {
      if (b == null)
        b = new f(g.a());
      f localf = b;
      return localf;
    }
    finally
    {
    }
  }

  // ERROR //
  public final java.util.List<java.io.Serializable> a(String paramString)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 4
    //   3: aload_0
    //   4: monitorenter
    //   5: new 41	java/util/ArrayList
    //   8: dup
    //   9: invokespecial 43	java/util/ArrayList:<init>	()V
    //   12: invokestatic 49	java/util/Collections:synchronizedList	(Ljava/util/List;)Ljava/util/List;
    //   15: astore 6
    //   17: aload_1
    //   18: invokestatic 55	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   21: istore_2
    //   22: iload_2
    //   23: ifeq +8 -> 31
    //   26: aload_0
    //   27: monitorexit
    //   28: aload 6
    //   30: areturn
    //   31: aload_0
    //   32: invokevirtual 59	com/tencent/open/b/f:getReadableDatabase	()Landroid/database/sqlite/SQLiteDatabase;
    //   35: astore 5
    //   37: aload 5
    //   39: ifnonnull +6 -> 45
    //   42: goto -16 -> 26
    //   45: aload 5
    //   47: ldc 61
    //   49: aconst_null
    //   50: ldc 63
    //   52: iconst_1
    //   53: anewarray 12	java/lang/String
    //   56: dup
    //   57: iconst_0
    //   58: aload_1
    //   59: aastore
    //   60: aconst_null
    //   61: aconst_null
    //   62: aconst_null
    //   63: invokevirtual 69	android/database/sqlite/SQLiteDatabase:query	(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   66: astore_1
    //   67: aload_1
    //   68: ifnull +97 -> 165
    //   71: aload_1
    //   72: invokeinterface 75 1 0
    //   77: ifle +88 -> 165
    //   80: aload_1
    //   81: invokeinterface 79 1 0
    //   86: pop
    //   87: new 81	java/io/ByteArrayInputStream
    //   90: dup
    //   91: aload_1
    //   92: aload_1
    //   93: ldc 83
    //   95: invokeinterface 87 2 0
    //   100: invokeinterface 91 2 0
    //   105: invokespecial 94	java/io/ByteArrayInputStream:<init>	([B)V
    //   108: astore 7
    //   110: new 96	java/io/ObjectInputStream
    //   113: dup
    //   114: aload 7
    //   116: invokespecial 99	java/io/ObjectInputStream:<init>	(Ljava/io/InputStream;)V
    //   119: astore_3
    //   120: aload_3
    //   121: invokevirtual 103	java/io/ObjectInputStream:readObject	()Ljava/lang/Object;
    //   124: checkcast 105	java/io/Serializable
    //   127: astore 4
    //   129: aload_3
    //   130: invokevirtual 108	java/io/ObjectInputStream:close	()V
    //   133: aload 7
    //   135: invokevirtual 109	java/io/ByteArrayInputStream:close	()V
    //   138: aload 4
    //   140: astore_3
    //   141: aload_3
    //   142: ifnull +12 -> 154
    //   145: aload 6
    //   147: aload_3
    //   148: invokeinterface 115 2 0
    //   153: pop
    //   154: aload_1
    //   155: invokeinterface 118 1 0
    //   160: istore_2
    //   161: iload_2
    //   162: ifne -75 -> 87
    //   165: aload_1
    //   166: ifnull +9 -> 175
    //   169: aload_1
    //   170: invokeinterface 119 1 0
    //   175: aload 5
    //   177: ifnull +8 -> 185
    //   180: aload 5
    //   182: invokevirtual 120	android/database/sqlite/SQLiteDatabase:close	()V
    //   185: goto -159 -> 26
    //   188: astore_3
    //   189: aconst_null
    //   190: astore_3
    //   191: aload_3
    //   192: ifnull +7 -> 199
    //   195: aload_3
    //   196: invokevirtual 108	java/io/ObjectInputStream:close	()V
    //   199: aload 7
    //   201: invokevirtual 109	java/io/ByteArrayInputStream:close	()V
    //   204: aconst_null
    //   205: astore_3
    //   206: goto -65 -> 141
    //   209: astore_3
    //   210: aconst_null
    //   211: astore_3
    //   212: goto -71 -> 141
    //   215: astore 4
    //   217: aconst_null
    //   218: astore_3
    //   219: aload_3
    //   220: ifnull +7 -> 227
    //   223: aload_3
    //   224: invokevirtual 108	java/io/ObjectInputStream:close	()V
    //   227: aload 7
    //   229: invokevirtual 109	java/io/ByteArrayInputStream:close	()V
    //   232: aload 4
    //   234: athrow
    //   235: astore_3
    //   236: ldc 122
    //   238: ldc 124
    //   240: aload_3
    //   241: invokestatic 129	com/tencent/open/a/h:b	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   244: aload_1
    //   245: ifnull +9 -> 254
    //   248: aload_1
    //   249: invokeinterface 119 1 0
    //   254: aload 5
    //   256: ifnull -71 -> 185
    //   259: aload 5
    //   261: invokevirtual 120	android/database/sqlite/SQLiteDatabase:close	()V
    //   264: goto -79 -> 185
    //   267: astore_1
    //   268: aload_0
    //   269: monitorexit
    //   270: aload_1
    //   271: athrow
    //   272: astore_3
    //   273: aconst_null
    //   274: astore_1
    //   275: aload_1
    //   276: ifnull +9 -> 285
    //   279: aload_1
    //   280: invokeinterface 119 1 0
    //   285: aload 5
    //   287: ifnull +8 -> 295
    //   290: aload 5
    //   292: invokevirtual 120	android/database/sqlite/SQLiteDatabase:close	()V
    //   295: aload_3
    //   296: athrow
    //   297: astore_3
    //   298: goto -165 -> 133
    //   301: astore_3
    //   302: aload 4
    //   304: astore_3
    //   305: goto -164 -> 141
    //   308: astore_3
    //   309: goto -110 -> 199
    //   312: astore_3
    //   313: goto -86 -> 227
    //   316: astore_3
    //   317: goto -85 -> 232
    //   320: astore_3
    //   321: goto -46 -> 275
    //   324: astore_3
    //   325: goto -50 -> 275
    //   328: astore_3
    //   329: aload 4
    //   331: astore_1
    //   332: goto -96 -> 236
    //   335: astore 4
    //   337: goto -118 -> 219
    //   340: astore 4
    //   342: goto -151 -> 191
    //
    // Exception table:
    //   from	to	target	type
    //   110	120	188	java/lang/Exception
    //   199	204	209	java/io/IOException
    //   110	120	215	finally
    //   71	87	235	java/lang/Exception
    //   87	110	235	java/lang/Exception
    //   129	133	235	java/lang/Exception
    //   133	138	235	java/lang/Exception
    //   145	154	235	java/lang/Exception
    //   154	161	235	java/lang/Exception
    //   195	199	235	java/lang/Exception
    //   199	204	235	java/lang/Exception
    //   223	227	235	java/lang/Exception
    //   227	232	235	java/lang/Exception
    //   232	235	235	java/lang/Exception
    //   5	22	267	finally
    //   31	37	267	finally
    //   169	175	267	finally
    //   180	185	267	finally
    //   248	254	267	finally
    //   259	264	267	finally
    //   279	285	267	finally
    //   290	295	267	finally
    //   295	297	267	finally
    //   45	67	272	finally
    //   129	133	297	java/io/IOException
    //   133	138	301	java/io/IOException
    //   195	199	308	java/io/IOException
    //   223	227	312	java/io/IOException
    //   227	232	316	java/io/IOException
    //   71	87	320	finally
    //   87	110	320	finally
    //   129	133	320	finally
    //   133	138	320	finally
    //   145	154	320	finally
    //   154	161	320	finally
    //   195	199	320	finally
    //   199	204	320	finally
    //   223	227	320	finally
    //   227	232	320	finally
    //   232	235	320	finally
    //   236	244	324	finally
    //   45	67	328	java/lang/Exception
    //   120	129	335	finally
    //   120	129	340	java/lang/Exception
  }

  // ERROR //
  public final void a(String paramString, java.util.List<java.io.Serializable> paramList)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 6
    //   3: aload_0
    //   4: monitorenter
    //   5: aload_2
    //   6: invokeinterface 135 1 0
    //   11: istore_3
    //   12: iload_3
    //   13: ifne +6 -> 19
    //   16: aload_0
    //   17: monitorexit
    //   18: return
    //   19: iload_3
    //   20: bipush 20
    //   22: if_icmpgt +152 -> 174
    //   25: aload_1
    //   26: invokestatic 55	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   29: ifne -13 -> 16
    //   32: aload_0
    //   33: aload_1
    //   34: invokevirtual 138	com/tencent/open/b/f:b	(Ljava/lang/String;)V
    //   37: aload_0
    //   38: invokevirtual 141	com/tencent/open/b/f:getWritableDatabase	()Landroid/database/sqlite/SQLiteDatabase;
    //   41: astore 7
    //   43: aload 7
    //   45: ifnull -29 -> 16
    //   48: aload 7
    //   50: invokevirtual 144	android/database/sqlite/SQLiteDatabase:beginTransaction	()V
    //   53: new 146	android/content/ContentValues
    //   56: dup
    //   57: invokespecial 147	android/content/ContentValues:<init>	()V
    //   60: astore 9
    //   62: iconst_0
    //   63: istore 4
    //   65: iload 4
    //   67: iload_3
    //   68: if_icmpge +190 -> 258
    //   71: aload_2
    //   72: iload 4
    //   74: invokeinterface 151 2 0
    //   79: checkcast 105	java/io/Serializable
    //   82: astore 10
    //   84: aload 10
    //   86: ifnull +74 -> 160
    //   89: aload 9
    //   91: ldc 153
    //   93: aload_1
    //   94: invokevirtual 157	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   97: new 159	java/io/ByteArrayOutputStream
    //   100: dup
    //   101: sipush 512
    //   104: invokespecial 162	java/io/ByteArrayOutputStream:<init>	(I)V
    //   107: astore 8
    //   109: new 164	java/io/ObjectOutputStream
    //   112: dup
    //   113: aload 8
    //   115: invokespecial 167	java/io/ObjectOutputStream:<init>	(Ljava/io/OutputStream;)V
    //   118: astore 5
    //   120: aload 5
    //   122: aload 10
    //   124: invokevirtual 171	java/io/ObjectOutputStream:writeObject	(Ljava/lang/Object;)V
    //   127: aload 5
    //   129: invokevirtual 172	java/io/ObjectOutputStream:close	()V
    //   132: aload 8
    //   134: invokevirtual 173	java/io/ByteArrayOutputStream:close	()V
    //   137: aload 9
    //   139: ldc 83
    //   141: aload 8
    //   143: invokevirtual 177	java/io/ByteArrayOutputStream:toByteArray	()[B
    //   146: invokevirtual 180	android/content/ContentValues:put	(Ljava/lang/String;[B)V
    //   149: aload 7
    //   151: ldc 61
    //   153: aconst_null
    //   154: aload 9
    //   156: invokevirtual 184	android/database/sqlite/SQLiteDatabase:insert	(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    //   159: pop2
    //   160: aload 9
    //   162: invokevirtual 187	android/content/ContentValues:clear	()V
    //   165: iload 4
    //   167: iconst_1
    //   168: iadd
    //   169: istore 4
    //   171: goto -106 -> 65
    //   174: bipush 20
    //   176: istore_3
    //   177: goto -152 -> 25
    //   180: astore 5
    //   182: aconst_null
    //   183: astore 5
    //   185: aload 5
    //   187: ifnull +8 -> 195
    //   190: aload 5
    //   192: invokevirtual 172	java/io/ObjectOutputStream:close	()V
    //   195: aload 8
    //   197: invokevirtual 173	java/io/ByteArrayOutputStream:close	()V
    //   200: goto -63 -> 137
    //   203: astore 5
    //   205: goto -68 -> 137
    //   208: astore_1
    //   209: aload 6
    //   211: astore_2
    //   212: aload_2
    //   213: ifnull +7 -> 220
    //   216: aload_2
    //   217: invokevirtual 172	java/io/ObjectOutputStream:close	()V
    //   220: aload 8
    //   222: invokevirtual 173	java/io/ByteArrayOutputStream:close	()V
    //   225: aload_1
    //   226: athrow
    //   227: astore_1
    //   228: ldc 122
    //   230: ldc 189
    //   232: invokestatic 192	com/tencent/open/a/h:e	(Ljava/lang/String;Ljava/lang/String;)V
    //   235: aload 7
    //   237: invokevirtual 195	android/database/sqlite/SQLiteDatabase:endTransaction	()V
    //   240: aload 7
    //   242: ifnull -226 -> 16
    //   245: aload 7
    //   247: invokevirtual 120	android/database/sqlite/SQLiteDatabase:close	()V
    //   250: goto -234 -> 16
    //   253: astore_1
    //   254: aload_0
    //   255: monitorexit
    //   256: aload_1
    //   257: athrow
    //   258: aload 7
    //   260: invokevirtual 198	android/database/sqlite/SQLiteDatabase:setTransactionSuccessful	()V
    //   263: aload 7
    //   265: invokevirtual 195	android/database/sqlite/SQLiteDatabase:endTransaction	()V
    //   268: aload 7
    //   270: ifnull -254 -> 16
    //   273: aload 7
    //   275: invokevirtual 120	android/database/sqlite/SQLiteDatabase:close	()V
    //   278: goto -262 -> 16
    //   281: astore_1
    //   282: aload 7
    //   284: invokevirtual 195	android/database/sqlite/SQLiteDatabase:endTransaction	()V
    //   287: aload 7
    //   289: ifnull +8 -> 297
    //   292: aload 7
    //   294: invokevirtual 120	android/database/sqlite/SQLiteDatabase:close	()V
    //   297: aload_1
    //   298: athrow
    //   299: astore 5
    //   301: goto -169 -> 132
    //   304: astore 5
    //   306: goto -169 -> 137
    //   309: astore 5
    //   311: goto -116 -> 195
    //   314: astore_2
    //   315: goto -95 -> 220
    //   318: astore_2
    //   319: goto -94 -> 225
    //   322: astore_1
    //   323: aload 5
    //   325: astore_2
    //   326: goto -114 -> 212
    //   329: astore 10
    //   331: goto -146 -> 185
    //
    // Exception table:
    //   from	to	target	type
    //   109	120	180	java/io/IOException
    //   195	200	203	java/io/IOException
    //   109	120	208	finally
    //   53	62	227	java/lang/Exception
    //   71	84	227	java/lang/Exception
    //   89	109	227	java/lang/Exception
    //   127	132	227	java/lang/Exception
    //   132	137	227	java/lang/Exception
    //   137	160	227	java/lang/Exception
    //   160	165	227	java/lang/Exception
    //   190	195	227	java/lang/Exception
    //   195	200	227	java/lang/Exception
    //   216	220	227	java/lang/Exception
    //   220	225	227	java/lang/Exception
    //   225	227	227	java/lang/Exception
    //   258	263	227	java/lang/Exception
    //   5	12	253	finally
    //   25	43	253	finally
    //   48	53	253	finally
    //   235	240	253	finally
    //   245	250	253	finally
    //   263	268	253	finally
    //   273	278	253	finally
    //   282	287	253	finally
    //   292	297	253	finally
    //   297	299	253	finally
    //   53	62	281	finally
    //   71	84	281	finally
    //   89	109	281	finally
    //   127	132	281	finally
    //   132	137	281	finally
    //   137	160	281	finally
    //   160	165	281	finally
    //   190	195	281	finally
    //   195	200	281	finally
    //   216	220	281	finally
    //   220	225	281	finally
    //   225	227	281	finally
    //   228	235	281	finally
    //   258	263	281	finally
    //   127	132	299	java/io/IOException
    //   132	137	304	java/io/IOException
    //   190	195	309	java/io/IOException
    //   216	220	314	java/io/IOException
    //   220	225	318	java/io/IOException
    //   120	127	322	finally
    //   120	127	329	java/io/IOException
  }

  // ERROR //
  public final void b(String paramString)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_1
    //   3: invokestatic 55	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   6: istore_2
    //   7: iload_2
    //   8: ifeq +6 -> 14
    //   11: aload_0
    //   12: monitorexit
    //   13: return
    //   14: aload_0
    //   15: invokevirtual 141	com/tencent/open/b/f:getWritableDatabase	()Landroid/database/sqlite/SQLiteDatabase;
    //   18: astore_3
    //   19: aload_3
    //   20: ifnull -9 -> 11
    //   23: aload_3
    //   24: ldc 61
    //   26: ldc 63
    //   28: iconst_1
    //   29: anewarray 12	java/lang/String
    //   32: dup
    //   33: iconst_0
    //   34: aload_1
    //   35: aastore
    //   36: invokevirtual 203	android/database/sqlite/SQLiteDatabase:delete	(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    //   39: pop
    //   40: aload_3
    //   41: ifnull -30 -> 11
    //   44: aload_3
    //   45: invokevirtual 120	android/database/sqlite/SQLiteDatabase:close	()V
    //   48: goto -37 -> 11
    //   51: astore_1
    //   52: aload_0
    //   53: monitorexit
    //   54: aload_1
    //   55: athrow
    //   56: astore_1
    //   57: ldc 122
    //   59: ldc 205
    //   61: aload_1
    //   62: invokestatic 129	com/tencent/open/a/h:b	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   65: aload_3
    //   66: ifnull -55 -> 11
    //   69: aload_3
    //   70: invokevirtual 120	android/database/sqlite/SQLiteDatabase:close	()V
    //   73: goto -62 -> 11
    //   76: astore_1
    //   77: aload_3
    //   78: ifnull +7 -> 85
    //   81: aload_3
    //   82: invokevirtual 120	android/database/sqlite/SQLiteDatabase:close	()V
    //   85: aload_1
    //   86: athrow
    //
    // Exception table:
    //   from	to	target	type
    //   2	7	51	finally
    //   14	19	51	finally
    //   44	48	51	finally
    //   69	73	51	finally
    //   81	85	51	finally
    //   85	87	51	finally
    //   23	40	56	java/lang/Exception
    //   23	40	76	finally
    //   57	65	76	finally
  }

  public final void onCreate(SQLiteDatabase paramSQLiteDatabase)
  {
    paramSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS via_cgi_report( _id INTEGER PRIMARY KEY,key TEXT,type TEXT,blob BLOB);");
  }

  public final void onUpgrade(SQLiteDatabase paramSQLiteDatabase, int paramInt1, int paramInt2)
  {
    paramSQLiteDatabase.execSQL("DROP TABLE IF EXISTS via_cgi_report");
    onCreate(paramSQLiteDatabase);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.tencent.open.b.f
 * JD-Core Version:    0.6.2
 */