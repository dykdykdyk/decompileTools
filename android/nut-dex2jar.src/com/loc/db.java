package com.loc;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Environment;
import android.os.Process;
import java.io.File;

public final class db
{
  int a = 4;
  int b = 200;
  int c = 1;
  int d = 0;
  int e = 0;
  da f = null;
  private Context g = null;
  private boolean h = true;
  private int i = 1270;
  private int j = 310;
  private long k = 0L;

  private db(Context paramContext)
  {
    this.g = paramContext;
  }

  private static int a(byte[] paramArrayOfByte, int paramInt)
  {
    int m = 0;
    int n = 0;
    while (m < 4)
    {
      n += ((paramArrayOfByte[(m + paramInt)] & 0xFF) << (m << 3));
      m += 1;
    }
    return n;
  }

  private static long a(byte[] paramArrayOfByte)
  {
    int m = 0;
    int n = 0;
    while (m < 8)
    {
      n += ((paramArrayOfByte[(m + 14)] & 0xFF) << (m << 3));
      m += 1;
    }
    return n;
  }

  // ERROR //
  protected static db a(Context paramContext)
  {
    // Byte code:
    //   0: new 2	com/loc/db
    //   3: dup
    //   4: aload_0
    //   5: invokespecial 55	com/loc/db:<init>	(Landroid/content/Context;)V
    //   8: astore 6
    //   10: aload 6
    //   12: iconst_0
    //   13: putfield 41	com/loc/db:d	I
    //   16: aload 6
    //   18: iconst_0
    //   19: putfield 43	com/loc/db:e	I
    //   22: aload 6
    //   24: invokestatic 61	java/lang/System:currentTimeMillis	()J
    //   27: ldc2_w 62
    //   30: ladd
    //   31: ldc2_w 64
    //   34: ldiv
    //   35: ldc2_w 64
    //   38: lmul
    //   39: putfield 45	com/loc/db:k	J
    //   42: aconst_null
    //   43: astore 5
    //   45: new 67	java/io/FileInputStream
    //   48: dup
    //   49: new 69	java/io/File
    //   52: dup
    //   53: new 71	java/lang/StringBuilder
    //   56: dup
    //   57: invokespecial 72	java/lang/StringBuilder:<init>	()V
    //   60: aload_0
    //   61: invokestatic 75	com/loc/db:b	(Landroid/content/Context;)Ljava/lang/String;
    //   64: invokevirtual 79	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   67: getstatic 83	java/io/File:separator	Ljava/lang/String;
    //   70: invokevirtual 79	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   73: ldc 85
    //   75: invokevirtual 79	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   78: invokevirtual 89	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   81: invokespecial 92	java/io/File:<init>	(Ljava/lang/String;)V
    //   84: invokespecial 95	java/io/FileInputStream:<init>	(Ljava/io/File;)V
    //   87: astore_0
    //   88: new 97	java/io/ByteArrayOutputStream
    //   91: dup
    //   92: invokespecial 98	java/io/ByteArrayOutputStream:<init>	()V
    //   95: astore 5
    //   97: bipush 32
    //   99: newarray byte
    //   101: astore 7
    //   103: aload_0
    //   104: aload 7
    //   106: invokevirtual 102	java/io/FileInputStream:read	([B)I
    //   109: istore_1
    //   110: iload_1
    //   111: iconst_m1
    //   112: if_icmpeq +28 -> 140
    //   115: aload 5
    //   117: aload 7
    //   119: iconst_0
    //   120: iload_1
    //   121: invokevirtual 106	java/io/ByteArrayOutputStream:write	([BII)V
    //   124: goto -21 -> 103
    //   127: astore 5
    //   129: aload_0
    //   130: ifnull +7 -> 137
    //   133: aload_0
    //   134: invokevirtual 109	java/io/FileInputStream:close	()V
    //   137: aload 6
    //   139: areturn
    //   140: aload 5
    //   142: invokevirtual 112	java/io/ByteArrayOutputStream:flush	()V
    //   145: aload 5
    //   147: invokevirtual 116	java/io/ByteArrayOutputStream:toByteArray	()[B
    //   150: astore 7
    //   152: aload 7
    //   154: ifnull +136 -> 290
    //   157: aload 7
    //   159: arraylength
    //   160: bipush 22
    //   162: if_icmplt +128 -> 290
    //   165: aload 7
    //   167: iconst_0
    //   168: baload
    //   169: ifeq +137 -> 306
    //   172: iconst_1
    //   173: istore_2
    //   174: aload 6
    //   176: iload_2
    //   177: putfield 29	com/loc/db:h	Z
    //   180: aload 6
    //   182: aload 7
    //   184: iconst_1
    //   185: baload
    //   186: bipush 10
    //   188: imul
    //   189: bipush 10
    //   191: ishl
    //   192: putfield 31	com/loc/db:i	I
    //   195: aload 6
    //   197: aload 7
    //   199: iconst_2
    //   200: baload
    //   201: bipush 10
    //   203: imul
    //   204: bipush 10
    //   206: ishl
    //   207: putfield 33	com/loc/db:j	I
    //   210: aload 6
    //   212: aload 7
    //   214: iconst_3
    //   215: baload
    //   216: putfield 35	com/loc/db:a	I
    //   219: aload 6
    //   221: aload 7
    //   223: iconst_4
    //   224: baload
    //   225: bipush 10
    //   227: imul
    //   228: putfield 37	com/loc/db:b	I
    //   231: aload 6
    //   233: aload 7
    //   235: iconst_5
    //   236: baload
    //   237: putfield 39	com/loc/db:c	I
    //   240: aload 7
    //   242: invokestatic 118	com/loc/db:a	([B)J
    //   245: lstore_3
    //   246: aload 6
    //   248: getfield 45	com/loc/db:k	J
    //   251: lload_3
    //   252: lsub
    //   253: ldc2_w 64
    //   256: lcmp
    //   257: ifge +33 -> 290
    //   260: aload 6
    //   262: lload_3
    //   263: putfield 45	com/loc/db:k	J
    //   266: aload 6
    //   268: aload 7
    //   270: bipush 6
    //   272: invokestatic 120	com/loc/db:a	([BI)I
    //   275: putfield 41	com/loc/db:d	I
    //   278: aload 6
    //   280: aload 7
    //   282: bipush 10
    //   284: invokestatic 120	com/loc/db:a	([BI)I
    //   287: putfield 43	com/loc/db:e	I
    //   290: aload 5
    //   292: invokevirtual 121	java/io/ByteArrayOutputStream:close	()V
    //   295: aload_0
    //   296: invokevirtual 109	java/io/FileInputStream:close	()V
    //   299: aload 6
    //   301: areturn
    //   302: astore_0
    //   303: aload 6
    //   305: areturn
    //   306: iconst_0
    //   307: istore_2
    //   308: goto -134 -> 174
    //   311: astore_0
    //   312: aload 5
    //   314: ifnull +8 -> 322
    //   317: aload 5
    //   319: invokevirtual 109	java/io/FileInputStream:close	()V
    //   322: aload_0
    //   323: athrow
    //   324: astore_0
    //   325: aload 6
    //   327: areturn
    //   328: astore 5
    //   330: goto -8 -> 322
    //   333: astore 6
    //   335: aload_0
    //   336: astore 5
    //   338: aload 6
    //   340: astore_0
    //   341: goto -29 -> 312
    //   344: astore_0
    //   345: aconst_null
    //   346: astore_0
    //   347: goto -218 -> 129
    //
    // Exception table:
    //   from	to	target	type
    //   88	103	127	java/lang/Exception
    //   103	110	127	java/lang/Exception
    //   115	124	127	java/lang/Exception
    //   140	152	127	java/lang/Exception
    //   157	165	127	java/lang/Exception
    //   174	290	127	java/lang/Exception
    //   290	295	127	java/lang/Exception
    //   295	299	302	java/lang/Exception
    //   45	88	311	finally
    //   133	137	324	java/lang/Exception
    //   317	322	328	java/lang/Exception
    //   88	103	333	finally
    //   103	110	333	finally
    //   115	124	333	finally
    //   140	152	333	finally
    //   157	165	333	finally
    //   174	290	333	finally
    //   290	295	333	finally
    //   45	88	344	java/lang/Exception
  }

  private static byte[] a(int paramInt)
  {
    byte[] arrayOfByte = new byte[4];
    int m = 0;
    while (m < 4)
    {
      arrayOfByte[m] = ((byte)(paramInt >> (m << 3)));
      m += 1;
    }
    return arrayOfByte;
  }

  private static byte[] a(long paramLong)
  {
    byte[] arrayOfByte = new byte[8];
    int m = 0;
    while (m < 8)
    {
      arrayOfByte[m] = ((byte)(int)(paramLong >> (m << 3) & 0xFF));
      m += 1;
    }
    return arrayOfByte;
  }

  private static String b(Context paramContext)
  {
    int m = 0;
    File localFile = null;
    if (Process.myUid() != 1000)
      localFile = cl.a(paramContext);
    try
    {
      boolean bool = "mounted".equals(Environment.getExternalStorageState());
      m = bool;
      label29: if (((m != 0) || (!cl.c())) && (localFile != null))
        return localFile.getPath();
      return paramContext.getFilesDir().getPath();
    }
    catch (Exception localException)
    {
      break label29;
    }
  }

  protected final boolean a()
  {
    b();
    NetworkInfo localNetworkInfo = ((ConnectivityManager)this.g.getSystemService("connectivity")).getActiveNetworkInfo();
    if ((localNetworkInfo != null) && (localNetworkInfo.isConnected()))
    {
      if (localNetworkInfo.getType() == 1)
        return (this.h) && (this.d < this.i);
      return (this.h) && (this.e < this.j);
    }
    return this.h;
  }

  // ERROR //
  protected final boolean a(String paramString)
  {
    // Byte code:
    //   0: iconst_1
    //   1: istore_2
    //   2: new 186	org/json/JSONObject
    //   5: dup
    //   6: aload_1
    //   7: invokespecial 187	org/json/JSONObject:<init>	(Ljava/lang/String;)V
    //   10: astore_1
    //   11: aload_1
    //   12: ldc 188
    //   14: invokevirtual 191	org/json/JSONObject:has	(Ljava/lang/String;)Z
    //   17: ifeq +21 -> 38
    //   20: aload_1
    //   21: ldc 188
    //   23: invokevirtual 195	org/json/JSONObject:getInt	(Ljava/lang/String;)I
    //   26: ifeq +441 -> 467
    //   29: iconst_1
    //   30: istore 4
    //   32: aload_0
    //   33: iload 4
    //   35: putfield 29	com/loc/db:h	Z
    //   38: aload_1
    //   39: ldc 196
    //   41: invokevirtual 191	org/json/JSONObject:has	(Ljava/lang/String;)Z
    //   44: ifeq +115 -> 159
    //   47: aload_1
    //   48: ldc 196
    //   50: invokevirtual 195	org/json/JSONObject:getInt	(Ljava/lang/String;)I
    //   53: istore_3
    //   54: aload_0
    //   55: iload_3
    //   56: bipush 127
    //   58: iand
    //   59: bipush 10
    //   61: imul
    //   62: bipush 10
    //   64: ishl
    //   65: putfield 31	com/loc/db:i	I
    //   68: aload_0
    //   69: iload_3
    //   70: sipush 3968
    //   73: iand
    //   74: bipush 7
    //   76: ishr
    //   77: bipush 10
    //   79: imul
    //   80: bipush 10
    //   82: ishl
    //   83: putfield 33	com/loc/db:j	I
    //   86: aload_0
    //   87: ldc 197
    //   89: iload_3
    //   90: iand
    //   91: bipush 12
    //   93: ishr
    //   94: putfield 35	com/loc/db:a	I
    //   97: aload_0
    //   98: ldc 198
    //   100: iload_3
    //   101: iand
    //   102: bipush 19
    //   104: ishr
    //   105: bipush 10
    //   107: imul
    //   108: putfield 37	com/loc/db:b	I
    //   111: aload_0
    //   112: iload_3
    //   113: ldc 199
    //   115: iand
    //   116: bipush 26
    //   118: ishr
    //   119: putfield 39	com/loc/db:c	I
    //   122: aload_0
    //   123: getfield 39	com/loc/db:c	I
    //   126: bipush 31
    //   128: if_icmpne +10 -> 138
    //   131: aload_0
    //   132: sipush 1500
    //   135: putfield 39	com/loc/db:c	I
    //   138: aload_0
    //   139: getfield 47	com/loc/db:f	Lcom/loc/da;
    //   142: ifnull +17 -> 159
    //   145: aload_0
    //   146: getfield 47	com/loc/db:f	Lcom/loc/da;
    //   149: astore 5
    //   151: aload 5
    //   153: getfield 204	com/loc/da:a	Lcom/loc/ce;
    //   156: invokestatic 209	com/loc/ce:a	(Lcom/loc/ce;)V
    //   159: aload_1
    //   160: ldc 211
    //   162: invokevirtual 191	org/json/JSONObject:has	(Ljava/lang/String;)Z
    //   165: ifeq +315 -> 480
    //   168: aload_1
    //   169: ldc 211
    //   171: invokevirtual 195	org/json/JSONObject:getInt	(Ljava/lang/String;)I
    //   174: istore_3
    //   175: iload_3
    //   176: ifeq +297 -> 473
    //   179: iconst_1
    //   180: istore 4
    //   182: aload_0
    //   183: invokevirtual 163	com/loc/db:b	()V
    //   186: new 213	java/io/FileOutputStream
    //   189: dup
    //   190: new 69	java/io/File
    //   193: dup
    //   194: new 71	java/lang/StringBuilder
    //   197: dup
    //   198: invokespecial 72	java/lang/StringBuilder:<init>	()V
    //   201: aload_0
    //   202: getfield 27	com/loc/db:g	Landroid/content/Context;
    //   205: invokestatic 75	com/loc/db:b	(Landroid/content/Context;)Ljava/lang/String;
    //   208: invokevirtual 79	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   211: getstatic 83	java/io/File:separator	Ljava/lang/String;
    //   214: invokevirtual 79	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   217: ldc 85
    //   219: invokevirtual 79	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   222: invokevirtual 89	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   225: invokespecial 92	java/io/File:<init>	(Ljava/lang/String;)V
    //   228: invokespecial 214	java/io/FileOutputStream:<init>	(Ljava/io/File;)V
    //   231: astore_1
    //   232: aload_0
    //   233: getfield 41	com/loc/db:d	I
    //   236: invokestatic 216	com/loc/db:a	(I)[B
    //   239: astore 5
    //   241: aload_0
    //   242: getfield 43	com/loc/db:e	I
    //   245: invokestatic 216	com/loc/db:a	(I)[B
    //   248: astore 6
    //   250: aload_0
    //   251: getfield 45	com/loc/db:k	J
    //   254: invokestatic 218	com/loc/db:a	(J)[B
    //   257: astore 7
    //   259: aload_0
    //   260: getfield 29	com/loc/db:h	Z
    //   263: ifeq +223 -> 486
    //   266: aload_1
    //   267: bipush 22
    //   269: newarray byte
    //   271: dup
    //   272: iconst_0
    //   273: iload_2
    //   274: i2b
    //   275: bastore
    //   276: dup
    //   277: iconst_1
    //   278: aload_0
    //   279: getfield 31	com/loc/db:i	I
    //   282: sipush 10240
    //   285: idiv
    //   286: i2b
    //   287: bastore
    //   288: dup
    //   289: iconst_2
    //   290: aload_0
    //   291: getfield 33	com/loc/db:j	I
    //   294: sipush 10240
    //   297: idiv
    //   298: i2b
    //   299: bastore
    //   300: dup
    //   301: iconst_3
    //   302: aload_0
    //   303: getfield 35	com/loc/db:a	I
    //   306: i2b
    //   307: bastore
    //   308: dup
    //   309: iconst_4
    //   310: aload_0
    //   311: getfield 37	com/loc/db:b	I
    //   314: bipush 10
    //   316: idiv
    //   317: i2b
    //   318: bastore
    //   319: dup
    //   320: iconst_5
    //   321: aload_0
    //   322: getfield 39	com/loc/db:c	I
    //   325: i2b
    //   326: bastore
    //   327: dup
    //   328: bipush 6
    //   330: aload 5
    //   332: iconst_0
    //   333: baload
    //   334: bastore
    //   335: dup
    //   336: bipush 7
    //   338: aload 5
    //   340: iconst_1
    //   341: baload
    //   342: bastore
    //   343: dup
    //   344: bipush 8
    //   346: aload 5
    //   348: iconst_2
    //   349: baload
    //   350: bastore
    //   351: dup
    //   352: bipush 9
    //   354: aload 5
    //   356: iconst_3
    //   357: baload
    //   358: bastore
    //   359: dup
    //   360: bipush 10
    //   362: aload 6
    //   364: iconst_0
    //   365: baload
    //   366: bastore
    //   367: dup
    //   368: bipush 11
    //   370: aload 6
    //   372: iconst_1
    //   373: baload
    //   374: bastore
    //   375: dup
    //   376: bipush 12
    //   378: aload 6
    //   380: iconst_2
    //   381: baload
    //   382: bastore
    //   383: dup
    //   384: bipush 13
    //   386: aload 6
    //   388: iconst_3
    //   389: baload
    //   390: bastore
    //   391: dup
    //   392: bipush 14
    //   394: aload 7
    //   396: iconst_0
    //   397: baload
    //   398: bastore
    //   399: dup
    //   400: bipush 15
    //   402: aload 7
    //   404: iconst_1
    //   405: baload
    //   406: bastore
    //   407: dup
    //   408: bipush 16
    //   410: aload 7
    //   412: iconst_2
    //   413: baload
    //   414: bastore
    //   415: dup
    //   416: bipush 17
    //   418: aload 7
    //   420: iconst_3
    //   421: baload
    //   422: bastore
    //   423: dup
    //   424: bipush 18
    //   426: aload 7
    //   428: iconst_4
    //   429: baload
    //   430: bastore
    //   431: dup
    //   432: bipush 19
    //   434: aload 7
    //   436: iconst_5
    //   437: baload
    //   438: bastore
    //   439: dup
    //   440: bipush 20
    //   442: aload 7
    //   444: bipush 6
    //   446: baload
    //   447: bastore
    //   448: dup
    //   449: bipush 21
    //   451: aload 7
    //   453: bipush 7
    //   455: baload
    //   456: bastore
    //   457: invokevirtual 221	java/io/FileOutputStream:write	([B)V
    //   460: aload_1
    //   461: invokevirtual 222	java/io/FileOutputStream:close	()V
    //   464: iload 4
    //   466: ireturn
    //   467: iconst_0
    //   468: istore 4
    //   470: goto -438 -> 32
    //   473: iconst_0
    //   474: istore 4
    //   476: goto -294 -> 182
    //   479: astore_1
    //   480: iconst_0
    //   481: istore 4
    //   483: goto -301 -> 182
    //   486: iconst_0
    //   487: istore_2
    //   488: goto -222 -> 266
    //   491: astore_1
    //   492: aconst_null
    //   493: astore_1
    //   494: aload_1
    //   495: ifnull -31 -> 464
    //   498: aload_1
    //   499: invokevirtual 222	java/io/FileOutputStream:close	()V
    //   502: iload 4
    //   504: ireturn
    //   505: astore_1
    //   506: iload 4
    //   508: ireturn
    //   509: astore 5
    //   511: aconst_null
    //   512: astore_1
    //   513: aload_1
    //   514: ifnull +7 -> 521
    //   517: aload_1
    //   518: invokevirtual 222	java/io/FileOutputStream:close	()V
    //   521: aload 5
    //   523: athrow
    //   524: astore_1
    //   525: iload 4
    //   527: ireturn
    //   528: astore_1
    //   529: goto -8 -> 521
    //   532: astore 5
    //   534: goto -21 -> 513
    //   537: astore 5
    //   539: goto -45 -> 494
    //   542: astore 5
    //   544: goto -385 -> 159
    //
    // Exception table:
    //   from	to	target	type
    //   2	29	479	java/lang/Exception
    //   32	38	479	java/lang/Exception
    //   38	138	479	java/lang/Exception
    //   138	151	479	java/lang/Exception
    //   159	175	479	java/lang/Exception
    //   182	232	491	java/lang/Exception
    //   498	502	505	java/lang/Exception
    //   182	232	509	finally
    //   460	464	524	java/lang/Exception
    //   517	521	528	java/lang/Exception
    //   232	266	532	finally
    //   266	460	532	finally
    //   232	266	537	java/lang/Exception
    //   266	460	537	java/lang/Exception
    //   151	159	542	java/lang/Exception
  }

  final void b()
  {
    long l = System.currentTimeMillis() + 28800000L;
    if (l - this.k > 86400000L)
    {
      this.k = (l / 86400000L * 86400000L);
      this.d = 0;
      this.e = 0;
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.loc.db
 * JD-Core Version:    0.6.2
 */