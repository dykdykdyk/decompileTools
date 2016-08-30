package com.loc;

import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.text.TextUtils;
import com.autonavi.aps.amapapi.model.AmapLoc;
import org.json.JSONObject;

public final class bk
{
  private static bk b = null;
  String a = "2.0.201501131131".replace(".", "");
  private String c = null;

  public static bk a()
  {
    try
    {
      if (b == null)
        b = new bk();
      bk localbk = b;
      return localbk;
    }
    finally
    {
    }
  }

  protected final void a(Context paramContext)
    throws Exception
  {
    if (paramContext == null);
    while (true)
    {
      return;
      SQLiteDatabase localSQLiteDatabase;
      try
      {
        localSQLiteDatabase = paramContext.openOrCreateDatabase("hmdb", 0, null);
        if (!a(localSQLiteDatabase, "hist"))
        {
          if ((localSQLiteDatabase == null) || (!localSQLiteDatabase.isOpen()))
            continue;
          localSQLiteDatabase.close();
          continue;
        }
      }
      finally
      {
      }
      StringBuilder localStringBuilder1 = new StringBuilder();
      localStringBuilder1.append("SELECT feature, nb, loc FROM ");
      localStringBuilder1.append("hist").append(this.a);
      long l = by.a();
      localStringBuilder1.append(" WHERE time > ").append(l - 259200000L);
      localStringBuilder1.append(" ORDER BY time ASC;");
      try
      {
        localCursor = localSQLiteDatabase.rawQuery(localStringBuilder1.toString(), null);
        localStringBuilder2 = new StringBuilder();
        if (this.c == null)
          this.c = bf.a("MD5", paramContext.getPackageName());
        if ((localCursor != null) && (localCursor.moveToFirst()))
          do
          {
            if (!localCursor.getString(0).startsWith("{"))
              break label607;
            localObject4 = new JSONObject(localCursor.getString(0));
            localStringBuilder2.delete(0, localStringBuilder2.length());
            if (TextUtils.isEmpty(localCursor.getString(1)))
              break;
            localStringBuilder2.append(localCursor.getString(1));
            localJSONObject = new JSONObject(localCursor.getString(2));
            localObject3 = localJSONObject;
            Object localObject1 = localObject4;
            if (by.a(localJSONObject, "type"))
            {
              localJSONObject.put("type", "new");
              localObject1 = localObject4;
              localObject3 = localJSONObject;
            }
            localObject3 = new AmapLoc((JSONObject)localObject3);
            if ((!by.a((JSONObject)localObject1, "mmac")) || (!by.a((JSONObject)localObject1, "cgi")))
              break label841;
            localObject4 = ((JSONObject)localObject1).getString("cgi") + "#";
            localObject4 = (String)localObject4 + "network#";
            if (!((JSONObject)localObject1).getString("cgi").contains("#"))
              break label816;
            localObject1 = (String)localObject4 + "cgiwifi";
            localObject1 = (String)localObject1 + "&" + ((AmapLoc)localObject3).e() + "&" + ((AmapLoc)localObject3).f();
            bi.a().a((String)localObject1, localStringBuilder2, (AmapLoc)localObject3, paramContext, false);
          }
          while (localCursor.moveToNext());
        localStringBuilder2.delete(0, localStringBuilder2.length());
        if (localCursor != null)
          localCursor.close();
        localStringBuilder1.delete(0, localStringBuilder1.length());
        if ((localSQLiteDatabase == null) || (!localSQLiteDatabase.isOpen()))
          continue;
        localSQLiteDatabase.close();
      }
      catch (SQLiteException localSQLiteException)
      {
        while (true)
        {
          Cursor localCursor;
          StringBuilder localStringBuilder2;
          Object localObject4;
          JSONObject localJSONObject;
          Object localObject3;
          Object localObject2 = localSQLiteException.getMessage();
          if (!TextUtils.isEmpty((CharSequence)localObject2))
          {
            ((String)localObject2).contains("no such table");
            if (by.a((JSONObject)localObject4, "mmac"))
            {
              localStringBuilder2.append("#").append(((JSONObject)localObject4).getString("mmac"));
              localStringBuilder2.append(",access");
              continue;
              label607: localObject4 = new JSONObject(new String(bf.d(ej.a(localCursor.getString(0)), this.c), "UTF-8"));
              localStringBuilder2.delete(0, localStringBuilder2.length());
              if (!TextUtils.isEmpty(localCursor.getString(1)))
                localStringBuilder2.append(new String(bf.d(ej.a(localCursor.getString(1)), this.c), "UTF-8"));
              while (true)
              {
                localJSONObject = new JSONObject(new String(bf.d(ej.a(localCursor.getString(2)), this.c), "UTF-8"));
                localObject3 = localJSONObject;
                localObject2 = localObject4;
                if (!by.a(localJSONObject, "type"))
                  break;
                localJSONObject.put("type", "new");
                localObject3 = localJSONObject;
                localObject2 = localObject4;
                break;
                if (by.a((JSONObject)localObject4, "mmac"))
                {
                  localStringBuilder2.append("#").append(((JSONObject)localObject4).getString("mmac"));
                  localStringBuilder2.append(",access");
                }
              }
              label816: localObject2 = (String)localObject4 + "wifi";
              continue;
              label841: if (by.a((JSONObject)localObject2, "cgi"))
              {
                localObject4 = ((JSONObject)localObject2).getString("cgi") + "#";
                localObject4 = (String)localObject4 + "network#";
                if (((JSONObject)localObject2).getString("cgi").contains("#"))
                  localObject2 = (String)localObject4 + "cgi";
              }
            }
          }
          else
          {
            localCursor = null;
          }
        }
      }
    }
  }

  // ERROR //
  protected final void a(Context paramContext, String paramString1, String paramString2, long paramLong)
    throws Exception
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 8
    //   3: aload_0
    //   4: monitorenter
    //   5: aload_2
    //   6: invokestatic 137	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   9: istore 7
    //   11: iload 7
    //   13: ifne +7 -> 20
    //   16: aload_1
    //   17: ifnonnull +6 -> 23
    //   20: aload_0
    //   21: monitorexit
    //   22: return
    //   23: aload_2
    //   24: invokestatic 219	com/loc/by:c	(Ljava/lang/String;)Ljava/lang/String;
    //   27: astore 9
    //   29: aload_3
    //   30: invokestatic 219	com/loc/by:c	(Ljava/lang/String;)Ljava/lang/String;
    //   33: astore 10
    //   35: new 64	java/lang/StringBuilder
    //   38: dup
    //   39: invokespecial 65	java/lang/StringBuilder:<init>	()V
    //   42: astore_3
    //   43: aload_1
    //   44: ldc 42
    //   46: iconst_0
    //   47: aconst_null
    //   48: invokevirtual 48	android/content/Context:openOrCreateDatabase	(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;
    //   51: astore_1
    //   52: aload_3
    //   53: ldc 221
    //   55: invokevirtual 71	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   58: pop
    //   59: aload_3
    //   60: aload_0
    //   61: getfield 31	com/loc/bk:a	Ljava/lang/String;
    //   64: invokevirtual 71	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   67: pop
    //   68: aload_3
    //   69: ldc 223
    //   71: invokevirtual 71	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   74: pop
    //   75: aload_1
    //   76: aload_3
    //   77: invokevirtual 89	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   80: invokevirtual 226	android/database/sqlite/SQLiteDatabase:execSQL	(Ljava/lang/String;)V
    //   83: aload_3
    //   84: iconst_0
    //   85: aload_3
    //   86: invokevirtual 127	java/lang/StringBuilder:length	()I
    //   89: invokevirtual 131	java/lang/StringBuilder:delete	(II)Ljava/lang/StringBuilder;
    //   92: pop
    //   93: aload_3
    //   94: ldc 228
    //   96: invokevirtual 71	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   99: pop
    //   100: aload_3
    //   101: aload_0
    //   102: getfield 31	com/loc/bk:a	Ljava/lang/String;
    //   105: invokevirtual 71	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   108: pop
    //   109: aload_3
    //   110: ldc 230
    //   112: invokevirtual 71	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   115: aload 9
    //   117: invokevirtual 71	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   120: ldc 232
    //   122: invokevirtual 71	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   125: pop
    //   126: aload_1
    //   127: aload_3
    //   128: invokevirtual 89	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   131: aconst_null
    //   132: invokevirtual 93	android/database/sqlite/SQLiteDatabase:rawQuery	(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    //   135: astore_2
    //   136: aload_2
    //   137: ifnull +311 -> 448
    //   140: aload_2
    //   141: invokeinterface 191 1 0
    //   146: ifeq +302 -> 448
    //   149: aload_2
    //   150: iconst_0
    //   151: invokeinterface 236 2 0
    //   156: istore 6
    //   158: iload 6
    //   160: ifle +201 -> 361
    //   163: new 238	android/content/ContentValues
    //   166: dup
    //   167: invokespecial 239	android/content/ContentValues:<init>	()V
    //   170: astore 8
    //   172: aload 8
    //   174: ldc 241
    //   176: iload 6
    //   178: iconst_1
    //   179: iadd
    //   180: invokestatic 247	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   183: invokevirtual 250	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/Integer;)V
    //   186: aload 8
    //   188: ldc 252
    //   190: aload 10
    //   192: invokevirtual 255	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   195: aload 8
    //   197: ldc_w 257
    //   200: lload 4
    //   202: invokestatic 262	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   205: invokevirtual 265	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/Long;)V
    //   208: new 64	java/lang/StringBuilder
    //   211: dup
    //   212: ldc_w 267
    //   215: invokespecial 268	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   218: aload 9
    //   220: invokevirtual 71	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   223: ldc_w 270
    //   226: invokevirtual 71	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   229: invokevirtual 89	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   232: astore 9
    //   234: aload_1
    //   235: new 64	java/lang/StringBuilder
    //   238: dup
    //   239: ldc_w 272
    //   242: invokespecial 268	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   245: aload_0
    //   246: getfield 31	com/loc/bk:a	Ljava/lang/String;
    //   249: invokevirtual 71	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   252: invokevirtual 89	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   255: aload 8
    //   257: aload 9
    //   259: aconst_null
    //   260: invokevirtual 276	android/database/sqlite/SQLiteDatabase:update	(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    //   263: pop
    //   264: aload_2
    //   265: ifnull +9 -> 274
    //   268: aload_2
    //   269: invokeinterface 192 1 0
    //   274: aload_3
    //   275: iconst_0
    //   276: aload_3
    //   277: invokevirtual 127	java/lang/StringBuilder:length	()I
    //   280: invokevirtual 131	java/lang/StringBuilder:delete	(II)Ljava/lang/StringBuilder;
    //   283: pop
    //   284: aload_1
    //   285: ifnull -265 -> 20
    //   288: aload_1
    //   289: invokevirtual 59	android/database/sqlite/SQLiteDatabase:isOpen	()Z
    //   292: ifeq -272 -> 20
    //   295: aload_1
    //   296: invokevirtual 62	android/database/sqlite/SQLiteDatabase:close	()V
    //   299: goto -279 -> 20
    //   302: astore_1
    //   303: aload_0
    //   304: monitorexit
    //   305: aload_1
    //   306: athrow
    //   307: astore_2
    //   308: aload_2
    //   309: invokevirtual 195	android/database/sqlite/SQLiteException:getMessage	()Ljava/lang/String;
    //   312: astore 11
    //   314: aload 8
    //   316: astore_2
    //   317: aload 11
    //   319: invokestatic 137	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   322: ifne -186 -> 136
    //   325: aload 11
    //   327: ldc 197
    //   329: invokevirtual 167	java/lang/String:contains	(Ljava/lang/CharSequence;)Z
    //   332: pop
    //   333: aload 8
    //   335: astore_2
    //   336: goto -200 -> 136
    //   339: astore_3
    //   340: aload_1
    //   341: astore_2
    //   342: aload_3
    //   343: astore_1
    //   344: aload_2
    //   345: ifnull +14 -> 359
    //   348: aload_2
    //   349: invokevirtual 59	android/database/sqlite/SQLiteDatabase:isOpen	()Z
    //   352: ifeq +7 -> 359
    //   355: aload_2
    //   356: invokevirtual 62	android/database/sqlite/SQLiteDatabase:close	()V
    //   359: aload_1
    //   360: athrow
    //   361: aload_3
    //   362: iconst_0
    //   363: aload_3
    //   364: invokevirtual 127	java/lang/StringBuilder:length	()I
    //   367: invokevirtual 131	java/lang/StringBuilder:delete	(II)Ljava/lang/StringBuilder;
    //   370: pop
    //   371: aload_3
    //   372: ldc_w 278
    //   375: invokevirtual 71	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   378: pop
    //   379: aload_3
    //   380: ldc_w 272
    //   383: invokevirtual 71	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   386: aload_0
    //   387: getfield 31	com/loc/bk:a	Ljava/lang/String;
    //   390: invokevirtual 71	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   393: pop
    //   394: aload_3
    //   395: ldc_w 280
    //   398: invokevirtual 71	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   401: pop
    //   402: aload_1
    //   403: aload_3
    //   404: invokevirtual 89	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   407: iconst_4
    //   408: anewarray 4	java/lang/Object
    //   411: dup
    //   412: iconst_0
    //   413: aload 9
    //   415: aastore
    //   416: dup
    //   417: iconst_1
    //   418: iconst_1
    //   419: invokestatic 247	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   422: aastore
    //   423: dup
    //   424: iconst_2
    //   425: aload 10
    //   427: aastore
    //   428: dup
    //   429: iconst_3
    //   430: lload 4
    //   432: invokestatic 262	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   435: aastore
    //   436: invokevirtual 283	android/database/sqlite/SQLiteDatabase:execSQL	(Ljava/lang/String;[Ljava/lang/Object;)V
    //   439: goto -175 -> 264
    //   442: astore_1
    //   443: aconst_null
    //   444: astore_2
    //   445: goto -101 -> 344
    //   448: iconst_0
    //   449: istore 6
    //   451: goto -293 -> 158
    //
    // Exception table:
    //   from	to	target	type
    //   5	11	302	finally
    //   23	35	302	finally
    //   288	299	302	finally
    //   348	359	302	finally
    //   359	361	302	finally
    //   126	136	307	android/database/sqlite/SQLiteException
    //   52	126	339	finally
    //   126	136	339	finally
    //   140	158	339	finally
    //   163	264	339	finally
    //   268	274	339	finally
    //   274	284	339	finally
    //   308	314	339	finally
    //   317	333	339	finally
    //   361	439	339	finally
    //   35	52	442	finally
  }

  protected final void a(String paramString, AmapLoc paramAmapLoc, StringBuilder paramStringBuilder, Context paramContext)
    throws Exception
  {
    if (paramContext == null);
    label107: 
    do
    {
      return;
      if (this.c == null)
        this.c = bf.a("MD5", paramContext.getPackageName());
      JSONObject localJSONObject = new JSONObject();
      Object localObject = paramString;
      if (paramString.contains("&"))
        localObject = paramString.substring(0, paramString.indexOf("&"));
      paramString = ((String)localObject).substring(((String)localObject).lastIndexOf("#") + 1);
      if (paramString.equals("cgi"))
        localJSONObject.put("cgi", ((String)localObject).substring(0, ((String)localObject).length() - 12));
      while ((by.a(localJSONObject, "cgi")) || (by.a(localJSONObject, "mmac")))
      {
        paramString = new StringBuilder();
        paramContext = paramContext.openOrCreateDatabase("hmdb", 0, null);
        paramString.append("CREATE TABLE IF NOT EXISTS hist");
        paramString.append(this.a);
        paramString.append(" (feature VARCHAR PRIMARY KEY, nb VARCHAR, loc VARCHAR, time VARCHAR);");
        paramContext.execSQL(paramString.toString());
        paramString.delete(0, paramString.length());
        paramString.append("REPLACE INTO ");
        paramString.append("hist").append(this.a);
        paramString.append(" VALUES (?, ?, ?, ?)");
        localObject = new Object[4];
        localObject[0] = bf.c(localJSONObject.toString().getBytes("UTF-8"), this.c);
        localObject[1] = bf.c(paramStringBuilder.toString().getBytes("UTF-8"), this.c);
        localObject[2] = bf.c(paramAmapLoc.E().getBytes("UTF-8"), this.c);
        localObject[3] = Long.valueOf(paramAmapLoc.k());
        int i = 0;
        while (i < 3)
        {
          localObject[i] = ej.a((byte[])(byte[])localObject[i]);
          i += 1;
        }
        if ((!TextUtils.isEmpty(paramStringBuilder)) && (paramStringBuilder.indexOf("access") != -1))
        {
          i = paramString.length();
          localJSONObject.put("cgi", ((String)localObject).substring(0, ((String)localObject).length() - (i + 9)));
          paramString = paramStringBuilder.toString().split(",access");
          if (!paramString[0].contains("#"))
            break label434;
        }
      }
      for (paramString = paramString[0].substring(paramString[0].lastIndexOf("#") + 1); ; paramString = paramString[0])
      {
        localJSONObject.put("mmac", paramString);
        break label107;
        break;
      }
      paramContext.execSQL(paramString.toString(), (Object[])localObject);
      paramString.delete(0, paramString.length());
      paramString.append("SELECT COUNT(*) AS total FROM ");
      paramString.append("hist").append(this.a).append(";");
      paramAmapLoc = paramContext.rawQuery(paramString.toString(), null);
      if (paramAmapLoc != null)
        paramAmapLoc.moveToFirst();
      if (paramAmapLoc != null)
        paramAmapLoc.close();
      paramString.delete(0, paramString.length());
    }
    while ((paramContext == null) || (!paramContext.isOpen()));
    label434: paramContext.close();
  }

  // ERROR //
  final boolean a(SQLiteDatabase paramSQLiteDatabase, String paramString)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 6
    //   3: iconst_0
    //   4: istore 4
    //   6: iconst_0
    //   7: istore_3
    //   8: aload_2
    //   9: invokestatic 137	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   12: ifeq +9 -> 21
    //   15: iload_3
    //   16: istore 4
    //   18: iload 4
    //   20: ireturn
    //   21: aload 6
    //   23: astore 5
    //   25: new 64	java/lang/StringBuilder
    //   28: dup
    //   29: invokespecial 65	java/lang/StringBuilder:<init>	()V
    //   32: astore 7
    //   34: aload 6
    //   36: astore 5
    //   38: aload 7
    //   40: ldc_w 337
    //   43: invokevirtual 71	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   46: pop
    //   47: aload 6
    //   49: astore 5
    //   51: aload 7
    //   53: aload_2
    //   54: invokevirtual 340	java/lang/String:trim	()Ljava/lang/String;
    //   57: invokevirtual 71	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   60: aload_0
    //   61: getfield 31	com/loc/bk:a	Ljava/lang/String;
    //   64: invokevirtual 71	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   67: ldc_w 342
    //   70: invokevirtual 71	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   73: pop
    //   74: aload 6
    //   76: astore 5
    //   78: aload_1
    //   79: aload 7
    //   81: invokevirtual 89	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   84: aconst_null
    //   85: invokevirtual 93	android/database/sqlite/SQLiteDatabase:rawQuery	(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    //   88: astore_1
    //   89: iload 4
    //   91: istore_3
    //   92: aload_1
    //   93: ifnull +36 -> 129
    //   96: iload 4
    //   98: istore_3
    //   99: aload_1
    //   100: astore 5
    //   102: aload_1
    //   103: invokeinterface 108 1 0
    //   108: ifeq +21 -> 129
    //   111: iload 4
    //   113: istore_3
    //   114: aload_1
    //   115: astore 5
    //   117: aload_1
    //   118: iconst_0
    //   119: invokeinterface 236 2 0
    //   124: ifle +5 -> 129
    //   127: iconst_1
    //   128: istore_3
    //   129: aload_1
    //   130: astore 5
    //   132: aload 7
    //   134: iconst_0
    //   135: aload 7
    //   137: invokevirtual 127	java/lang/StringBuilder:length	()I
    //   140: invokevirtual 131	java/lang/StringBuilder:delete	(II)Ljava/lang/StringBuilder;
    //   143: pop
    //   144: iload_3
    //   145: istore 4
    //   147: aload_1
    //   148: ifnull -130 -> 18
    //   151: aload_1
    //   152: invokeinterface 192 1 0
    //   157: iload_3
    //   158: ireturn
    //   159: astore_1
    //   160: aconst_null
    //   161: astore_1
    //   162: aload_1
    //   163: ifnull +30 -> 193
    //   166: aload_1
    //   167: invokeinterface 192 1 0
    //   172: iconst_1
    //   173: ireturn
    //   174: astore_1
    //   175: aload 5
    //   177: ifnull +10 -> 187
    //   180: aload 5
    //   182: invokeinterface 192 1 0
    //   187: aload_1
    //   188: athrow
    //   189: astore_2
    //   190: goto -28 -> 162
    //   193: iconst_1
    //   194: ireturn
    //
    // Exception table:
    //   from	to	target	type
    //   25	34	159	java/lang/Exception
    //   38	47	159	java/lang/Exception
    //   51	74	159	java/lang/Exception
    //   78	89	159	java/lang/Exception
    //   25	34	174	finally
    //   38	47	174	finally
    //   51	74	174	finally
    //   78	89	174	finally
    //   102	111	174	finally
    //   117	127	174	finally
    //   132	144	174	finally
    //   102	111	189	java/lang/Exception
    //   117	127	189	java/lang/Exception
    //   132	144	189	java/lang/Exception
  }

  // ERROR //
  protected final void b(Context paramContext)
    throws Exception
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 6
    //   3: aload_0
    //   4: monitorenter
    //   5: getstatic 347	com/loc/at:a	Z
    //   8: istore_3
    //   9: iload_3
    //   10: ifeq +7 -> 17
    //   13: aload_1
    //   14: ifnonnull +6 -> 20
    //   17: aload_0
    //   18: monitorexit
    //   19: return
    //   20: aload_1
    //   21: ldc 42
    //   23: iconst_0
    //   24: aconst_null
    //   25: invokevirtual 48	android/content/Context:openOrCreateDatabase	(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;
    //   28: astore 9
    //   30: aload_0
    //   31: aload 9
    //   33: ldc_w 272
    //   36: invokevirtual 53	com/loc/bk:a	(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z
    //   39: ifne +54 -> 93
    //   42: aload 9
    //   44: ifnull -27 -> 17
    //   47: aload 9
    //   49: invokevirtual 59	android/database/sqlite/SQLiteDatabase:isOpen	()Z
    //   52: ifeq -35 -> 17
    //   55: aload 9
    //   57: invokevirtual 62	android/database/sqlite/SQLiteDatabase:close	()V
    //   60: goto -43 -> 17
    //   63: astore_1
    //   64: aload 9
    //   66: astore 6
    //   68: aload 6
    //   70: ifnull +16 -> 86
    //   73: aload 6
    //   75: invokevirtual 59	android/database/sqlite/SQLiteDatabase:isOpen	()Z
    //   78: ifeq +8 -> 86
    //   81: aload 6
    //   83: invokevirtual 62	android/database/sqlite/SQLiteDatabase:close	()V
    //   86: aload_1
    //   87: athrow
    //   88: astore_1
    //   89: aload_0
    //   90: monitorexit
    //   91: aload_1
    //   92: athrow
    //   93: invokestatic 76	com/loc/by:a	()J
    //   96: lstore 4
    //   98: new 64	java/lang/StringBuilder
    //   101: dup
    //   102: invokespecial 65	java/lang/StringBuilder:<init>	()V
    //   105: astore 7
    //   107: aload 7
    //   109: ldc_w 349
    //   112: invokevirtual 71	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   115: pop
    //   116: aload 7
    //   118: ldc_w 272
    //   121: invokevirtual 71	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   124: aload_0
    //   125: getfield 31	com/loc/bk:a	Ljava/lang/String;
    //   128: invokevirtual 71	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   131: pop
    //   132: aload 7
    //   134: ldc 78
    //   136: invokevirtual 71	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   139: lload 4
    //   141: ldc2_w 350
    //   144: lsub
    //   145: invokevirtual 83	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   148: pop
    //   149: aload 7
    //   151: ldc_w 353
    //   154: invokevirtual 71	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   157: pop
    //   158: aload 7
    //   160: sipush 500
    //   163: invokevirtual 356	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   166: ldc_w 335
    //   169: invokevirtual 71	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   172: pop
    //   173: aload 9
    //   175: aload 7
    //   177: invokevirtual 89	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   180: aconst_null
    //   181: invokevirtual 93	android/database/sqlite/SQLiteDatabase:rawQuery	(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    //   184: astore 6
    //   186: aload 7
    //   188: iconst_0
    //   189: aload 7
    //   191: invokevirtual 127	java/lang/StringBuilder:length	()I
    //   194: invokevirtual 131	java/lang/StringBuilder:delete	(II)Ljava/lang/StringBuilder;
    //   197: pop
    //   198: aload 6
    //   200: ifnull +99 -> 299
    //   203: aload 6
    //   205: invokeinterface 108 1 0
    //   210: pop
    //   211: aload 6
    //   213: iconst_0
    //   214: invokeinterface 112 2 0
    //   219: astore 8
    //   221: aload 6
    //   223: iconst_1
    //   224: invokeinterface 236 2 0
    //   229: istore_2
    //   230: aload 6
    //   232: iconst_2
    //   233: invokeinterface 112 2 0
    //   238: astore 10
    //   240: aload 6
    //   242: iconst_3
    //   243: invokeinterface 360 2 0
    //   248: lstore 4
    //   250: aload 10
    //   252: astore 7
    //   254: aload 10
    //   256: ldc 114
    //   258: invokevirtual 118	java/lang/String:startsWith	(Ljava/lang/String;)Z
    //   261: ifne +13 -> 274
    //   264: invokestatic 363	com/loc/by:j	()Ljava/lang/String;
    //   267: astore 8
    //   269: invokestatic 363	com/loc/by:j	()Ljava/lang/String;
    //   272: astore 7
    //   274: invokestatic 368	com/loc/bm:a	()Lcom/loc/bm;
    //   277: aload_1
    //   278: aload 8
    //   280: aload 7
    //   282: iload_2
    //   283: lload 4
    //   285: iconst_0
    //   286: invokevirtual 371	com/loc/bm:a	(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IJZ)V
    //   289: aload 6
    //   291: invokeinterface 191 1 0
    //   296: ifne -85 -> 211
    //   299: aload 6
    //   301: ifnull +10 -> 311
    //   304: aload 6
    //   306: invokeinterface 192 1 0
    //   311: aload 9
    //   313: ifnull -296 -> 17
    //   316: aload 9
    //   318: invokevirtual 59	android/database/sqlite/SQLiteDatabase:isOpen	()Z
    //   321: ifeq -304 -> 17
    //   324: aload 9
    //   326: invokevirtual 62	android/database/sqlite/SQLiteDatabase:close	()V
    //   329: goto -312 -> 17
    //   332: astore 6
    //   334: aload 6
    //   336: invokevirtual 195	android/database/sqlite/SQLiteException:getMessage	()Ljava/lang/String;
    //   339: astore 6
    //   341: aload 6
    //   343: invokestatic 137	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   346: ifne +11 -> 357
    //   349: aload 6
    //   351: ldc 197
    //   353: invokevirtual 167	java/lang/String:contains	(Ljava/lang/CharSequence;)Z
    //   356: pop
    //   357: aconst_null
    //   358: astore 6
    //   360: goto -174 -> 186
    //   363: astore_1
    //   364: goto -296 -> 68
    //
    // Exception table:
    //   from	to	target	type
    //   30	42	63	finally
    //   47	60	63	finally
    //   93	173	63	finally
    //   173	186	63	finally
    //   186	198	63	finally
    //   203	211	63	finally
    //   211	250	63	finally
    //   254	274	63	finally
    //   274	299	63	finally
    //   304	311	63	finally
    //   334	357	63	finally
    //   5	9	88	finally
    //   73	86	88	finally
    //   86	88	88	finally
    //   316	329	88	finally
    //   173	186	332	android/database/sqlite/SQLiteException
    //   20	30	363	finally
  }

  // ERROR //
  public final java.util.ArrayList<String> c(Context paramContext)
    throws Exception
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 4
    //   3: aload_0
    //   4: monitorenter
    //   5: aload_1
    //   6: ifnonnull +10 -> 16
    //   9: aload 4
    //   11: astore_1
    //   12: aload_0
    //   13: monitorexit
    //   14: aload_1
    //   15: areturn
    //   16: aload_1
    //   17: ldc 42
    //   19: iconst_0
    //   20: aconst_null
    //   21: invokevirtual 48	android/content/Context:openOrCreateDatabase	(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;
    //   24: astore 5
    //   26: aload_0
    //   27: aload 5
    //   29: ldc_w 272
    //   32: invokevirtual 53	com/loc/bk:a	(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z
    //   35: ifne +63 -> 98
    //   38: aload 4
    //   40: astore_1
    //   41: aload 5
    //   43: ifnull -31 -> 12
    //   46: aload 4
    //   48: astore_1
    //   49: aload 5
    //   51: invokevirtual 59	android/database/sqlite/SQLiteDatabase:isOpen	()Z
    //   54: ifeq -42 -> 12
    //   57: aload 5
    //   59: invokevirtual 62	android/database/sqlite/SQLiteDatabase:close	()V
    //   62: aload 4
    //   64: astore_1
    //   65: goto -53 -> 12
    //   68: astore_1
    //   69: aload 5
    //   71: astore 4
    //   73: aload 4
    //   75: ifnull +16 -> 91
    //   78: aload 4
    //   80: invokevirtual 59	android/database/sqlite/SQLiteDatabase:isOpen	()Z
    //   83: ifeq +8 -> 91
    //   86: aload 4
    //   88: invokevirtual 62	android/database/sqlite/SQLiteDatabase:close	()V
    //   91: aload_1
    //   92: athrow
    //   93: astore_1
    //   94: aload_0
    //   95: monitorexit
    //   96: aload_1
    //   97: athrow
    //   98: new 374	java/util/ArrayList
    //   101: dup
    //   102: invokespecial 375	java/util/ArrayList:<init>	()V
    //   105: astore 6
    //   107: invokestatic 76	com/loc/by:a	()J
    //   110: lstore_2
    //   111: new 64	java/lang/StringBuilder
    //   114: dup
    //   115: ldc_w 272
    //   118: invokespecial 268	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   121: aload_0
    //   122: getfield 31	com/loc/bk:a	Ljava/lang/String;
    //   125: invokevirtual 71	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   128: invokevirtual 89	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   131: astore_1
    //   132: new 64	java/lang/StringBuilder
    //   135: dup
    //   136: invokespecial 65	java/lang/StringBuilder:<init>	()V
    //   139: astore 7
    //   141: aload 7
    //   143: ldc_w 377
    //   146: invokevirtual 71	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   149: pop
    //   150: aload 7
    //   152: aload_1
    //   153: invokevirtual 71	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   156: pop
    //   157: aload 7
    //   159: ldc_w 379
    //   162: invokevirtual 71	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   165: iconst_1
    //   166: anewarray 25	java/lang/String
    //   169: dup
    //   170: iconst_0
    //   171: lload_2
    //   172: ldc2_w 350
    //   175: lsub
    //   176: invokestatic 382	java/lang/String:valueOf	(J)Ljava/lang/String;
    //   179: aastore
    //   180: iconst_0
    //   181: aaload
    //   182: invokevirtual 71	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   185: ldc_w 335
    //   188: invokevirtual 71	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   191: pop
    //   192: aload 5
    //   194: aload 7
    //   196: invokevirtual 89	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   199: aconst_null
    //   200: invokevirtual 93	android/database/sqlite/SQLiteDatabase:rawQuery	(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    //   203: astore 7
    //   205: aload 7
    //   207: ifnull +63 -> 270
    //   210: aload 7
    //   212: invokeinterface 108 1 0
    //   217: ifeq +53 -> 270
    //   220: aload 7
    //   222: iconst_0
    //   223: invokeinterface 112 2 0
    //   228: astore_1
    //   229: aload 7
    //   231: iconst_2
    //   232: invokeinterface 112 2 0
    //   237: ldc 114
    //   239: invokevirtual 118	java/lang/String:startsWith	(Ljava/lang/String;)Z
    //   242: ifne +11 -> 253
    //   245: invokestatic 363	com/loc/by:j	()Ljava/lang/String;
    //   248: astore_1
    //   249: invokestatic 363	com/loc/by:j	()Ljava/lang/String;
    //   252: pop
    //   253: aload 6
    //   255: aload_1
    //   256: invokevirtual 385	java/util/ArrayList:add	(Ljava/lang/Object;)Z
    //   259: pop
    //   260: aload 7
    //   262: invokeinterface 191 1 0
    //   267: ifne -47 -> 220
    //   270: aload 7
    //   272: ifnull +10 -> 282
    //   275: aload 7
    //   277: invokeinterface 192 1 0
    //   282: aload 5
    //   284: ifnull +16 -> 300
    //   287: aload 5
    //   289: invokevirtual 59	android/database/sqlite/SQLiteDatabase:isOpen	()Z
    //   292: ifeq +8 -> 300
    //   295: aload 5
    //   297: invokevirtual 62	android/database/sqlite/SQLiteDatabase:close	()V
    //   300: aload 6
    //   302: astore_1
    //   303: goto -291 -> 12
    //   306: astore_1
    //   307: aload_1
    //   308: invokevirtual 195	android/database/sqlite/SQLiteException:getMessage	()Ljava/lang/String;
    //   311: astore_1
    //   312: aload_1
    //   313: invokestatic 137	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   316: ifne +10 -> 326
    //   319: aload_1
    //   320: ldc 197
    //   322: invokevirtual 167	java/lang/String:contains	(Ljava/lang/CharSequence;)Z
    //   325: pop
    //   326: aload 4
    //   328: astore_1
    //   329: aload 5
    //   331: ifnull -319 -> 12
    //   334: aload 4
    //   336: astore_1
    //   337: aload 5
    //   339: invokevirtual 59	android/database/sqlite/SQLiteDatabase:isOpen	()Z
    //   342: ifeq -330 -> 12
    //   345: aload 5
    //   347: invokevirtual 62	android/database/sqlite/SQLiteDatabase:close	()V
    //   350: aload 4
    //   352: astore_1
    //   353: goto -341 -> 12
    //   356: astore_1
    //   357: aconst_null
    //   358: astore 4
    //   360: goto -287 -> 73
    //
    // Exception table:
    //   from	to	target	type
    //   26	38	68	finally
    //   49	62	68	finally
    //   98	111	68	finally
    //   111	205	68	finally
    //   210	220	68	finally
    //   220	229	68	finally
    //   229	253	68	finally
    //   253	270	68	finally
    //   275	282	68	finally
    //   307	326	68	finally
    //   78	91	93	finally
    //   91	93	93	finally
    //   287	300	93	finally
    //   337	350	93	finally
    //   111	205	306	android/database/sqlite/SQLiteException
    //   210	220	306	android/database/sqlite/SQLiteException
    //   220	229	306	android/database/sqlite/SQLiteException
    //   229	253	306	android/database/sqlite/SQLiteException
    //   253	270	306	android/database/sqlite/SQLiteException
    //   275	282	306	android/database/sqlite/SQLiteException
    //   16	26	356	finally
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.loc.bk
 * JD-Core Version:    0.6.2
 */