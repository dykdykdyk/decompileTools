package com.amap.api.services.core;

class ax extends bg
{
  private String[] a = new String[10];
  private int b = 0;
  private boolean c = false;
  private int d = 0;
  private ax.a e;

  private void b(String paramString)
  {
    try
    {
      if (this.b > 9)
        this.b = 0;
      this.a[this.b] = paramString;
      this.b += 1;
      return;
    }
    catch (Throwable paramString)
    {
      av.a(paramString, "ANRWriter", "addData");
      paramString.printStackTrace();
    }
  }

  private String c()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    while (true)
    {
      try
      {
        i = this.b;
        if ((i >= 10) || (i > 9))
          break label87;
        localStringBuilder.append(this.a[i]);
        i += 1;
        continue;
        if (i < this.b)
        {
          localStringBuilder.append(this.a[i]);
          i += 1;
          continue;
        }
      }
      catch (Throwable localThrowable)
      {
        av.a(localThrowable, "ANRWriter", "getLogInfo");
        localThrowable.printStackTrace();
      }
      return localStringBuilder.toString();
      label87: int i = 0;
    }
  }

  protected int a()
  {
    return 2;
  }

  protected cc a(bq parambq)
  {
    try
    {
      if (this.e == null)
        this.e = new ax.a(this, parambq, null);
      return this.e;
    }
    catch (Throwable parambq)
    {
      while (true)
      {
        av.a(parambq, "ANRWriter", "getListener");
        parambq.printStackTrace();
      }
    }
  }

  protected String a(String paramString)
  {
    return ap.b(paramString);
  }

  // ERROR //
  protected String a(java.util.List<ar> paramList)
  {
    // Byte code:
    //   0: new 81	java/io/File
    //   3: dup
    //   4: ldc 83
    //   6: invokespecial 85	java/io/File:<init>	(Ljava/lang/String;)V
    //   9: astore 5
    //   11: aload 5
    //   13: invokevirtual 89	java/io/File:exists	()Z
    //   16: istore 4
    //   18: iload 4
    //   20: ifne +29 -> 49
    //   23: iconst_0
    //   24: ifeq +11 -> 35
    //   27: new 91	java/lang/NullPointerException
    //   30: dup
    //   31: invokespecial 92	java/lang/NullPointerException:<init>	()V
    //   34: athrow
    //   35: iconst_0
    //   36: ifeq +11 -> 47
    //   39: new 91	java/lang/NullPointerException
    //   42: dup
    //   43: invokespecial 92	java/lang/NullPointerException:<init>	()V
    //   46: athrow
    //   47: aconst_null
    //   48: areturn
    //   49: new 94	java/io/FileInputStream
    //   52: dup
    //   53: aload 5
    //   55: invokespecial 97	java/io/FileInputStream:<init>	(Ljava/io/File;)V
    //   58: astore 5
    //   60: new 99	com/amap/api/services/core/cd
    //   63: dup
    //   64: aload 5
    //   66: getstatic 104	com/amap/api/services/core/ce:a	Ljava/nio/charset/Charset;
    //   69: invokespecial 107	com/amap/api/services/core/cd:<init>	(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V
    //   72: astore 7
    //   74: iconst_0
    //   75: istore_3
    //   76: aload 7
    //   78: astore 8
    //   80: aload 5
    //   82: astore 6
    //   84: aload 7
    //   86: invokevirtual 109	com/amap/api/services/core/cd:a	()Ljava/lang/String;
    //   89: astore 9
    //   91: aload 7
    //   93: astore 8
    //   95: aload 5
    //   97: astore 6
    //   99: aload 9
    //   101: ldc 111
    //   103: invokevirtual 115	java/lang/String:contains	(Ljava/lang/CharSequence;)Z
    //   106: ifeq +772 -> 878
    //   109: aload 7
    //   111: astore 8
    //   113: aload 5
    //   115: astore 6
    //   117: aload 9
    //   119: ldc 117
    //   121: invokevirtual 115	java/lang/String:contains	(Ljava/lang/CharSequence;)Z
    //   124: ifne +759 -> 883
    //   127: aload 7
    //   129: astore 8
    //   131: aload 5
    //   133: astore 6
    //   135: aload 7
    //   137: invokevirtual 109	com/amap/api/services/core/cd:a	()Ljava/lang/String;
    //   140: astore 9
    //   142: goto -33 -> 109
    //   145: aload 7
    //   147: astore 8
    //   149: aload 5
    //   151: astore 6
    //   153: aload 9
    //   155: ldc 119
    //   157: invokevirtual 123	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   160: ifeq +715 -> 875
    //   163: iconst_0
    //   164: istore_2
    //   165: iload_2
    //   166: istore_3
    //   167: iload_2
    //   168: ifeq -92 -> 76
    //   171: aload 7
    //   173: astore 8
    //   175: aload 5
    //   177: astore 6
    //   179: aload_0
    //   180: aload 9
    //   182: invokespecial 125	com/amap/api/services/core/ax:b	(Ljava/lang/String;)V
    //   185: aload 7
    //   187: astore 8
    //   189: aload 5
    //   191: astore 6
    //   193: aload_0
    //   194: getfield 27	com/amap/api/services/core/ax:d	I
    //   197: istore_3
    //   198: iload_3
    //   199: iconst_5
    //   200: if_icmpne +35 -> 235
    //   203: aload 7
    //   205: ifnull +8 -> 213
    //   208: aload 7
    //   210: invokevirtual 128	com/amap/api/services/core/cd:close	()V
    //   213: aload 5
    //   215: ifnull +8 -> 223
    //   218: aload 5
    //   220: invokevirtual 131	java/io/InputStream:close	()V
    //   223: aload_0
    //   224: getfield 25	com/amap/api/services/core/ax:c	Z
    //   227: ifeq +299 -> 526
    //   230: aload_0
    //   231: invokespecial 133	com/amap/api/services/core/ax:c	()Ljava/lang/String;
    //   234: areturn
    //   235: aload 7
    //   237: astore 8
    //   239: aload 5
    //   241: astore 6
    //   243: aload_0
    //   244: getfield 25	com/amap/api/services/core/ax:c	Z
    //   247: ifne +114 -> 361
    //   250: aload 7
    //   252: astore 8
    //   254: aload 5
    //   256: astore 6
    //   258: aload_1
    //   259: invokeinterface 139 1 0
    //   264: astore 10
    //   266: iload_2
    //   267: istore_3
    //   268: aload 7
    //   270: astore 8
    //   272: aload 5
    //   274: astore 6
    //   276: aload 10
    //   278: invokeinterface 144 1 0
    //   283: ifeq -207 -> 76
    //   286: aload 7
    //   288: astore 8
    //   290: aload 5
    //   292: astore 6
    //   294: aload 10
    //   296: invokeinterface 148 1 0
    //   301: checkcast 150	com/amap/api/services/core/ar
    //   304: astore 11
    //   306: aload 7
    //   308: astore 8
    //   310: aload 5
    //   312: astore 6
    //   314: aload_0
    //   315: aload_0
    //   316: aload 11
    //   318: invokevirtual 154	com/amap/api/services/core/ar:f	()[Ljava/lang/String;
    //   321: aload 9
    //   323: invokevirtual 157	com/amap/api/services/core/ax:a	([Ljava/lang/String;Ljava/lang/String;)Z
    //   326: putfield 25	com/amap/api/services/core/ax:c	Z
    //   329: aload 7
    //   331: astore 8
    //   333: aload 5
    //   335: astore 6
    //   337: aload_0
    //   338: getfield 25	com/amap/api/services/core/ax:c	Z
    //   341: ifeq -75 -> 266
    //   344: aload 7
    //   346: astore 8
    //   348: aload 5
    //   350: astore 6
    //   352: aload_0
    //   353: aload 11
    //   355: invokevirtual 160	com/amap/api/services/core/ax:a	(Lcom/amap/api/services/core/ar;)V
    //   358: goto -92 -> 266
    //   361: aload 7
    //   363: astore 8
    //   365: aload 5
    //   367: astore 6
    //   369: aload_0
    //   370: aload_0
    //   371: getfield 27	com/amap/api/services/core/ax:d	I
    //   374: iconst_1
    //   375: iadd
    //   376: putfield 27	com/amap/api/services/core/ax:d	I
    //   379: iload_2
    //   380: istore_3
    //   381: goto -305 -> 76
    //   384: astore_1
    //   385: aload 5
    //   387: astore_1
    //   388: aload 7
    //   390: astore 5
    //   392: aload 5
    //   394: ifnull +8 -> 402
    //   397: aload 5
    //   399: invokevirtual 128	com/amap/api/services/core/cd:close	()V
    //   402: aload_1
    //   403: ifnull -180 -> 223
    //   406: aload_1
    //   407: invokevirtual 131	java/io/InputStream:close	()V
    //   410: goto -187 -> 223
    //   413: astore_1
    //   414: aload_1
    //   415: ldc 33
    //   417: ldc 162
    //   419: invokestatic 40	com/amap/api/services/core/av:a	(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    //   422: aload_1
    //   423: invokevirtual 163	java/io/IOException:printStackTrace	()V
    //   426: goto -203 -> 223
    //   429: astore 9
    //   431: aconst_null
    //   432: astore_1
    //   433: aconst_null
    //   434: astore 5
    //   436: aload_1
    //   437: astore 8
    //   439: aload 5
    //   441: astore 6
    //   443: aload 9
    //   445: ldc 33
    //   447: ldc 165
    //   449: invokestatic 40	com/amap/api/services/core/av:a	(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    //   452: aload_1
    //   453: astore 8
    //   455: aload 5
    //   457: astore 6
    //   459: aload 9
    //   461: invokevirtual 163	java/io/IOException:printStackTrace	()V
    //   464: aload_1
    //   465: ifnull +7 -> 472
    //   468: aload_1
    //   469: invokevirtual 128	com/amap/api/services/core/cd:close	()V
    //   472: aload 5
    //   474: ifnull -251 -> 223
    //   477: aload 5
    //   479: invokevirtual 131	java/io/InputStream:close	()V
    //   482: goto -259 -> 223
    //   485: astore_1
    //   486: aload_1
    //   487: ldc 33
    //   489: ldc 162
    //   491: invokestatic 40	com/amap/api/services/core/av:a	(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    //   494: goto -72 -> 422
    //   497: astore_1
    //   498: aconst_null
    //   499: astore 8
    //   501: aconst_null
    //   502: astore 5
    //   504: aload 8
    //   506: ifnull +8 -> 514
    //   509: aload 8
    //   511: invokevirtual 128	com/amap/api/services/core/cd:close	()V
    //   514: aload 5
    //   516: ifnull +8 -> 524
    //   519: aload 5
    //   521: invokevirtual 131	java/io/InputStream:close	()V
    //   524: aload_1
    //   525: athrow
    //   526: aconst_null
    //   527: areturn
    //   528: astore 5
    //   530: aload 5
    //   532: ldc 33
    //   534: ldc 167
    //   536: invokestatic 40	com/amap/api/services/core/av:a	(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    //   539: aload 5
    //   541: invokevirtual 163	java/io/IOException:printStackTrace	()V
    //   544: goto -142 -> 402
    //   547: astore 5
    //   549: aload 5
    //   551: ldc 33
    //   553: ldc 169
    //   555: invokestatic 40	com/amap/api/services/core/av:a	(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    //   558: aload 5
    //   560: invokevirtual 43	java/lang/Throwable:printStackTrace	()V
    //   563: goto -161 -> 402
    //   566: astore_1
    //   567: aload_1
    //   568: ldc 33
    //   570: ldc 171
    //   572: invokestatic 40	com/amap/api/services/core/av:a	(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    //   575: aload_1
    //   576: invokevirtual 43	java/lang/Throwable:printStackTrace	()V
    //   579: goto -356 -> 223
    //   582: astore 6
    //   584: aload 6
    //   586: ldc 33
    //   588: ldc 167
    //   590: invokestatic 40	com/amap/api/services/core/av:a	(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    //   593: aload 6
    //   595: invokevirtual 163	java/io/IOException:printStackTrace	()V
    //   598: goto -84 -> 514
    //   601: astore 6
    //   603: aload 6
    //   605: ldc 33
    //   607: ldc 169
    //   609: invokestatic 40	com/amap/api/services/core/av:a	(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    //   612: aload 6
    //   614: invokevirtual 43	java/lang/Throwable:printStackTrace	()V
    //   617: goto -103 -> 514
    //   620: astore 5
    //   622: aload 5
    //   624: ldc 33
    //   626: ldc 162
    //   628: invokestatic 40	com/amap/api/services/core/av:a	(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    //   631: aload 5
    //   633: invokevirtual 163	java/io/IOException:printStackTrace	()V
    //   636: goto -112 -> 524
    //   639: astore 5
    //   641: aload 5
    //   643: ldc 33
    //   645: ldc 171
    //   647: invokestatic 40	com/amap/api/services/core/av:a	(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    //   650: aload 5
    //   652: invokevirtual 43	java/lang/Throwable:printStackTrace	()V
    //   655: goto -131 -> 524
    //   658: astore_1
    //   659: aload_1
    //   660: ldc 33
    //   662: ldc 167
    //   664: invokestatic 40	com/amap/api/services/core/av:a	(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    //   667: aload_1
    //   668: invokevirtual 163	java/io/IOException:printStackTrace	()V
    //   671: goto -199 -> 472
    //   674: astore_1
    //   675: aload_1
    //   676: ldc 33
    //   678: ldc 169
    //   680: invokestatic 40	com/amap/api/services/core/av:a	(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    //   683: aload_1
    //   684: invokevirtual 43	java/lang/Throwable:printStackTrace	()V
    //   687: goto -215 -> 472
    //   690: astore_1
    //   691: aload_1
    //   692: ldc 33
    //   694: ldc 171
    //   696: invokestatic 40	com/amap/api/services/core/av:a	(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    //   699: goto -124 -> 575
    //   702: astore_1
    //   703: aload_1
    //   704: ldc 33
    //   706: ldc 167
    //   708: invokestatic 40	com/amap/api/services/core/av:a	(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    //   711: aload_1
    //   712: invokevirtual 163	java/io/IOException:printStackTrace	()V
    //   715: goto -680 -> 35
    //   718: astore_1
    //   719: aload_1
    //   720: ldc 33
    //   722: ldc 169
    //   724: invokestatic 40	com/amap/api/services/core/av:a	(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    //   727: aload_1
    //   728: invokevirtual 43	java/lang/Throwable:printStackTrace	()V
    //   731: goto -696 -> 35
    //   734: astore_1
    //   735: aload_1
    //   736: ldc 33
    //   738: ldc 162
    //   740: invokestatic 40	com/amap/api/services/core/av:a	(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    //   743: aload_1
    //   744: invokevirtual 163	java/io/IOException:printStackTrace	()V
    //   747: goto -700 -> 47
    //   750: astore_1
    //   751: aload_1
    //   752: ldc 33
    //   754: ldc 171
    //   756: invokestatic 40	com/amap/api/services/core/av:a	(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    //   759: aload_1
    //   760: invokevirtual 43	java/lang/Throwable:printStackTrace	()V
    //   763: goto -716 -> 47
    //   766: astore_1
    //   767: aload_1
    //   768: ldc 33
    //   770: ldc 167
    //   772: invokestatic 40	com/amap/api/services/core/av:a	(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    //   775: aload_1
    //   776: invokevirtual 163	java/io/IOException:printStackTrace	()V
    //   779: goto -566 -> 213
    //   782: astore_1
    //   783: aload_1
    //   784: ldc 33
    //   786: ldc 169
    //   788: invokestatic 40	com/amap/api/services/core/av:a	(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    //   791: aload_1
    //   792: invokevirtual 43	java/lang/Throwable:printStackTrace	()V
    //   795: goto -582 -> 213
    //   798: astore_1
    //   799: aload_1
    //   800: ldc 33
    //   802: ldc 162
    //   804: invokestatic 40	com/amap/api/services/core/av:a	(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    //   807: goto -385 -> 422
    //   810: astore_1
    //   811: aload_1
    //   812: ldc 33
    //   814: ldc 171
    //   816: invokestatic 40	com/amap/api/services/core/av:a	(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    //   819: goto -244 -> 575
    //   822: astore_1
    //   823: aconst_null
    //   824: astore 8
    //   826: goto -322 -> 504
    //   829: astore_1
    //   830: aload 6
    //   832: astore 5
    //   834: goto -330 -> 504
    //   837: astore 9
    //   839: aconst_null
    //   840: astore_1
    //   841: goto -405 -> 436
    //   844: astore 9
    //   846: aload 7
    //   848: astore_1
    //   849: goto -413 -> 436
    //   852: astore_1
    //   853: aconst_null
    //   854: astore 5
    //   856: aconst_null
    //   857: astore_1
    //   858: goto -466 -> 392
    //   861: astore_1
    //   862: aconst_null
    //   863: astore 6
    //   865: aload 5
    //   867: astore_1
    //   868: aload 6
    //   870: astore 5
    //   872: goto -480 -> 392
    //   875: goto -710 -> 165
    //   878: iload_3
    //   879: istore_2
    //   880: goto -735 -> 145
    //   883: iconst_1
    //   884: istore_2
    //   885: goto -740 -> 145
    //   888: astore_1
    //   889: goto -686 -> 203
    //
    // Exception table:
    //   from	to	target	type
    //   84	91	384	java/io/FileNotFoundException
    //   99	109	384	java/io/FileNotFoundException
    //   117	127	384	java/io/FileNotFoundException
    //   135	142	384	java/io/FileNotFoundException
    //   153	163	384	java/io/FileNotFoundException
    //   179	185	384	java/io/FileNotFoundException
    //   193	198	384	java/io/FileNotFoundException
    //   243	250	384	java/io/FileNotFoundException
    //   258	266	384	java/io/FileNotFoundException
    //   276	286	384	java/io/FileNotFoundException
    //   294	306	384	java/io/FileNotFoundException
    //   314	329	384	java/io/FileNotFoundException
    //   337	344	384	java/io/FileNotFoundException
    //   352	358	384	java/io/FileNotFoundException
    //   369	379	384	java/io/FileNotFoundException
    //   406	410	413	java/io/IOException
    //   0	18	429	java/io/IOException
    //   49	60	429	java/io/IOException
    //   477	482	485	java/io/IOException
    //   0	18	497	finally
    //   49	60	497	finally
    //   397	402	528	java/io/IOException
    //   397	402	547	java/lang/Throwable
    //   406	410	566	java/lang/Throwable
    //   509	514	582	java/io/IOException
    //   509	514	601	java/lang/Throwable
    //   519	524	620	java/io/IOException
    //   519	524	639	java/lang/Throwable
    //   468	472	658	java/io/IOException
    //   468	472	674	java/lang/Throwable
    //   477	482	690	java/lang/Throwable
    //   27	35	702	java/io/IOException
    //   27	35	718	java/lang/Throwable
    //   39	47	734	java/io/IOException
    //   39	47	750	java/lang/Throwable
    //   208	213	766	java/io/IOException
    //   208	213	782	java/lang/Throwable
    //   218	223	798	java/io/IOException
    //   218	223	810	java/lang/Throwable
    //   60	74	822	finally
    //   84	91	829	finally
    //   99	109	829	finally
    //   117	127	829	finally
    //   135	142	829	finally
    //   153	163	829	finally
    //   179	185	829	finally
    //   193	198	829	finally
    //   243	250	829	finally
    //   258	266	829	finally
    //   276	286	829	finally
    //   294	306	829	finally
    //   314	329	829	finally
    //   337	344	829	finally
    //   352	358	829	finally
    //   369	379	829	finally
    //   443	452	829	finally
    //   459	464	829	finally
    //   60	74	837	java/io/IOException
    //   84	91	844	java/io/IOException
    //   99	109	844	java/io/IOException
    //   117	127	844	java/io/IOException
    //   135	142	844	java/io/IOException
    //   153	163	844	java/io/IOException
    //   179	185	844	java/io/IOException
    //   193	198	844	java/io/IOException
    //   243	250	844	java/io/IOException
    //   258	266	844	java/io/IOException
    //   276	286	844	java/io/IOException
    //   294	306	844	java/io/IOException
    //   314	329	844	java/io/IOException
    //   337	344	844	java/io/IOException
    //   352	358	844	java/io/IOException
    //   369	379	844	java/io/IOException
    //   0	18	852	java/io/FileNotFoundException
    //   49	60	852	java/io/FileNotFoundException
    //   60	74	861	java/io/FileNotFoundException
    //   84	91	888	java/io/EOFException
    //   99	109	888	java/io/EOFException
    //   117	127	888	java/io/EOFException
    //   135	142	888	java/io/EOFException
    //   153	163	888	java/io/EOFException
    //   179	185	888	java/io/EOFException
    //   193	198	888	java/io/EOFException
    //   243	250	888	java/io/EOFException
    //   258	266	888	java/io/EOFException
    //   276	286	888	java/io/EOFException
    //   294	306	888	java/io/EOFException
    //   314	329	888	java/io/EOFException
    //   337	344	888	java/io/EOFException
    //   352	358	888	java/io/EOFException
    //   369	379	888	java/io/EOFException
  }

  protected String b()
  {
    return bd.d;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.amap.api.services.core.ax
 * JD-Core Version:    0.6.2
 */