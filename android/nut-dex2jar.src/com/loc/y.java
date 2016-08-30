package com.loc;

import java.text.SimpleDateFormat;
import java.util.Locale;

public final class y
{
  static String a;

  public static void a(String paramString1, String paramString2)
  {
    try
    {
      StringBuilder localStringBuilder = new StringBuilder(200);
      localStringBuilder.delete(0, localStringBuilder.length());
      long l = System.currentTimeMillis();
      Object localObject = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss", Locale.US);
      if (l > 0L);
      for (localObject = ((SimpleDateFormat)localObject).format(Long.valueOf(l)); ; localObject = "0000-00-00-00-00-00")
      {
        localStringBuilder.append((String)localObject);
        localStringBuilder.append("#");
        localStringBuilder.append(paramString2).append("\r\n");
        a(paramString1, localStringBuilder.toString().getBytes("UTF-8"));
        return;
      }
    }
    catch (Throwable paramString1)
    {
      while (true)
        paramString1.printStackTrace();
    }
    finally
    {
    }
    throw paramString1;
  }

  // ERROR //
  private static void a(String paramString, byte[] paramArrayOfByte)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 7
    //   3: aconst_null
    //   4: astore 6
    //   6: aconst_null
    //   7: astore 5
    //   9: aconst_null
    //   10: astore 4
    //   12: iconst_1
    //   13: istore_2
    //   14: ldc 2
    //   16: monitorenter
    //   17: invokestatic 91	android/os/Environment:getExternalStorageState	()Ljava/lang/String;
    //   20: ldc 93
    //   22: invokevirtual 97	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   25: istore_3
    //   26: iload_3
    //   27: ifne +31 -> 58
    //   30: iconst_0
    //   31: ifeq +11 -> 42
    //   34: new 99	java/lang/NullPointerException
    //   37: dup
    //   38: invokespecial 101	java/lang/NullPointerException:<init>	()V
    //   41: athrow
    //   42: iconst_0
    //   43: ifeq +11 -> 54
    //   46: new 99	java/lang/NullPointerException
    //   49: dup
    //   50: invokespecial 101	java/lang/NullPointerException:<init>	()V
    //   53: athrow
    //   54: ldc 2
    //   56: monitorexit
    //   57: return
    //   58: new 103	java/io/File
    //   61: dup
    //   62: aload_0
    //   63: invokespecial 106	java/io/File:<init>	(Ljava/lang/String;)V
    //   66: astore 9
    //   68: aload 9
    //   70: invokevirtual 110	java/io/File:getParentFile	()Ljava/io/File;
    //   73: astore 8
    //   75: aload 8
    //   77: invokevirtual 114	java/io/File:exists	()Z
    //   80: ifne +9 -> 89
    //   83: aload 8
    //   85: invokevirtual 117	java/io/File:mkdirs	()Z
    //   88: istore_2
    //   89: iload_2
    //   90: ifne +41 -> 131
    //   93: iconst_0
    //   94: ifeq +11 -> 105
    //   97: new 99	java/lang/NullPointerException
    //   100: dup
    //   101: invokespecial 101	java/lang/NullPointerException:<init>	()V
    //   104: athrow
    //   105: iconst_0
    //   106: ifeq -52 -> 54
    //   109: new 99	java/lang/NullPointerException
    //   112: dup
    //   113: invokespecial 101	java/lang/NullPointerException:<init>	()V
    //   116: athrow
    //   117: astore_0
    //   118: aload_0
    //   119: invokevirtual 81	java/lang/Throwable:printStackTrace	()V
    //   122: goto -68 -> 54
    //   125: astore_0
    //   126: ldc 2
    //   128: monitorexit
    //   129: aload_0
    //   130: athrow
    //   131: aload 9
    //   133: invokevirtual 114	java/io/File:exists	()Z
    //   136: ifne +9 -> 145
    //   139: aload 9
    //   141: invokevirtual 120	java/io/File:createNewFile	()Z
    //   144: istore_2
    //   145: iload_2
    //   146: ifne +35 -> 181
    //   149: iconst_0
    //   150: ifeq +11 -> 161
    //   153: new 99	java/lang/NullPointerException
    //   156: dup
    //   157: invokespecial 101	java/lang/NullPointerException:<init>	()V
    //   160: athrow
    //   161: iconst_0
    //   162: ifeq -108 -> 54
    //   165: new 99	java/lang/NullPointerException
    //   168: dup
    //   169: invokespecial 101	java/lang/NullPointerException:<init>	()V
    //   172: athrow
    //   173: astore_0
    //   174: aload_0
    //   175: invokevirtual 81	java/lang/Throwable:printStackTrace	()V
    //   178: goto -124 -> 54
    //   181: new 122	java/io/FileOutputStream
    //   184: dup
    //   185: aload_0
    //   186: iconst_1
    //   187: invokespecial 125	java/io/FileOutputStream:<init>	(Ljava/lang/String;Z)V
    //   190: astore_0
    //   191: new 127	java/io/DataOutputStream
    //   194: dup
    //   195: aload_0
    //   196: invokespecial 130	java/io/DataOutputStream:<init>	(Ljava/io/OutputStream;)V
    //   199: astore 4
    //   201: aload 4
    //   203: aload_1
    //   204: invokevirtual 134	java/io/DataOutputStream:write	([B)V
    //   207: aload 4
    //   209: invokevirtual 137	java/io/DataOutputStream:flush	()V
    //   212: aload_0
    //   213: invokevirtual 138	java/io/FileOutputStream:flush	()V
    //   216: aload 4
    //   218: ifnull +8 -> 226
    //   221: aload 4
    //   223: invokevirtual 141	java/io/DataOutputStream:close	()V
    //   226: aload_0
    //   227: ifnull -173 -> 54
    //   230: aload_0
    //   231: invokevirtual 142	java/io/FileOutputStream:close	()V
    //   234: goto -180 -> 54
    //   237: astore_0
    //   238: aload_0
    //   239: invokevirtual 81	java/lang/Throwable:printStackTrace	()V
    //   242: goto -188 -> 54
    //   245: astore 5
    //   247: aconst_null
    //   248: astore_0
    //   249: aload 4
    //   251: astore_1
    //   252: aload 5
    //   254: astore 4
    //   256: aload 4
    //   258: invokevirtual 81	java/lang/Throwable:printStackTrace	()V
    //   261: aload_0
    //   262: ifnull +7 -> 269
    //   265: aload_0
    //   266: invokevirtual 141	java/io/DataOutputStream:close	()V
    //   269: aload_1
    //   270: ifnull -216 -> 54
    //   273: aload_1
    //   274: invokevirtual 142	java/io/FileOutputStream:close	()V
    //   277: goto -223 -> 54
    //   280: astore_0
    //   281: aload_0
    //   282: invokevirtual 81	java/lang/Throwable:printStackTrace	()V
    //   285: goto -231 -> 54
    //   288: astore 6
    //   290: aconst_null
    //   291: astore 4
    //   293: aload 7
    //   295: astore_0
    //   296: aload_0
    //   297: astore_1
    //   298: aload 4
    //   300: astore 5
    //   302: aload 6
    //   304: invokevirtual 81	java/lang/Throwable:printStackTrace	()V
    //   307: aload 4
    //   309: ifnull +8 -> 317
    //   312: aload 4
    //   314: invokevirtual 141	java/io/DataOutputStream:close	()V
    //   317: aload_0
    //   318: ifnull -264 -> 54
    //   321: aload_0
    //   322: invokevirtual 142	java/io/FileOutputStream:close	()V
    //   325: goto -271 -> 54
    //   328: astore_0
    //   329: aload_0
    //   330: invokevirtual 81	java/lang/Throwable:printStackTrace	()V
    //   333: goto -279 -> 54
    //   336: astore_1
    //   337: aconst_null
    //   338: astore 4
    //   340: aload 6
    //   342: astore_0
    //   343: aload_1
    //   344: astore 6
    //   346: aload_0
    //   347: astore_1
    //   348: aload 4
    //   350: astore 5
    //   352: aload 6
    //   354: invokevirtual 81	java/lang/Throwable:printStackTrace	()V
    //   357: aload 4
    //   359: ifnull +8 -> 367
    //   362: aload 4
    //   364: invokevirtual 141	java/io/DataOutputStream:close	()V
    //   367: aload_0
    //   368: ifnull -314 -> 54
    //   371: aload_0
    //   372: invokevirtual 142	java/io/FileOutputStream:close	()V
    //   375: goto -321 -> 54
    //   378: astore_0
    //   379: aload_0
    //   380: invokevirtual 81	java/lang/Throwable:printStackTrace	()V
    //   383: goto -329 -> 54
    //   386: astore_0
    //   387: aconst_null
    //   388: astore 4
    //   390: aload 5
    //   392: astore_1
    //   393: aload 4
    //   395: ifnull +8 -> 403
    //   398: aload 4
    //   400: invokevirtual 141	java/io/DataOutputStream:close	()V
    //   403: aload_1
    //   404: ifnull +7 -> 411
    //   407: aload_1
    //   408: invokevirtual 142	java/io/FileOutputStream:close	()V
    //   411: aload_0
    //   412: athrow
    //   413: astore 4
    //   415: aload 4
    //   417: invokevirtual 81	java/lang/Throwable:printStackTrace	()V
    //   420: goto -17 -> 403
    //   423: astore_1
    //   424: aload_1
    //   425: invokevirtual 81	java/lang/Throwable:printStackTrace	()V
    //   428: goto -17 -> 411
    //   431: astore_0
    //   432: aload_0
    //   433: invokevirtual 81	java/lang/Throwable:printStackTrace	()V
    //   436: goto -167 -> 269
    //   439: astore_1
    //   440: aload_1
    //   441: invokevirtual 81	java/lang/Throwable:printStackTrace	()V
    //   444: goto -127 -> 317
    //   447: astore_1
    //   448: aload_1
    //   449: invokevirtual 81	java/lang/Throwable:printStackTrace	()V
    //   452: goto -85 -> 367
    //   455: astore_0
    //   456: aload_0
    //   457: invokevirtual 81	java/lang/Throwable:printStackTrace	()V
    //   460: goto -418 -> 42
    //   463: astore_0
    //   464: aload_0
    //   465: invokevirtual 81	java/lang/Throwable:printStackTrace	()V
    //   468: goto -414 -> 54
    //   471: astore_0
    //   472: aload_0
    //   473: invokevirtual 81	java/lang/Throwable:printStackTrace	()V
    //   476: goto -371 -> 105
    //   479: astore_0
    //   480: aload_0
    //   481: invokevirtual 81	java/lang/Throwable:printStackTrace	()V
    //   484: goto -323 -> 161
    //   487: astore_1
    //   488: aload_1
    //   489: invokevirtual 81	java/lang/Throwable:printStackTrace	()V
    //   492: goto -266 -> 226
    //   495: astore 5
    //   497: aconst_null
    //   498: astore 4
    //   500: aload_0
    //   501: astore_1
    //   502: aload 5
    //   504: astore_0
    //   505: goto -112 -> 393
    //   508: astore 5
    //   510: aload_0
    //   511: astore_1
    //   512: aload 5
    //   514: astore_0
    //   515: goto -122 -> 393
    //   518: astore 5
    //   520: aload_0
    //   521: astore 4
    //   523: aload 5
    //   525: astore_0
    //   526: goto -133 -> 393
    //   529: astore_0
    //   530: aload 5
    //   532: astore 4
    //   534: goto -141 -> 393
    //   537: astore 6
    //   539: aconst_null
    //   540: astore 4
    //   542: goto -196 -> 346
    //   545: astore 6
    //   547: goto -201 -> 346
    //   550: astore 6
    //   552: aconst_null
    //   553: astore 4
    //   555: goto -259 -> 296
    //   558: astore 6
    //   560: goto -264 -> 296
    //   563: astore 4
    //   565: aconst_null
    //   566: astore 5
    //   568: aload_0
    //   569: astore_1
    //   570: aload 5
    //   572: astore_0
    //   573: goto -317 -> 256
    //   576: astore_1
    //   577: aload 4
    //   579: astore 5
    //   581: aload_1
    //   582: astore 4
    //   584: aload_0
    //   585: astore_1
    //   586: aload 5
    //   588: astore_0
    //   589: goto -333 -> 256
    //
    // Exception table:
    //   from	to	target	type
    //   109	117	117	java/lang/Throwable
    //   34	42	125	finally
    //   46	54	125	finally
    //   97	105	125	finally
    //   109	117	125	finally
    //   118	122	125	finally
    //   153	161	125	finally
    //   165	173	125	finally
    //   174	178	125	finally
    //   221	226	125	finally
    //   230	234	125	finally
    //   238	242	125	finally
    //   265	269	125	finally
    //   273	277	125	finally
    //   281	285	125	finally
    //   312	317	125	finally
    //   321	325	125	finally
    //   329	333	125	finally
    //   362	367	125	finally
    //   371	375	125	finally
    //   379	383	125	finally
    //   398	403	125	finally
    //   407	411	125	finally
    //   411	413	125	finally
    //   415	420	125	finally
    //   424	428	125	finally
    //   432	436	125	finally
    //   440	444	125	finally
    //   448	452	125	finally
    //   456	460	125	finally
    //   464	468	125	finally
    //   472	476	125	finally
    //   480	484	125	finally
    //   488	492	125	finally
    //   165	173	173	java/lang/Throwable
    //   230	234	237	java/lang/Throwable
    //   17	26	245	java/io/FileNotFoundException
    //   58	75	245	java/io/FileNotFoundException
    //   75	89	245	java/io/FileNotFoundException
    //   131	145	245	java/io/FileNotFoundException
    //   181	191	245	java/io/FileNotFoundException
    //   273	277	280	java/lang/Throwable
    //   17	26	288	java/io/IOException
    //   58	75	288	java/io/IOException
    //   75	89	288	java/io/IOException
    //   131	145	288	java/io/IOException
    //   181	191	288	java/io/IOException
    //   321	325	328	java/lang/Throwable
    //   17	26	336	java/lang/Throwable
    //   58	75	336	java/lang/Throwable
    //   75	89	336	java/lang/Throwable
    //   131	145	336	java/lang/Throwable
    //   181	191	336	java/lang/Throwable
    //   371	375	378	java/lang/Throwable
    //   17	26	386	finally
    //   58	75	386	finally
    //   75	89	386	finally
    //   131	145	386	finally
    //   181	191	386	finally
    //   398	403	413	java/lang/Throwable
    //   407	411	423	java/lang/Throwable
    //   265	269	431	java/lang/Throwable
    //   312	317	439	java/lang/Throwable
    //   362	367	447	java/lang/Throwable
    //   34	42	455	java/lang/Throwable
    //   46	54	463	java/lang/Throwable
    //   97	105	471	java/lang/Throwable
    //   153	161	479	java/lang/Throwable
    //   221	226	487	java/lang/Throwable
    //   191	201	495	finally
    //   201	216	508	finally
    //   256	261	518	finally
    //   302	307	529	finally
    //   352	357	529	finally
    //   191	201	537	java/lang/Throwable
    //   201	216	545	java/lang/Throwable
    //   191	201	550	java/io/IOException
    //   201	216	558	java/io/IOException
    //   191	201	563	java/io/FileNotFoundException
    //   201	216	576	java/io/FileNotFoundException
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.loc.y
 * JD-Core Version:    0.6.2
 */