package rx.c.a;

import java.util.Queue;
import rx.c.d.f;
import rx.z;

final class m<T> extends z<T>
{
  static final int g = f.d / 4;
  final o<T> a;
  final long b;
  volatile boolean d;
  volatile f e;
  int f;

  public m(o<T> paramo, long paramLong)
  {
    this.a = paramo;
    this.b = paramLong;
  }

  public final void a()
  {
    this.d = true;
    this.a.e();
  }

  // ERROR //
  public final void a(T paramT)
  {
    // Byte code:
    //   0: lconst_0
    //   1: lstore 6
    //   3: iconst_1
    //   4: istore 4
    //   6: iconst_0
    //   7: istore_3
    //   8: iconst_0
    //   9: istore 5
    //   11: aload_0
    //   12: getfield 32	rx/c/a/m:a	Lrx/c/a/o;
    //   15: astore 10
    //   17: aload 10
    //   19: getfield 52	rx/c/a/o:e	Lrx/c/a/n;
    //   22: invokevirtual 58	rx/c/a/n:get	()J
    //   25: lconst_0
    //   26: lcmp
    //   27: ifeq +369 -> 396
    //   30: aload 10
    //   32: monitorenter
    //   33: aload 10
    //   35: getfield 52	rx/c/a/o:e	Lrx/c/a/n;
    //   38: invokevirtual 58	rx/c/a/n:get	()J
    //   41: lstore 6
    //   43: aload 10
    //   45: getfield 61	rx/c/a/o:k	Z
    //   48: ifne +343 -> 391
    //   51: lload 6
    //   53: lconst_0
    //   54: lcmp
    //   55: ifeq +336 -> 391
    //   58: aload 10
    //   60: iconst_1
    //   61: putfield 61	rx/c/a/o:k	Z
    //   64: iconst_1
    //   65: istore_2
    //   66: aload 10
    //   68: monitorexit
    //   69: iload_2
    //   70: ifeq +161 -> 231
    //   73: aload 10
    //   75: getfield 64	rx/c/a/o:a	Lrx/z;
    //   78: aload_1
    //   79: invokevirtual 66	rx/z:a	(Ljava/lang/Object;)V
    //   82: lload 6
    //   84: ldc2_w 67
    //   87: lcmp
    //   88: ifeq +15 -> 103
    //   91: aload 10
    //   93: getfield 52	rx/c/a/o:e	Lrx/c/a/n;
    //   96: ldc2_w 69
    //   99: invokevirtual 74	rx/c/a/n:addAndGet	(J)J
    //   102: pop2
    //   103: aload_0
    //   104: lconst_1
    //   105: invokevirtual 77	rx/c/a/m:b	(J)V
    //   108: aload 10
    //   110: monitorenter
    //   111: aload 10
    //   113: getfield 80	rx/c/a/o:l	Z
    //   116: ifne +88 -> 204
    //   119: aload 10
    //   121: iconst_0
    //   122: putfield 61	rx/c/a/o:k	Z
    //   125: aload 10
    //   127: monitorexit
    //   128: return
    //   129: astore_1
    //   130: aload 10
    //   132: monitorexit
    //   133: aload_1
    //   134: athrow
    //   135: astore_1
    //   136: aload 10
    //   138: getfield 82	rx/c/a/o:b	Z
    //   141: ifne +41 -> 182
    //   144: aload_1
    //   145: invokestatic 87	rx/exceptions/e:a	(Ljava/lang/Throwable;)V
    //   148: aload_0
    //   149: getfield 91	rx/z:c	Lrx/c/d/s;
    //   152: invokevirtual 96	rx/c/d/s:n_	()V
    //   155: aload_0
    //   156: aload_1
    //   157: invokevirtual 97	rx/c/a/m:a	(Ljava/lang/Throwable;)V
    //   160: return
    //   161: astore_1
    //   162: iconst_1
    //   163: istore_2
    //   164: iload_2
    //   165: ifne +15 -> 180
    //   168: aload 10
    //   170: monitorenter
    //   171: aload 10
    //   173: iconst_0
    //   174: putfield 61	rx/c/a/o:k	Z
    //   177: aload 10
    //   179: monitorexit
    //   180: aload_1
    //   181: athrow
    //   182: aload 10
    //   184: invokevirtual 100	rx/c/a/o:d	()Ljava/util/Queue;
    //   187: aload_1
    //   188: invokeinterface 106 2 0
    //   193: pop
    //   194: goto -112 -> 82
    //   197: astore_1
    //   198: iload 5
    //   200: istore_2
    //   201: goto -37 -> 164
    //   204: aload 10
    //   206: iconst_0
    //   207: putfield 80	rx/c/a/o:l	Z
    //   210: aload 10
    //   212: monitorexit
    //   213: aload 10
    //   215: invokevirtual 108	rx/c/a/o:f	()V
    //   218: return
    //   219: astore_1
    //   220: aload 10
    //   222: monitorexit
    //   223: aload_1
    //   224: athrow
    //   225: astore_1
    //   226: aload 10
    //   228: monitorexit
    //   229: aload_1
    //   230: athrow
    //   231: aload_0
    //   232: getfield 110	rx/c/a/m:e	Lrx/c/d/f;
    //   235: astore 9
    //   237: aload 9
    //   239: astore 8
    //   241: aload 9
    //   243: ifnonnull +20 -> 263
    //   246: invokestatic 113	rx/c/d/f:c	()Lrx/c/d/f;
    //   249: astore 8
    //   251: aload_0
    //   252: aload 8
    //   254: invokevirtual 116	rx/c/a/m:a	(Lrx/aa;)V
    //   257: aload_0
    //   258: aload 8
    //   260: putfield 110	rx/c/a/m:e	Lrx/c/d/f;
    //   263: aload_1
    //   264: invokestatic 121	rx/c/a/b:a	(Ljava/lang/Object;)Ljava/lang/Object;
    //   267: astore_1
    //   268: aload 8
    //   270: monitorenter
    //   271: aload 8
    //   273: getfield 124	rx/c/d/f:a	Ljava/util/Queue;
    //   276: astore 9
    //   278: aload 9
    //   280: ifnull +56 -> 336
    //   283: aload 9
    //   285: aload_1
    //   286: invokestatic 121	rx/c/a/b:a	(Ljava/lang/Object;)Ljava/lang/Object;
    //   289: invokeinterface 106 2 0
    //   294: ifne +37 -> 331
    //   297: iload 4
    //   299: istore_2
    //   300: aload 8
    //   302: monitorexit
    //   303: iload_3
    //   304: ifeq +69 -> 373
    //   307: new 49	java/lang/IllegalStateException
    //   310: dup
    //   311: ldc 126
    //   313: invokespecial 129	java/lang/IllegalStateException:<init>	(Ljava/lang/String;)V
    //   316: athrow
    //   317: astore_1
    //   318: aload_0
    //   319: getfield 91	rx/z:c	Lrx/c/d/s;
    //   322: invokevirtual 96	rx/c/d/s:n_	()V
    //   325: aload_0
    //   326: aload_1
    //   327: invokevirtual 97	rx/c/a/m:a	(Ljava/lang/Throwable;)V
    //   330: return
    //   331: iconst_0
    //   332: istore_2
    //   333: goto -33 -> 300
    //   336: iconst_1
    //   337: istore_3
    //   338: iconst_0
    //   339: istore_2
    //   340: goto -40 -> 300
    //   343: astore_1
    //   344: aload 8
    //   346: monitorexit
    //   347: aload_1
    //   348: athrow
    //   349: astore_1
    //   350: aload_0
    //   351: getfield 91	rx/z:c	Lrx/c/d/s;
    //   354: getfield 130	rx/c/d/s:b	Z
    //   357: ifne -229 -> 128
    //   360: aload_0
    //   361: getfield 91	rx/z:c	Lrx/c/d/s;
    //   364: invokevirtual 96	rx/c/d/s:n_	()V
    //   367: aload_0
    //   368: aload_1
    //   369: invokevirtual 97	rx/c/a/m:a	(Ljava/lang/Throwable;)V
    //   372: return
    //   373: iload_2
    //   374: ifeq +11 -> 385
    //   377: new 47	rx/exceptions/MissingBackpressureException
    //   380: dup
    //   381: invokespecial 131	rx/exceptions/MissingBackpressureException:<init>	()V
    //   384: athrow
    //   385: aload 10
    //   387: invokevirtual 42	rx/c/a/o:e	()V
    //   390: return
    //   391: iconst_0
    //   392: istore_2
    //   393: goto -327 -> 66
    //   396: iconst_0
    //   397: istore_2
    //   398: goto -329 -> 69
    //
    // Exception table:
    //   from	to	target	type
    //   33	51	129	finally
    //   58	64	129	finally
    //   66	69	129	finally
    //   130	133	129	finally
    //   73	82	135	java/lang/Throwable
    //   148	160	161	finally
    //   223	225	161	finally
    //   73	82	197	finally
    //   91	103	197	finally
    //   103	111	197	finally
    //   136	148	197	finally
    //   182	194	197	finally
    //   111	128	219	finally
    //   204	213	219	finally
    //   220	223	219	finally
    //   171	180	225	finally
    //   226	229	225	finally
    //   263	271	317	rx/exceptions/MissingBackpressureException
    //   307	317	317	rx/exceptions/MissingBackpressureException
    //   347	349	317	rx/exceptions/MissingBackpressureException
    //   377	385	317	rx/exceptions/MissingBackpressureException
    //   271	278	343	finally
    //   283	297	343	finally
    //   300	303	343	finally
    //   344	347	343	finally
    //   263	271	349	java/lang/IllegalStateException
    //   307	317	349	java/lang/IllegalStateException
    //   347	349	349	java/lang/IllegalStateException
    //   377	385	349	java/lang/IllegalStateException
  }

  public final void a(Throwable paramThrowable)
  {
    this.d = true;
    this.a.d().offer(paramThrowable);
    this.a.e();
  }

  public final void b(long paramLong)
  {
    int i = this.f - (int)paramLong;
    if (i > g)
      this.f = i;
    do
    {
      return;
      this.f = f.d;
      i = f.d - i;
    }
    while (i <= 0);
    a(i);
  }

  public final void c()
  {
    this.f = f.d;
    a(f.d);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     rx.c.a.m
 * JD-Core Version:    0.6.2
 */