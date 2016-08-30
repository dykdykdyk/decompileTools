package com.crashlytics.android.core;

import io.fabric.sdk.android.services.b.k;

final class bx extends k
{
  private final float b;

  bx(bv parambv, float paramFloat)
  {
    this.b = paramFloat;
  }

  // ERROR //
  public final void a()
  {
    // Byte code:
    //   0: invokestatic 27	io/fabric/sdk/android/f:b	()Lio/fabric/sdk/android/r;
    //   3: ldc 29
    //   5: new 31	java/lang/StringBuilder
    //   8: dup
    //   9: ldc 33
    //   11: invokespecial 36	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   14: aload_0
    //   15: getfield 17	com/crashlytics/android/core/bx:b	F
    //   18: invokevirtual 40	java/lang/StringBuilder:append	(F)Ljava/lang/StringBuilder;
    //   21: ldc 42
    //   23: invokevirtual 45	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   26: invokevirtual 49	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   29: invokeinterface 54 3 0
    //   34: aload_0
    //   35: getfield 17	com/crashlytics/android/core/bx:b	F
    //   38: fstore_1
    //   39: fload_1
    //   40: fconst_0
    //   41: fcmpl
    //   42: ifle +14 -> 56
    //   45: aload_0
    //   46: getfield 17	com/crashlytics/android/core/bx:b	F
    //   49: ldc 55
    //   51: fmul
    //   52: f2l
    //   53: invokestatic 61	java/lang/Thread:sleep	(J)V
    //   56: invokestatic 67	com/crashlytics/android/core/h:f	()Lcom/crashlytics/android/core/h;
    //   59: astore 6
    //   61: aload 6
    //   63: getfield 71	com/crashlytics/android/core/h:d	Lcom/crashlytics/android/core/ab;
    //   66: astore 7
    //   68: aload_0
    //   69: getfield 12	com/crashlytics/android/core/bx:a	Lcom/crashlytics/android/core/bv;
    //   72: invokevirtual 76	com/crashlytics/android/core/bv:a	()Ljava/util/List;
    //   75: astore 5
    //   77: aload 7
    //   79: getfield 82	com/crashlytics/android/core/ab:e	Ljava/util/concurrent/atomic/AtomicBoolean;
    //   82: invokevirtual 88	java/util/concurrent/atomic/AtomicBoolean:get	()Z
    //   85: ifne +132 -> 217
    //   88: aload 5
    //   90: invokeinterface 93 1 0
    //   95: ifne +348 -> 443
    //   98: invokestatic 98	io/fabric/sdk/android/services/e/r:a	()Lio/fabric/sdk/android/services/e/q;
    //   101: new 100	com/crashlytics/android/core/n
    //   104: dup
    //   105: aload 6
    //   107: invokespecial 103	com/crashlytics/android/core/n:<init>	(Lcom/crashlytics/android/core/h;)V
    //   110: iconst_1
    //   111: invokestatic 109	java/lang/Boolean:valueOf	(Z)Ljava/lang/Boolean;
    //   114: invokevirtual 114	io/fabric/sdk/android/services/e/q:a	(Lio/fabric/sdk/android/services/e/s;Ljava/lang/Object;)Ljava/lang/Object;
    //   117: checkcast 105	java/lang/Boolean
    //   120: invokevirtual 117	java/lang/Boolean:booleanValue	()Z
    //   123: ifne +320 -> 443
    //   126: invokestatic 27	io/fabric/sdk/android/f:b	()Lio/fabric/sdk/android/r;
    //   129: ldc 29
    //   131: new 31	java/lang/StringBuilder
    //   134: dup
    //   135: ldc 119
    //   137: invokespecial 36	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   140: aload 5
    //   142: invokeinterface 123 1 0
    //   147: invokevirtual 126	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   150: ldc 128
    //   152: invokevirtual 45	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   155: invokevirtual 49	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   158: invokeinterface 54 3 0
    //   163: aload 5
    //   165: invokeinterface 132 1 0
    //   170: astore 5
    //   172: aload 5
    //   174: invokeinterface 137 1 0
    //   179: ifeq +38 -> 217
    //   182: aload 5
    //   184: invokeinterface 141 1 0
    //   189: checkcast 143	com/crashlytics/android/core/bu
    //   192: invokeinterface 145 1 0
    //   197: pop
    //   198: goto -26 -> 172
    //   201: astore 5
    //   203: invokestatic 27	io/fabric/sdk/android/f:b	()Lio/fabric/sdk/android/r;
    //   206: ldc 29
    //   208: ldc 147
    //   210: aload 5
    //   212: invokeinterface 151 4 0
    //   217: aload_0
    //   218: getfield 12	com/crashlytics/android/core/bx:a	Lcom/crashlytics/android/core/bv;
    //   221: invokestatic 154	com/crashlytics/android/core/bv:a	(Lcom/crashlytics/android/core/bv;)Ljava/lang/Thread;
    //   224: pop
    //   225: return
    //   226: astore 5
    //   228: invokestatic 158	java/lang/Thread:currentThread	()Ljava/lang/Thread;
    //   231: invokevirtual 161	java/lang/Thread:interrupt	()V
    //   234: goto -17 -> 217
    //   237: aload 5
    //   239: invokeinterface 93 1 0
    //   244: ifne -27 -> 217
    //   247: invokestatic 67	com/crashlytics/android/core/h:f	()Lcom/crashlytics/android/core/h;
    //   250: getfield 71	com/crashlytics/android/core/h:d	Lcom/crashlytics/android/core/ab;
    //   253: getfield 82	com/crashlytics/android/core/ab:e	Ljava/util/concurrent/atomic/AtomicBoolean;
    //   256: invokevirtual 88	java/util/concurrent/atomic/AtomicBoolean:get	()Z
    //   259: ifne -42 -> 217
    //   262: invokestatic 27	io/fabric/sdk/android/f:b	()Lio/fabric/sdk/android/r;
    //   265: ldc 29
    //   267: new 31	java/lang/StringBuilder
    //   270: dup
    //   271: ldc 163
    //   273: invokespecial 36	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   276: aload 5
    //   278: invokeinterface 123 1 0
    //   283: invokevirtual 126	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   286: ldc 165
    //   288: invokevirtual 45	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   291: invokevirtual 49	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   294: invokeinterface 54 3 0
    //   299: aload 5
    //   301: invokeinterface 132 1 0
    //   306: astore 5
    //   308: aload 5
    //   310: invokeinterface 137 1 0
    //   315: ifeq +28 -> 343
    //   318: aload 5
    //   320: invokeinterface 141 1 0
    //   325: checkcast 143	com/crashlytics/android/core/bu
    //   328: astore 6
    //   330: aload_0
    //   331: getfield 12	com/crashlytics/android/core/bx:a	Lcom/crashlytics/android/core/bv;
    //   334: aload 6
    //   336: invokevirtual 168	com/crashlytics/android/core/bv:a	(Lcom/crashlytics/android/core/bu;)Z
    //   339: pop
    //   340: goto -32 -> 308
    //   343: aload_0
    //   344: getfield 12	com/crashlytics/android/core/bx:a	Lcom/crashlytics/android/core/bv;
    //   347: invokevirtual 76	com/crashlytics/android/core/bv:a	()Ljava/util/List;
    //   350: astore 6
    //   352: aload 6
    //   354: astore 5
    //   356: aload 6
    //   358: invokeinterface 93 1 0
    //   363: ifne -126 -> 237
    //   366: invokestatic 171	com/crashlytics/android/core/bv:b	()[S
    //   369: iload_2
    //   370: invokestatic 171	com/crashlytics/android/core/bv:b	()[S
    //   373: arraylength
    //   374: iconst_1
    //   375: isub
    //   376: invokestatic 177	java/lang/Math:min	(II)I
    //   379: saload
    //   380: i2l
    //   381: lstore_3
    //   382: invokestatic 27	io/fabric/sdk/android/f:b	()Lio/fabric/sdk/android/r;
    //   385: ldc 29
    //   387: new 31	java/lang/StringBuilder
    //   390: dup
    //   391: ldc 179
    //   393: invokespecial 36	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   396: lload_3
    //   397: invokevirtual 182	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   400: ldc 184
    //   402: invokevirtual 45	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   405: invokevirtual 49	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   408: invokeinterface 54 3 0
    //   413: lload_3
    //   414: ldc2_w 185
    //   417: lmul
    //   418: invokestatic 61	java/lang/Thread:sleep	(J)V
    //   421: iload_2
    //   422: iconst_1
    //   423: iadd
    //   424: istore_2
    //   425: aload 6
    //   427: astore 5
    //   429: goto -192 -> 237
    //   432: astore 5
    //   434: invokestatic 158	java/lang/Thread:currentThread	()Ljava/lang/Thread;
    //   437: invokevirtual 161	java/lang/Thread:interrupt	()V
    //   440: goto -223 -> 217
    //   443: iconst_0
    //   444: istore_2
    //   445: goto -208 -> 237
    //
    // Exception table:
    //   from	to	target	type
    //   0	39	201	java/lang/Exception
    //   45	56	201	java/lang/Exception
    //   56	172	201	java/lang/Exception
    //   172	198	201	java/lang/Exception
    //   228	234	201	java/lang/Exception
    //   237	308	201	java/lang/Exception
    //   308	340	201	java/lang/Exception
    //   343	352	201	java/lang/Exception
    //   356	413	201	java/lang/Exception
    //   413	421	201	java/lang/Exception
    //   434	440	201	java/lang/Exception
    //   45	56	226	java/lang/InterruptedException
    //   413	421	432	java/lang/InterruptedException
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.crashlytics.android.core.bx
 * JD-Core Version:    0.6.2
 */