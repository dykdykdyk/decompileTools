package okhttp3;

import okhttp3.internal.h;

final class as extends h
{
  private final i c;
  private final boolean d;

  private as(aq paramaq, i parami)
  {
    super("OkHttp %s", new Object[] { paramaq.c.a.toString() });
    this.c = parami;
    this.d = false;
  }

  final String a()
  {
    return this.a.c.a.b;
  }

  // ERROR //
  protected final void b()
  {
    // Byte code:
    //   0: iconst_1
    //   1: istore_1
    //   2: aload_0
    //   3: getfield 14	okhttp3/as:a	Lokhttp3/aq;
    //   6: aload_0
    //   7: getfield 41	okhttp3/as:d	Z
    //   10: invokevirtual 55	okhttp3/aq:a	(Z)Lokhttp3/az;
    //   13: astore_3
    //   14: aload_0
    //   15: getfield 14	okhttp3/as:a	Lokhttp3/aq;
    //   18: getfield 57	okhttp3/aq:b	Z
    //   21: istore_2
    //   22: iload_2
    //   23: ifeq +40 -> 63
    //   26: aload_0
    //   27: getfield 39	okhttp3/as:c	Lokhttp3/i;
    //   30: aload_0
    //   31: getfield 14	okhttp3/as:a	Lokhttp3/aq;
    //   34: new 52	java/io/IOException
    //   37: dup
    //   38: ldc 59
    //   40: invokespecial 62	java/io/IOException:<init>	(Ljava/lang/String;)V
    //   43: invokeinterface 68 3 0
    //   48: aload_0
    //   49: getfield 14	okhttp3/as:a	Lokhttp3/aq;
    //   52: getfield 71	okhttp3/aq:a	Lokhttp3/am;
    //   55: getfield 76	okhttp3/am:a	Lokhttp3/v;
    //   58: aload_0
    //   59: invokevirtual 81	okhttp3/v:b	(Lokhttp3/as;)V
    //   62: return
    //   63: aload_0
    //   64: getfield 39	okhttp3/as:c	Lokhttp3/i;
    //   67: aload_0
    //   68: getfield 14	okhttp3/as:a	Lokhttp3/aq;
    //   71: aload_3
    //   72: invokeinterface 85 3 0
    //   77: goto -29 -> 48
    //   80: astore_3
    //   81: iload_1
    //   82: ifeq +120 -> 202
    //   85: getstatic 90	okhttp3/internal/f:a	Ljava/util/logging/Logger;
    //   88: astore 5
    //   90: getstatic 96	java/util/logging/Level:INFO	Ljava/util/logging/Level;
    //   93: astore 6
    //   95: new 98	java/lang/StringBuilder
    //   98: dup
    //   99: ldc 100
    //   101: invokespecial 101	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   104: astore 7
    //   106: aload_0
    //   107: getfield 14	okhttp3/as:a	Lokhttp3/aq;
    //   110: astore 8
    //   112: aload 8
    //   114: getfield 57	okhttp3/aq:b	Z
    //   117: ifeq +78 -> 195
    //   120: ldc 103
    //   122: astore 4
    //   124: aload 8
    //   126: getfield 23	okhttp3/aq:c	Lokhttp3/at;
    //   129: getfield 28	okhttp3/at:a	Lokhttp3/ad;
    //   132: ldc 105
    //   134: invokevirtual 108	okhttp3/ad:c	(Ljava/lang/String;)Lokhttp3/ad;
    //   137: astore 8
    //   139: aload 5
    //   141: aload 6
    //   143: aload 7
    //   145: new 98	java/lang/StringBuilder
    //   148: dup
    //   149: invokespecial 110	java/lang/StringBuilder:<init>	()V
    //   152: aload 4
    //   154: invokevirtual 114	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   157: ldc 116
    //   159: invokevirtual 114	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   162: aload 8
    //   164: invokevirtual 119	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   167: invokevirtual 120	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   170: invokevirtual 114	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   173: invokevirtual 120	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   176: aload_3
    //   177: invokevirtual 126	java/util/logging/Logger:log	(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   180: aload_0
    //   181: getfield 14	okhttp3/as:a	Lokhttp3/aq;
    //   184: getfield 71	okhttp3/aq:a	Lokhttp3/am;
    //   187: getfield 76	okhttp3/am:a	Lokhttp3/v;
    //   190: aload_0
    //   191: invokevirtual 81	okhttp3/v:b	(Lokhttp3/as;)V
    //   194: return
    //   195: ldc 128
    //   197: astore 4
    //   199: goto -75 -> 124
    //   202: aload_0
    //   203: getfield 39	okhttp3/as:c	Lokhttp3/i;
    //   206: aload_0
    //   207: getfield 14	okhttp3/as:a	Lokhttp3/aq;
    //   210: aload_3
    //   211: invokeinterface 68 3 0
    //   216: goto -36 -> 180
    //   219: astore_3
    //   220: aload_0
    //   221: getfield 14	okhttp3/as:a	Lokhttp3/aq;
    //   224: getfield 71	okhttp3/aq:a	Lokhttp3/am;
    //   227: getfield 76	okhttp3/am:a	Lokhttp3/v;
    //   230: aload_0
    //   231: invokevirtual 81	okhttp3/v:b	(Lokhttp3/as;)V
    //   234: aload_3
    //   235: athrow
    //   236: astore_3
    //   237: iconst_0
    //   238: istore_1
    //   239: goto -158 -> 81
    //
    // Exception table:
    //   from	to	target	type
    //   26	48	80	java/io/IOException
    //   63	77	80	java/io/IOException
    //   2	22	219	finally
    //   26	48	219	finally
    //   63	77	219	finally
    //   85	120	219	finally
    //   124	180	219	finally
    //   202	216	219	finally
    //   2	22	236	java/io/IOException
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     okhttp3.as
 * JD-Core Version:    0.6.2
 */