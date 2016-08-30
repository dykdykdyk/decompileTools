package okhttp3.internal.a;

import java.io.Closeable;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.net.Socket;
import java.util.HashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import okhttp3.internal.o;

public final class e
  implements Closeable
{
  private static final ExecutorService l;
  public final okhttp3.ap a;
  final boolean b;
  long c = 0L;
  long d;
  public ap e = new ap();
  final ap f = new ap();
  final at g;
  final Socket h;
  public final d i;
  final p j;
  private final n m;
  private final Map<Integer, t> n = new HashMap();
  private final String o;
  private int p;
  private int q;
  private boolean r;
  private long s = System.nanoTime();
  private final ExecutorService t;
  private Map<Integer, am> u;
  private final an v;
  private int w;
  private boolean x = false;
  private final Set<Integer> y = new LinkedHashSet();

  static
  {
    if (!e.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      k = bool;
      l = new ThreadPoolExecutor(0, 2147483647, 60L, TimeUnit.SECONDS, new SynchronousQueue(), o.a("OkHttp FramedConnection", true));
      return;
    }
  }

  private e(m paramm)
    throws IOException
  {
    this.a = paramm.f;
    this.v = paramm.g;
    this.b = paramm.h;
    this.m = paramm.e;
    int i1;
    if (paramm.h)
    {
      i1 = 1;
      this.q = i1;
      if ((paramm.h) && (this.a == okhttp3.ap.d))
        this.q += 2;
      i1 = i2;
      if (paramm.h)
        i1 = 1;
      this.w = i1;
      if (paramm.h)
        this.e.a(7, 0, 16777216);
      this.o = paramm.b;
      if (this.a != okhttp3.ap.d)
        break label368;
      this.g = new ac();
      this.t = new ThreadPoolExecutor(0, 1, 60L, TimeUnit.SECONDS, new LinkedBlockingQueue(), o.a(String.format("OkHttp %s Push Observer", new Object[] { this.o }), true));
      this.f.a(7, 0, 65535);
      this.f.a(5, 0, 16384);
    }
    while (true)
    {
      this.d = this.f.b();
      this.h = paramm.a;
      this.i = this.g.a(paramm.d, this.b);
      this.j = new p(this, this.g.a(paramm.c, this.b), (byte)0);
      new Thread(this.j).start();
      return;
      i1 = 2;
      break;
      label368: if (this.a != okhttp3.ap.c)
        break label397;
      this.g = new aq();
      this.t = null;
    }
    label397: throw new AssertionError(this.a);
  }

  // ERROR //
  private void a(a parama1, a parama2)
    throws IOException
  {
    // Byte code:
    //   0: getstatic 59	okhttp3/internal/a/e:k	Z
    //   3: ifne +18 -> 21
    //   6: aload_0
    //   7: invokestatic 234	java/lang/Thread:holdsLock	(Ljava/lang/Object;)Z
    //   10: ifeq +11 -> 21
    //   13: new 221	java/lang/AssertionError
    //   16: dup
    //   17: invokespecial 235	java/lang/AssertionError:<init>	()V
    //   20: athrow
    //   21: aload_0
    //   22: getfield 193	okhttp3/internal/a/e:i	Lokhttp3/internal/a/d;
    //   25: astore 5
    //   27: aload 5
    //   29: monitorenter
    //   30: aload_0
    //   31: monitorenter
    //   32: aload_0
    //   33: getfield 237	okhttp3/internal/a/e:r	Z
    //   36: ifeq +160 -> 196
    //   39: aload_0
    //   40: monitorexit
    //   41: aload 5
    //   43: monitorexit
    //   44: aconst_null
    //   45: astore_1
    //   46: aload_0
    //   47: monitorenter
    //   48: aload_0
    //   49: getfield 97	okhttp3/internal/a/e:n	Ljava/util/Map;
    //   52: invokeinterface 242 1 0
    //   57: ifne +337 -> 394
    //   60: aload_0
    //   61: getfield 97	okhttp3/internal/a/e:n	Ljava/util/Map;
    //   64: invokeinterface 246 1 0
    //   69: aload_0
    //   70: getfield 97	okhttp3/internal/a/e:n	Ljava/util/Map;
    //   73: invokeinterface 249 1 0
    //   78: anewarray 251	okhttp3/internal/a/t
    //   81: invokeinterface 257 2 0
    //   86: checkcast 259	[Lokhttp3/internal/a/t;
    //   89: astore 6
    //   91: aload_0
    //   92: getfield 97	okhttp3/internal/a/e:n	Ljava/util/Map;
    //   95: invokeinterface 262 1 0
    //   100: aload_0
    //   101: iconst_0
    //   102: invokespecial 265	okhttp3/internal/a/e:a	(Z)V
    //   105: aload_0
    //   106: getfield 267	okhttp3/internal/a/e:u	Ljava/util/Map;
    //   109: ifnull +279 -> 388
    //   112: aload_0
    //   113: getfield 267	okhttp3/internal/a/e:u	Ljava/util/Map;
    //   116: invokeinterface 246 1 0
    //   121: aload_0
    //   122: getfield 267	okhttp3/internal/a/e:u	Ljava/util/Map;
    //   125: invokeinterface 249 1 0
    //   130: anewarray 269	okhttp3/internal/a/am
    //   133: invokeinterface 257 2 0
    //   138: checkcast 271	[Lokhttp3/internal/a/am;
    //   141: astore 7
    //   143: aload_0
    //   144: aconst_null
    //   145: putfield 267	okhttp3/internal/a/e:u	Ljava/util/Map;
    //   148: aload_0
    //   149: monitorexit
    //   150: aload_1
    //   151: astore 5
    //   153: aload 6
    //   155: ifnull +114 -> 269
    //   158: aload 6
    //   160: arraylength
    //   161: istore 4
    //   163: iconst_0
    //   164: istore_3
    //   165: iload_3
    //   166: iload 4
    //   168: if_icmpge +98 -> 266
    //   171: aload 6
    //   173: iload_3
    //   174: aaload
    //   175: astore 5
    //   177: aload 5
    //   179: aload_2
    //   180: invokevirtual 274	okhttp3/internal/a/t:a	(Lokhttp3/internal/a/a;)V
    //   183: aload_1
    //   184: astore 5
    //   186: iload_3
    //   187: iconst_1
    //   188: iadd
    //   189: istore_3
    //   190: aload 5
    //   192: astore_1
    //   193: goto -28 -> 165
    //   196: aload_0
    //   197: iconst_1
    //   198: putfield 237	okhttp3/internal/a/e:r	Z
    //   201: aload_0
    //   202: getfield 276	okhttp3/internal/a/e:p	I
    //   205: istore_3
    //   206: aload_0
    //   207: monitorexit
    //   208: aload_0
    //   209: getfield 193	okhttp3/internal/a/e:i	Lokhttp3/internal/a/d;
    //   212: iload_3
    //   213: aload_1
    //   214: getstatic 279	okhttp3/internal/o:a	[B
    //   217: invokeinterface 284 4 0
    //   222: aload 5
    //   224: monitorexit
    //   225: aconst_null
    //   226: astore_1
    //   227: goto -181 -> 46
    //   230: astore_1
    //   231: aload_0
    //   232: monitorexit
    //   233: aload_1
    //   234: athrow
    //   235: astore_1
    //   236: aload 5
    //   238: monitorexit
    //   239: aload_1
    //   240: athrow
    //   241: astore_1
    //   242: goto -196 -> 46
    //   245: astore_1
    //   246: aload_0
    //   247: monitorexit
    //   248: aload_1
    //   249: athrow
    //   250: astore 8
    //   252: aload_1
    //   253: astore 5
    //   255: aload_1
    //   256: ifnull -70 -> 186
    //   259: aload 8
    //   261: astore 5
    //   263: goto -77 -> 186
    //   266: aload_1
    //   267: astore 5
    //   269: aload 7
    //   271: ifnull +75 -> 346
    //   274: aload 7
    //   276: arraylength
    //   277: istore 4
    //   279: iconst_0
    //   280: istore_3
    //   281: iload_3
    //   282: iload 4
    //   284: if_icmpge +62 -> 346
    //   287: aload 7
    //   289: iload_3
    //   290: aaload
    //   291: astore_1
    //   292: aload_1
    //   293: getfield 285	okhttp3/internal/a/am:c	J
    //   296: ldc2_w 286
    //   299: lcmp
    //   300: ifne +14 -> 314
    //   303: aload_1
    //   304: getfield 289	okhttp3/internal/a/am:b	J
    //   307: ldc2_w 286
    //   310: lcmp
    //   311: ifne +11 -> 322
    //   314: new 291	java/lang/IllegalStateException
    //   317: dup
    //   318: invokespecial 292	java/lang/IllegalStateException:<init>	()V
    //   321: athrow
    //   322: aload_1
    //   323: aload_1
    //   324: getfield 289	okhttp3/internal/a/am:b	J
    //   327: lconst_1
    //   328: lsub
    //   329: putfield 285	okhttp3/internal/a/am:c	J
    //   332: aload_1
    //   333: getfield 295	okhttp3/internal/a/am:a	Ljava/util/concurrent/CountDownLatch;
    //   336: invokevirtual 300	java/util/concurrent/CountDownLatch:countDown	()V
    //   339: iload_3
    //   340: iconst_1
    //   341: iadd
    //   342: istore_3
    //   343: goto -62 -> 281
    //   346: aload_0
    //   347: getfield 193	okhttp3/internal/a/e:i	Lokhttp3/internal/a/d;
    //   350: invokeinterface 303 1 0
    //   355: aload 5
    //   357: astore_1
    //   358: aload_0
    //   359: getfield 183	okhttp3/internal/a/e:h	Ljava/net/Socket;
    //   362: invokevirtual 306	java/net/Socket:close	()V
    //   365: aload_1
    //   366: ifnull +17 -> 383
    //   369: aload_1
    //   370: athrow
    //   371: astore_1
    //   372: aload 5
    //   374: ifnull -16 -> 358
    //   377: aload 5
    //   379: astore_1
    //   380: goto -22 -> 358
    //   383: return
    //   384: astore_1
    //   385: goto -20 -> 365
    //   388: aconst_null
    //   389: astore 7
    //   391: goto -243 -> 148
    //   394: aconst_null
    //   395: astore 6
    //   397: goto -292 -> 105
    //
    // Exception table:
    //   from	to	target	type
    //   32	41	230	finally
    //   196	208	230	finally
    //   231	233	230	finally
    //   30	32	235	finally
    //   41	44	235	finally
    //   208	225	235	finally
    //   233	235	235	finally
    //   236	239	235	finally
    //   21	30	241	java/io/IOException
    //   239	241	241	java/io/IOException
    //   48	105	245	finally
    //   105	148	245	finally
    //   148	150	245	finally
    //   246	248	245	finally
    //   177	183	250	java/io/IOException
    //   346	355	371	java/io/IOException
    //   358	365	384	java/io/IOException
  }

  private void a(boolean paramBoolean)
  {
    if (paramBoolean);
    try
    {
      for (long l1 = System.nanoTime(); ; l1 = 9223372036854775807L)
      {
        this.s = l1;
        return;
      }
    }
    finally
    {
    }
  }

  private am c(int paramInt)
  {
    try
    {
      if (this.u != null)
      {
        localam = (am)this.u.remove(Integer.valueOf(paramInt));
        return localam;
      }
      am localam = null;
    }
    finally
    {
    }
  }

  public final int a()
  {
    try
    {
      ap localap = this.f;
      if ((localap.a & 0x10) != 0)
      {
        i1 = localap.d[4];
        return i1;
      }
      int i1 = 2147483647;
    }
    finally
    {
    }
  }

  final t a(int paramInt)
  {
    try
    {
      t localt = (t)this.n.get(Integer.valueOf(paramInt));
      return localt;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public final t a(List<x> paramList, boolean paramBoolean)
    throws IOException
  {
    boolean bool = false;
    if (!paramBoolean)
      bool = true;
    synchronized (this.i)
    {
      try
      {
        if (this.r)
          throw new IOException("shutdown");
      }
      finally
      {
      }
    }
    int i1 = this.q;
    this.q += 2;
    t localt = new t(i1, this, bool, false, paramList);
    if (localt.a())
    {
      this.n.put(Integer.valueOf(i1), localt);
      a(false);
    }
    this.i.a(bool, i1, paramList);
    if (!paramBoolean)
      this.i.b();
    return localt;
  }

  final void a(int paramInt, long paramLong)
  {
    l.execute(new g(this, "OkHttp Window Update %s stream %d", new Object[] { this.o, Integer.valueOf(paramInt) }, paramInt, paramLong));
  }

  final void a(int paramInt, a parama)
  {
    l.submit(new f(this, "OkHttp %s stream %d", new Object[] { this.o, Integer.valueOf(paramInt) }, paramInt, parama));
  }

  public final void a(int paramInt, boolean paramBoolean, a.f paramf, long paramLong)
    throws IOException
  {
    long l1 = paramLong;
    if (paramLong == 0L)
    {
      this.i.a(paramBoolean, paramInt, paramf, 0);
      return;
    }
    while (true)
    {
      try
      {
        int i1 = Math.min((int)Math.min(l1, this.d), this.i.c());
        this.d -= i1;
        l1 -= i1;
        d locald = this.i;
        if ((!paramBoolean) || (l1 != 0L))
          break label170;
        bool = true;
        locald.a(bool, paramInt, paramf, i1);
        if (l1 <= 0L)
          break;
        try
        {
          if (this.d > 0L)
            continue;
          if (!this.n.containsKey(Integer.valueOf(paramInt)))
            throw new IOException("stream closed");
        }
        catch (InterruptedException paramf)
        {
          throw new InterruptedIOException();
        }
      }
      finally
      {
      }
      wait();
      continue;
      label170: boolean bool = false;
    }
  }

  final t b(int paramInt)
  {
    try
    {
      t localt = (t)this.n.remove(Integer.valueOf(paramInt));
      if ((localt != null) && (this.n.isEmpty()))
        a(true);
      notifyAll();
      return localt;
    }
    finally
    {
    }
  }

  public final void b()
    throws IOException
  {
    this.i.b();
  }

  final void b(int paramInt, a parama)
    throws IOException
  {
    this.i.a(paramInt, parama);
  }

  public final void close()
    throws IOException
  {
    a(a.a, a.l);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     okhttp3.internal.a.e
 * JD-Core Version:    0.6.2
 */