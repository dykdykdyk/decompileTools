package u.aly;

import android.content.Context;

public final class u
{
  private static Context i;
  x a;
  r b;
  z c;
  boolean d = false;
  boolean e;
  private fg f;
  private fj g;
  private final int h = 1;

  public u(Context paramContext, x paramx)
  {
    this.f = fg.a(paramContext);
    this.g = fj.a(paramContext);
    i = paramContext;
    this.a = paramx;
    this.b = new r(paramContext);
    this.b.a = this.a;
  }

  // ERROR //
  final int a(byte[] paramArrayOfByte)
  {
    // Byte code:
    //   0: new 64	u/aly/bz
    //   3: dup
    //   4: invokespecial 65	u/aly/bz:<init>	()V
    //   7: astore 6
    //   9: new 67	u/aly/cz
    //   12: dup
    //   13: new 69	u/aly/dk
    //   16: dup
    //   17: invokespecial 70	u/aly/dk:<init>	()V
    //   20: invokespecial 73	u/aly/cz:<init>	(Lu/aly/dr;)V
    //   23: astore 5
    //   25: aload 5
    //   27: aload 6
    //   29: aload_1
    //   30: invokevirtual 76	u/aly/cz:a	(Lu/aly/cw;[B)V
    //   33: aload 6
    //   35: getfield 78	u/aly/bz:a	I
    //   38: iconst_1
    //   39: if_icmpne +196 -> 235
    //   42: aload_0
    //   43: getfield 44	u/aly/u:g	Lu/aly/fj;
    //   46: astore 7
    //   48: aload 6
    //   50: getfield 81	u/aly/bz:c	Lu/aly/bl;
    //   53: astore 8
    //   55: aload 8
    //   57: ifnull +125 -> 182
    //   60: aload 8
    //   62: getfield 86	u/aly/bl:c	Ljava/lang/String;
    //   65: aload 8
    //   67: invokestatic 89	u/aly/fj:a	(Lu/aly/bl;)Ljava/lang/String;
    //   70: invokevirtual 95	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   73: ifne +196 -> 269
    //   76: iconst_0
    //   77: istore_2
    //   78: iload_2
    //   79: ifeq +103 -> 182
    //   82: aload 7
    //   84: monitorenter
    //   85: aload 7
    //   87: getfield 96	u/aly/fj:c	Lu/aly/bl;
    //   90: astore_1
    //   91: aload_1
    //   92: ifnonnull +271 -> 363
    //   95: aconst_null
    //   96: astore 5
    //   98: aload_1
    //   99: ifnonnull +438 -> 537
    //   102: aload 8
    //   104: invokestatic 99	u/aly/fj:b	(Lu/aly/bl;)Lu/aly/bl;
    //   107: astore_1
    //   108: aload 7
    //   110: aload_1
    //   111: putfield 96	u/aly/fj:c	Lu/aly/bl;
    //   114: aload_1
    //   115: ifnonnull +399 -> 514
    //   118: aconst_null
    //   119: astore_1
    //   120: aload 5
    //   122: aload_1
    //   123: invokestatic 102	u/aly/fj:a	(Ljava/lang/String;Ljava/lang/String;)Z
    //   126: ifne +406 -> 532
    //   129: iconst_1
    //   130: istore_2
    //   131: aload 7
    //   133: monitorexit
    //   134: aload 7
    //   136: getfield 96	u/aly/fj:c	Lu/aly/bl;
    //   139: ifnull +43 -> 182
    //   142: iload_2
    //   143: ifeq +39 -> 182
    //   146: aload 7
    //   148: getfield 105	u/aly/fj:b	Lu/aly/fk;
    //   151: aload 7
    //   153: getfield 96	u/aly/fj:c	Lu/aly/bl;
    //   156: invokevirtual 110	u/aly/fk:a	(Lu/aly/bl;)V
    //   159: aload 7
    //   161: getfield 113	u/aly/fj:a	Lu/aly/t;
    //   164: ifnull +18 -> 182
    //   167: aload 7
    //   169: getfield 113	u/aly/fj:a	Lu/aly/t;
    //   172: aload 7
    //   174: getfield 105	u/aly/fj:b	Lu/aly/fk;
    //   177: invokeinterface 118 2 0
    //   182: aload_0
    //   183: getfield 44	u/aly/u:g	Lu/aly/fj;
    //   186: astore_1
    //   187: aload_1
    //   188: getfield 96	u/aly/fj:c	Lu/aly/bl;
    //   191: astore 5
    //   193: aload 5
    //   195: ifnull +40 -> 235
    //   198: new 120	u/aly/da
    //   201: dup
    //   202: invokespecial 121	u/aly/da:<init>	()V
    //   205: aload_1
    //   206: getfield 96	u/aly/fj:c	Lu/aly/bl;
    //   209: invokevirtual 124	u/aly/da:a	(Lu/aly/cw;)[B
    //   212: astore 5
    //   214: new 126	java/io/File
    //   217: dup
    //   218: aload_1
    //   219: getfield 128	u/aly/fj:d	Landroid/content/Context;
    //   222: invokevirtual 134	android/content/Context:getFilesDir	()Ljava/io/File;
    //   225: ldc 136
    //   227: invokespecial 139	java/io/File:<init>	(Ljava/io/File;Ljava/lang/String;)V
    //   230: aload 5
    //   232: invokestatic 144	u/aly/cs:a	(Ljava/io/File;[B)V
    //   235: new 146	java/lang/StringBuilder
    //   238: dup
    //   239: ldc 148
    //   241: invokespecial 151	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   244: aload 6
    //   246: getfield 153	u/aly/bz:b	Ljava/lang/String;
    //   249: invokevirtual 157	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   252: invokevirtual 161	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   255: invokestatic 165	u/aly/ct:b	(Ljava/lang/String;)V
    //   258: aload 6
    //   260: getfield 78	u/aly/bz:a	I
    //   263: iconst_1
    //   264: if_icmpne +266 -> 530
    //   267: iconst_2
    //   268: ireturn
    //   269: aload 8
    //   271: getfield 168	u/aly/bl:a	Ljava/util/Map;
    //   274: invokeinterface 174 1 0
    //   279: invokeinterface 180 1 0
    //   284: astore_1
    //   285: aload_1
    //   286: invokeinterface 186 1 0
    //   291: ifeq +67 -> 358
    //   294: aload_1
    //   295: invokeinterface 190 1 0
    //   300: checkcast 192	u/aly/bs
    //   303: astore 9
    //   305: aload 9
    //   307: getfield 193	u/aly/bs:c	Ljava/lang/String;
    //   310: invokestatic 198	com/umeng/analytics/r:a	(Ljava/lang/String;)[B
    //   313: astore 5
    //   315: aload 9
    //   317: invokestatic 201	u/aly/fj:a	(Lu/aly/bs;)[B
    //   320: astore 9
    //   322: iconst_0
    //   323: istore_2
    //   324: iload_2
    //   325: iconst_4
    //   326: if_icmpge -41 -> 285
    //   329: aload 5
    //   331: iload_2
    //   332: baload
    //   333: istore_3
    //   334: aload 9
    //   336: iload_2
    //   337: baload
    //   338: istore 4
    //   340: iload_3
    //   341: iload 4
    //   343: if_icmpeq +8 -> 351
    //   346: iconst_0
    //   347: istore_2
    //   348: goto -270 -> 78
    //   351: iload_2
    //   352: iconst_1
    //   353: iadd
    //   354: istore_2
    //   355: goto -31 -> 324
    //   358: iconst_1
    //   359: istore_2
    //   360: goto -282 -> 78
    //   363: aload_1
    //   364: getfield 86	u/aly/bl:c	Ljava/lang/String;
    //   367: astore 5
    //   369: goto -271 -> 98
    //   372: aload_1
    //   373: getfield 168	u/aly/bl:a	Ljava/util/Map;
    //   376: astore 9
    //   378: aload 8
    //   380: getfield 168	u/aly/bl:a	Ljava/util/Map;
    //   383: invokeinterface 205 1 0
    //   388: invokeinterface 208 1 0
    //   393: astore 10
    //   395: aload 10
    //   397: invokeinterface 186 1 0
    //   402: ifeq +88 -> 490
    //   405: aload 10
    //   407: invokeinterface 190 1 0
    //   412: checkcast 210	java/util/Map$Entry
    //   415: astore 11
    //   417: aload 11
    //   419: invokeinterface 213 1 0
    //   424: checkcast 192	u/aly/bs
    //   427: invokevirtual 215	u/aly/bs:a	()Z
    //   430: ifeq +42 -> 472
    //   433: aload 9
    //   435: aload 11
    //   437: invokeinterface 218 1 0
    //   442: aload 11
    //   444: invokeinterface 213 1 0
    //   449: invokeinterface 222 3 0
    //   454: pop
    //   455: goto -60 -> 395
    //   458: astore_1
    //   459: aload 7
    //   461: monitorexit
    //   462: aload_1
    //   463: athrow
    //   464: astore_1
    //   465: aload_1
    //   466: invokevirtual 225	java/lang/Exception:printStackTrace	()V
    //   469: goto -211 -> 258
    //   472: aload 9
    //   474: aload 11
    //   476: invokeinterface 218 1 0
    //   481: invokeinterface 229 2 0
    //   486: pop
    //   487: goto -92 -> 395
    //   490: aload_1
    //   491: aload 8
    //   493: getfield 231	u/aly/bl:b	I
    //   496: putfield 231	u/aly/bl:b	I
    //   499: aload_1
    //   500: invokevirtual 233	u/aly/bl:b	()V
    //   503: aload_1
    //   504: aload_1
    //   505: invokestatic 89	u/aly/fj:a	(Lu/aly/bl;)Ljava/lang/String;
    //   508: putfield 86	u/aly/bl:c	Ljava/lang/String;
    //   511: goto -403 -> 108
    //   514: aload_1
    //   515: getfield 86	u/aly/bl:c	Ljava/lang/String;
    //   518: astore_1
    //   519: goto -399 -> 120
    //   522: astore_1
    //   523: aload_1
    //   524: invokevirtual 225	java/lang/Exception:printStackTrace	()V
    //   527: goto -292 -> 235
    //   530: iconst_3
    //   531: ireturn
    //   532: iconst_0
    //   533: istore_2
    //   534: goto -403 -> 131
    //   537: aload 8
    //   539: ifnonnull -167 -> 372
    //   542: goto -434 -> 108
    //
    // Exception table:
    //   from	to	target	type
    //   85	91	458	finally
    //   102	108	458	finally
    //   108	114	458	finally
    //   120	129	458	finally
    //   131	134	458	finally
    //   363	369	458	finally
    //   372	395	458	finally
    //   395	455	458	finally
    //   459	462	458	finally
    //   472	487	458	finally
    //   490	511	458	finally
    //   514	519	458	finally
    //   25	55	464	java/lang/Exception
    //   60	76	464	java/lang/Exception
    //   82	85	464	java/lang/Exception
    //   134	142	464	java/lang/Exception
    //   146	182	464	java/lang/Exception
    //   182	193	464	java/lang/Exception
    //   235	258	464	java/lang/Exception
    //   269	285	464	java/lang/Exception
    //   285	322	464	java/lang/Exception
    //   462	464	464	java/lang/Exception
    //   523	527	464	java/lang/Exception
    //   198	235	522	java/lang/Exception
  }

  // ERROR //
  public final void a()
  {
    // Byte code:
    //   0: iconst_0
    //   1: istore_2
    //   2: aload_0
    //   3: getfield 237	u/aly/u:c	Lu/aly/z;
    //   6: ifnull +275 -> 281
    //   9: aload_0
    //   10: getfield 37	u/aly/u:f	Lu/aly/fg;
    //   13: invokevirtual 239	u/aly/fg:a	()V
    //   16: aload_0
    //   17: getfield 237	u/aly/u:c	Lu/aly/z;
    //   20: astore 5
    //   22: aload_0
    //   23: getfield 37	u/aly/u:f	Lu/aly/fg;
    //   26: getfield 242	u/aly/fg:a	Lu/aly/bf;
    //   29: astore 6
    //   31: new 120	u/aly/da
    //   34: dup
    //   35: invokespecial 121	u/aly/da:<init>	()V
    //   38: aload 6
    //   40: invokevirtual 124	u/aly/da:a	(Lu/aly/cw;)[B
    //   43: astore 6
    //   45: aload 5
    //   47: getfield 247	u/aly/z:a	Lu/aly/am;
    //   50: aload 6
    //   52: iconst_0
    //   53: invokestatic 253	android/util/Base64:encodeToString	([BI)Ljava/lang/String;
    //   56: putfield 258	u/aly/am:O	Ljava/lang/String;
    //   59: getstatic 46	u/aly/u:i	Landroid/content/Context;
    //   62: invokestatic 263	com/umeng/analytics/aa:a	(Landroid/content/Context;)Lcom/umeng/analytics/aa;
    //   65: aload 5
    //   67: invokevirtual 266	com/umeng/analytics/aa:a	(Lu/aly/z;)[B
    //   70: astore 5
    //   72: getstatic 46	u/aly/u:i	Landroid/content/Context;
    //   75: aload 5
    //   77: invokestatic 269	com/umeng/analytics/r:a	(Landroid/content/Context;[B)Z
    //   80: ifne +14 -> 94
    //   83: aload 5
    //   85: ifnonnull +20 -> 105
    //   88: ldc_w 271
    //   91: invokestatic 273	u/aly/ct:d	(Ljava/lang/String;)V
    //   94: return
    //   95: astore 6
    //   97: aload 6
    //   99: invokestatic 276	u/aly/ct:a	(Ljava/lang/Throwable;)V
    //   102: goto -43 -> 59
    //   105: aload_0
    //   106: getfield 30	u/aly/u:d	Z
    //   109: ifne +99 -> 208
    //   112: getstatic 46	u/aly/u:i	Landroid/content/Context;
    //   115: getstatic 46	u/aly/u:i	Landroid/content/Context;
    //   118: invokestatic 281	com/umeng/analytics/a:a	(Landroid/content/Context;)Ljava/lang/String;
    //   121: aload 5
    //   123: invokestatic 286	u/aly/fe:a	(Landroid/content/Context;Ljava/lang/String;[B)Lu/aly/fe;
    //   126: astore 5
    //   128: aload 5
    //   130: invokevirtual 289	u/aly/fe:a	()[B
    //   133: astore 5
    //   135: getstatic 46	u/aly/u:i	Landroid/content/Context;
    //   138: invokestatic 263	com/umeng/analytics/aa:a	(Landroid/content/Context;)Lcom/umeng/analytics/aa;
    //   141: invokevirtual 291	com/umeng/analytics/aa:e	()V
    //   144: aload_0
    //   145: getfield 55	u/aly/u:b	Lu/aly/r;
    //   148: aload 5
    //   150: invokevirtual 294	u/aly/r:a	([B)[B
    //   153: astore 6
    //   155: aload 6
    //   157: ifnonnull +70 -> 227
    //   160: iconst_1
    //   161: istore_1
    //   162: iload_1
    //   163: tableswitch	default:+25 -> 188, 1:+26->189, 2:+74->237, 3:+110->273
    //   189: aload_0
    //   190: getfield 296	u/aly/u:e	Z
    //   193: ifne -99 -> 94
    //   196: getstatic 46	u/aly/u:i	Landroid/content/Context;
    //   199: invokestatic 263	com/umeng/analytics/aa:a	(Landroid/content/Context;)Lcom/umeng/analytics/aa;
    //   202: aload 5
    //   204: invokevirtual 299	com/umeng/analytics/aa:a	([B)V
    //   207: return
    //   208: getstatic 46	u/aly/u:i	Landroid/content/Context;
    //   211: getstatic 46	u/aly/u:i	Landroid/content/Context;
    //   214: invokestatic 281	com/umeng/analytics/a:a	(Landroid/content/Context;)Ljava/lang/String;
    //   217: aload 5
    //   219: invokestatic 301	u/aly/fe:b	(Landroid/content/Context;Ljava/lang/String;[B)Lu/aly/fe;
    //   222: astore 5
    //   224: goto -96 -> 128
    //   227: aload_0
    //   228: aload 6
    //   230: invokevirtual 303	u/aly/u:a	([B)I
    //   233: istore_1
    //   234: goto -72 -> 162
    //   237: aload_0
    //   238: getfield 48	u/aly/u:a	Lu/aly/x;
    //   241: invokevirtual 307	u/aly/x:h	()Z
    //   244: ifeq +10 -> 254
    //   247: aload_0
    //   248: getfield 48	u/aly/u:a	Lu/aly/x;
    //   251: invokevirtual 309	u/aly/x:g	()V
    //   254: aload_0
    //   255: getfield 37	u/aly/u:f	Lu/aly/fg;
    //   258: invokevirtual 310	u/aly/fg:b	()V
    //   261: aload_0
    //   262: getfield 48	u/aly/u:a	Lu/aly/x;
    //   265: invokevirtual 312	u/aly/x:f	()V
    //   268: lconst_0
    //   269: putstatic 315	u/aly/z:c	J
    //   272: return
    //   273: aload_0
    //   274: getfield 48	u/aly/u:a	Lu/aly/x;
    //   277: invokevirtual 312	u/aly/x:f	()V
    //   280: return
    //   281: getstatic 46	u/aly/u:i	Landroid/content/Context;
    //   284: invokestatic 263	com/umeng/analytics/aa:a	(Landroid/content/Context;)Lcom/umeng/analytics/aa;
    //   287: getfield 318	com/umeng/analytics/aa:b	Lcom/umeng/analytics/ae;
    //   290: astore 7
    //   292: new 320	u/aly/v
    //   295: dup
    //   296: aload_0
    //   297: invokespecial 323	u/aly/v:<init>	(Lu/aly/u;)V
    //   300: astore 5
    //   302: aload 7
    //   304: getfield 328	com/umeng/analytics/ae:a	Ljava/io/File;
    //   307: aload 7
    //   309: getfield 331	com/umeng/analytics/ae:b	Ljava/io/FilenameFilter;
    //   312: invokevirtual 335	java/io/File:listFiles	(Ljava/io/FilenameFilter;)[Ljava/io/File;
    //   315: astore 6
    //   317: aload 6
    //   319: ifnull +58 -> 377
    //   322: aload 6
    //   324: arraylength
    //   325: bipush 10
    //   327: if_icmplt +50 -> 377
    //   330: aload 6
    //   332: invokestatic 341	java/util/Arrays:sort	([Ljava/lang/Object;)V
    //   335: aload 6
    //   337: arraylength
    //   338: bipush 10
    //   340: isub
    //   341: istore_3
    //   342: new 343	com/umeng/analytics/af
    //   345: dup
    //   346: aload 7
    //   348: iload_3
    //   349: invokespecial 346	com/umeng/analytics/af:<init>	(Lcom/umeng/analytics/ae;I)V
    //   352: invokestatic 351	com/umeng/analytics/y:b	(Ljava/lang/Runnable;)V
    //   355: iconst_0
    //   356: istore_1
    //   357: iload_1
    //   358: iload_3
    //   359: if_icmpge +18 -> 377
    //   362: aload 6
    //   364: iload_1
    //   365: aaload
    //   366: invokevirtual 354	java/io/File:delete	()Z
    //   369: pop
    //   370: iload_1
    //   371: iconst_1
    //   372: iadd
    //   373: istore_1
    //   374: goto -17 -> 357
    //   377: aload 6
    //   379: ifnull -285 -> 94
    //   382: aload 6
    //   384: arraylength
    //   385: ifle -291 -> 94
    //   388: aload 6
    //   390: arraylength
    //   391: istore_3
    //   392: iload_2
    //   393: istore_1
    //   394: iload_1
    //   395: iload_3
    //   396: if_icmpge +54 -> 450
    //   399: aload 5
    //   401: aload 6
    //   403: iload_1
    //   404: aaload
    //   405: invokeinterface 359 2 0
    //   410: istore 4
    //   412: iload 4
    //   414: ifeq +11 -> 425
    //   417: aload 6
    //   419: iload_1
    //   420: aaload
    //   421: invokevirtual 354	java/io/File:delete	()Z
    //   424: pop
    //   425: iload_1
    //   426: iconst_1
    //   427: iadd
    //   428: istore_1
    //   429: goto -35 -> 394
    //   432: astore 7
    //   434: aload 6
    //   436: iload_1
    //   437: aaload
    //   438: invokevirtual 354	java/io/File:delete	()Z
    //   441: pop
    //   442: goto -17 -> 425
    //   445: astore 5
    //   447: aload 5
    //   449: athrow
    //   450: aload 5
    //   452: invokeinterface 360 1 0
    //   457: return
    //
    // Exception table:
    //   from	to	target	type
    //   22	59	95	java/lang/Exception
    //   399	412	432	java/lang/Throwable
    //   399	412	445	finally
  }

  public final void a(t paramt)
  {
    this.g.a = paramt;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     u.aly.u
 * JD-Core Version:    0.6.2
 */