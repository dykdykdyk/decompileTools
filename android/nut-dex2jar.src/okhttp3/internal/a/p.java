package okhttp3.internal.a;

import a.j;
import a.k;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.List;
import java.util.Map;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.ExecutorService;
import okhttp3.internal.h;

final class p extends h
  implements c
{
  final b a;

  private p(e parame, b paramb)
  {
    super("OkHttp %s", new Object[] { e.a(parame) });
    this.a = paramb;
  }

  public final void a(int paramInt, long paramLong)
  {
    if (paramInt == 0)
      synchronized (this.c)
      {
        e locale = this.c;
        locale.d += paramLong;
        this.c.notifyAll();
        return;
      }
    ??? = this.c.a(paramInt);
    if (??? != null)
      try
      {
        ((t)???).a(paramLong);
        return;
      }
      finally
      {
      }
  }

  public final void a(int paramInt, k arg2)
  {
    ??? = ???.c;
    synchronized (this.c)
    {
      t[] arrayOft = (t[])e.e(this.c).values().toArray(new t[e.e(this.c).size()]);
      e.i(this.c);
      int j = arrayOft.length;
      int i = 0;
      if (i < j)
      {
        ??? = arrayOft[i];
        if ((???.c > paramInt) && (???.b()))
        {
          ???.c(a.k);
          this.c.b(???.c);
        }
        i += 1;
      }
    }
  }

  public final void a(int paramInt, List<x> paramList)
  {
    e.a(this.c, paramInt, paramList);
  }

  public final void a(int paramInt, a parama)
  {
    if (e.a(this.c, paramInt))
      e.a(this.c, paramInt, parama);
    t localt;
    do
    {
      return;
      localt = this.c.b(paramInt);
    }
    while (localt == null);
    localt.c(parama);
  }

  public final void a(boolean paramBoolean, int paramInt1, int paramInt2)
  {
    if (paramBoolean)
    {
      am localam = e.c(this.c, paramInt1);
      if (localam != null)
      {
        if ((localam.c != -1L) || (localam.b == -1L))
          throw new IllegalStateException();
        localam.c = System.nanoTime();
        localam.a.countDown();
      }
      return;
    }
    e.a(this.c, paramInt1, paramInt2);
  }

  public final void a(boolean paramBoolean, int paramInt1, j paramj, int paramInt2)
    throws IOException
  {
    if (e.a(this.c, paramInt1))
      e.a(this.c, paramInt1, paramj, paramInt2, paramBoolean);
    t localt;
    do
    {
      return;
      localt = this.c.a(paramInt1);
      if (localt == null)
      {
        this.c.a(paramInt1, a.c);
        paramj.f(paramInt2);
        return;
      }
      if ((!t.j) && (Thread.holdsLock(localt)))
        throw new AssertionError();
      localt.f.a(paramj, paramInt2);
    }
    while (!paramBoolean);
    localt.e();
  }

  public final void a(boolean paramBoolean, ap paramap)
  {
    while (true)
    {
      int i;
      synchronized (this.c)
      {
        int j = this.c.f.b();
        if (paramBoolean)
        {
          localap = this.c.f;
          localap.c = 0;
          localap.b = 0;
          localap.a = 0;
          Arrays.fill(localap.d, 0);
        }
        ap localap = this.c.f;
        i = 0;
        if (i < 10)
        {
          if (!paramap.a(i))
            break label387;
          localap.a(i, paramap.b(i), paramap.d[i]);
          break label387;
        }
        if (this.c.a == okhttp3.ap.d)
          e.c().execute(new s(this, "OkHttp %s ACK Settings", new Object[] { e.a(this.c) }, paramap));
        i = this.c.f.b();
        if ((i == -1) || (i == j))
          break label379;
        l = i - j;
        if (!e.g(this.c))
        {
          paramap = this.c;
          paramap.d += l;
          if (l > 0L)
            paramap.notifyAll();
          e.h(this.c);
        }
        if (e.e(this.c).isEmpty())
          break label374;
        paramap = (t[])e.e(this.c).values().toArray(new t[e.e(this.c).size()]);
        e.c().execute(new r(this, "OkHttp %s settings", new Object[] { e.a(this.c) }));
        if ((paramap == null) || (l == 0L))
          break label373;
        j = paramap.length;
        i = 0;
        if (i >= j)
          break label373;
      }
      synchronized (paramap[i])
      {
        ???.a(l);
        i += 1;
        continue;
        paramap = finally;
        throw paramap;
      }
      label373: return;
      label374: paramap = null;
      continue;
      label379: paramap = null;
      long l = 0L;
      continue;
      label387: i += 1;
    }
  }

  public final void a(boolean paramBoolean1, boolean paramBoolean2, int paramInt, List<x> paramList, y paramy)
  {
    int j = 0;
    int k = 0;
    int i = 0;
    boolean bool = true;
    if (e.a(this.c, paramInt))
    {
      e.a(this.c, paramInt, paramList, paramBoolean2);
      return;
    }
    synchronized (this.c)
    {
      if (e.b(this.c))
        return;
    }
    t localt = this.c.a(paramInt);
    if (localt == null)
      if ((paramy == y.b) || (paramy == y.c))
        break label506;
    while (true)
    {
      if (i != 0)
      {
        this.c.a(paramInt, a.c);
        return;
      }
      if (paramInt <= e.c(this.c))
        return;
      if (paramInt % 2 == e.d(this.c) % 2)
        return;
      paramList = new t(paramInt, this.c, paramBoolean1, paramBoolean2, paramList);
      e.b(this.c, paramInt);
      e.e(this.c).put(Integer.valueOf(paramInt), paramList);
      e.c().execute(new q(this, "OkHttp %s stream %d", new Object[] { e.a(this.c), Integer.valueOf(paramInt) }, paramList));
      return;
      if (paramy == y.a);
      for (i = 1; i != 0; i = 0)
      {
        localt.b(a.b);
        this.c.b(paramInt);
        return;
      }
      if ((!t.j) && (Thread.holdsLock(localt)))
        throw new AssertionError();
      ??? = null;
      while (true)
      {
        try
        {
          if (localt.e == null)
          {
            paramInt = j;
            if (paramy == y.c)
              paramInt = 1;
            if (paramInt != 0)
            {
              paramList = a.b;
              paramBoolean1 = bool;
              if (paramList == null)
                break label485;
              localt.b(paramList);
              if (!paramBoolean2)
                break;
              localt.e();
              return;
            }
            localt.e = paramList;
            paramBoolean1 = localt.a();
            localt.notifyAll();
            paramList = ???;
            continue;
          }
        }
        finally
        {
        }
        paramInt = k;
        if (paramy == y.b)
          paramInt = 1;
        if (paramInt != 0)
        {
          paramList = a.e;
          paramBoolean1 = bool;
        }
        else
        {
          paramy = new ArrayList();
          paramy.addAll(localt.e);
          paramy.addAll(paramList);
          localt.e = paramy;
          paramBoolean1 = bool;
          paramList = ???;
          continue;
          label485: if (!paramBoolean1)
            localt.d.b(localt.c);
        }
      }
      label506: i = 1;
    }
  }

  // ERROR //
  protected final void b()
  {
    // Byte code:
    //   0: getstatic 322	okhttp3/internal/a/a:g	Lokhttp3/internal/a/a;
    //   3: astore_3
    //   4: getstatic 322	okhttp3/internal/a/a:g	Lokhttp3/internal/a/a;
    //   7: astore 4
    //   9: aload_3
    //   10: astore_2
    //   11: aload_3
    //   12: astore_1
    //   13: aload_0
    //   14: getfield 14	okhttp3/internal/a/p:c	Lokhttp3/internal/a/e;
    //   17: getfield 324	okhttp3/internal/a/e:b	Z
    //   20: ifne +16 -> 36
    //   23: aload_3
    //   24: astore_2
    //   25: aload_3
    //   26: astore_1
    //   27: aload_0
    //   28: getfield 28	okhttp3/internal/a/p:a	Lokhttp3/internal/a/b;
    //   31: invokeinterface 328 1 0
    //   36: aload_3
    //   37: astore_2
    //   38: aload_3
    //   39: astore_1
    //   40: aload_0
    //   41: getfield 28	okhttp3/internal/a/p:a	Lokhttp3/internal/a/b;
    //   44: aload_0
    //   45: invokeinterface 331 2 0
    //   50: ifne -14 -> 36
    //   53: aload_3
    //   54: astore_2
    //   55: aload_3
    //   56: astore_1
    //   57: getstatic 333	okhttp3/internal/a/a:a	Lokhttp3/internal/a/a;
    //   60: astore_3
    //   61: aload_3
    //   62: astore_2
    //   63: aload_3
    //   64: astore_1
    //   65: getstatic 336	okhttp3/internal/a/a:l	Lokhttp3/internal/a/a;
    //   68: astore 5
    //   70: aload_0
    //   71: getfield 14	okhttp3/internal/a/p:c	Lokhttp3/internal/a/e;
    //   74: aload_3
    //   75: aload 5
    //   77: invokestatic 339	okhttp3/internal/a/e:a	(Lokhttp3/internal/a/e;Lokhttp3/internal/a/a;Lokhttp3/internal/a/a;)V
    //   80: aload_0
    //   81: getfield 28	okhttp3/internal/a/p:a	Lokhttp3/internal/a/b;
    //   84: invokestatic 344	okhttp3/internal/o:a	(Ljava/io/Closeable;)V
    //   87: return
    //   88: astore_1
    //   89: aload_2
    //   90: astore_1
    //   91: getstatic 299	okhttp3/internal/a/a:b	Lokhttp3/internal/a/a;
    //   94: astore_3
    //   95: getstatic 299	okhttp3/internal/a/a:b	Lokhttp3/internal/a/a;
    //   98: astore_1
    //   99: aload_0
    //   100: getfield 14	okhttp3/internal/a/p:c	Lokhttp3/internal/a/e;
    //   103: aload_3
    //   104: aload_1
    //   105: invokestatic 339	okhttp3/internal/a/e:a	(Lokhttp3/internal/a/e;Lokhttp3/internal/a/a;Lokhttp3/internal/a/a;)V
    //   108: aload_0
    //   109: getfield 28	okhttp3/internal/a/p:a	Lokhttp3/internal/a/b;
    //   112: invokestatic 344	okhttp3/internal/o:a	(Ljava/io/Closeable;)V
    //   115: return
    //   116: astore_2
    //   117: aload_1
    //   118: astore_3
    //   119: aload_2
    //   120: astore_1
    //   121: aload_0
    //   122: getfield 14	okhttp3/internal/a/p:c	Lokhttp3/internal/a/e;
    //   125: aload_3
    //   126: aload 4
    //   128: invokestatic 339	okhttp3/internal/a/e:a	(Lokhttp3/internal/a/e;Lokhttp3/internal/a/a;Lokhttp3/internal/a/a;)V
    //   131: aload_0
    //   132: getfield 28	okhttp3/internal/a/p:a	Lokhttp3/internal/a/b;
    //   135: invokestatic 344	okhttp3/internal/o:a	(Ljava/io/Closeable;)V
    //   138: aload_1
    //   139: athrow
    //   140: astore_2
    //   141: goto -10 -> 131
    //   144: astore_1
    //   145: goto -24 -> 121
    //   148: astore_1
    //   149: goto -41 -> 108
    //   152: astore_1
    //   153: goto -73 -> 80
    //
    // Exception table:
    //   from	to	target	type
    //   13	23	88	java/io/IOException
    //   27	36	88	java/io/IOException
    //   40	53	88	java/io/IOException
    //   57	61	88	java/io/IOException
    //   65	70	88	java/io/IOException
    //   13	23	116	finally
    //   27	36	116	finally
    //   40	53	116	finally
    //   57	61	116	finally
    //   65	70	116	finally
    //   91	95	116	finally
    //   121	131	140	java/io/IOException
    //   95	99	144	finally
    //   99	108	148	java/io/IOException
    //   70	80	152	java/io/IOException
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     okhttp3.internal.a.p
 * JD-Core Version:    0.6.2
 */