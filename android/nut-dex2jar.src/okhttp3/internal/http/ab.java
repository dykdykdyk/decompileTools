package okhttp3.internal.http;

import java.io.IOException;
import java.lang.ref.Reference;
import java.lang.ref.WeakReference;
import java.net.Proxy;
import java.net.Proxy.Type;
import java.net.ProxySelector;
import java.util.List;
import okhttp3.a;
import okhttp3.ad;
import okhttp3.bd;
import okhttp3.internal.b.c;
import okhttp3.internal.f;
import okhttp3.internal.n;

public final class ab
{
  public final a a;
  public final okhttp3.o b;
  z c;
  public c d;
  public boolean e;
  public u f;
  private bd g;
  private boolean h;

  public ab(okhttp3.o paramo, a parama)
  {
    this.b = paramo;
    this.a = parama;
    this.c = new z(parama, c());
  }

  private c a(int paramInt1, int paramInt2, int paramInt3, boolean paramBoolean)
    throws IOException, RouteException
  {
    synchronized (this.b)
    {
      if (this.h)
        throw new IllegalStateException("released");
    }
    if (this.f != null)
      throw new IllegalStateException("stream != null");
    if (this.e)
      throw new IOException("Canceled");
    ??? = this.d;
    if ((??? != null) && (!((c)???).l))
      return ???;
    ??? = f.b.a(this.b, this.a, this);
    if (??? != null)
    {
      this.d = ((c)???);
      return ???;
    }
    ??? = this.g;
    if (??? == null)
      ??? = this.c.a();
    while (true)
    {
      synchronized (this.b)
      {
        this.g = ((bd)???);
        ??? = new c((bd)???);
        a((c)???);
        synchronized (this.b)
        {
          f.b.b(this.b, (c)???);
          this.d = ((c)???);
          if (this.e)
            throw new IOException("Canceled");
        }
      }
      localc.a(paramInt1, paramInt2, paramInt3, this.a.f, paramBoolean);
      c().b(localc.b);
      return localc;
    }
  }

  private c b(int paramInt1, int paramInt2, int paramInt3, boolean paramBoolean1, boolean paramBoolean2)
    throws IOException, RouteException
  {
    while (true)
    {
      c localc1 = a(paramInt1, paramInt2, paramInt3, paramBoolean1);
      synchronized (this.b)
      {
        if (localc1.g == 0)
          return localc1;
        if (!localc1.a(paramBoolean2))
          a(new IOException());
      }
    }
    return localc2;
  }

  private n c()
  {
    return f.b.a(this.b);
  }

  public final c a()
  {
    try
    {
      c localc = this.d;
      return localc;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  // ERROR //
  public final u a(int paramInt1, int paramInt2, int paramInt3, boolean paramBoolean1, boolean paramBoolean2)
    throws RouteException, IOException
  {
    // Byte code:
    //   0: aload_0
    //   1: iload_1
    //   2: iload_2
    //   3: iload_3
    //   4: iload 4
    //   6: iload 5
    //   8: invokespecial 126	okhttp3/internal/http/ab:b	(IIIZZ)Lokhttp3/internal/b/c;
    //   11: astore 6
    //   13: aload 6
    //   15: getfield 129	okhttp3/internal/b/c:f	Lokhttp3/internal/a/e;
    //   18: ifnull +39 -> 57
    //   21: new 131	okhttp3/internal/http/l
    //   24: dup
    //   25: aload_0
    //   26: aload 6
    //   28: getfield 129	okhttp3/internal/b/c:f	Lokhttp3/internal/a/e;
    //   31: invokespecial 134	okhttp3/internal/http/l:<init>	(Lokhttp3/internal/http/ab;Lokhttp3/internal/a/e;)V
    //   34: astore 6
    //   36: aload_0
    //   37: getfield 26	okhttp3/internal/http/ab:b	Lokhttp3/o;
    //   40: astore 7
    //   42: aload 7
    //   44: monitorenter
    //   45: aload_0
    //   46: aload 6
    //   48: putfield 55	okhttp3/internal/http/ab:f	Lokhttp3/internal/http/u;
    //   51: aload 7
    //   53: monitorexit
    //   54: aload 6
    //   56: areturn
    //   57: aload 6
    //   59: getfield 137	okhttp3/internal/b/c:d	Ljava/net/Socket;
    //   62: iload_2
    //   63: invokevirtual 143	java/net/Socket:setSoTimeout	(I)V
    //   66: aload 6
    //   68: getfield 146	okhttp3/internal/b/c:h	La/j;
    //   71: invokeinterface 152 1 0
    //   76: iload_2
    //   77: i2l
    //   78: getstatic 158	java/util/concurrent/TimeUnit:MILLISECONDS	Ljava/util/concurrent/TimeUnit;
    //   81: invokevirtual 163	a/ab:a	(JLjava/util/concurrent/TimeUnit;)La/ab;
    //   84: pop
    //   85: aload 6
    //   87: getfield 167	okhttp3/internal/b/c:i	La/i;
    //   90: invokeinterface 170 1 0
    //   95: iload_3
    //   96: i2l
    //   97: getstatic 158	java/util/concurrent/TimeUnit:MILLISECONDS	Ljava/util/concurrent/TimeUnit;
    //   100: invokevirtual 163	a/ab:a	(JLjava/util/concurrent/TimeUnit;)La/ab;
    //   103: pop
    //   104: new 172	okhttp3/internal/http/e
    //   107: dup
    //   108: aload_0
    //   109: aload 6
    //   111: getfield 146	okhttp3/internal/b/c:h	La/j;
    //   114: aload 6
    //   116: getfield 167	okhttp3/internal/b/c:i	La/i;
    //   119: invokespecial 175	okhttp3/internal/http/e:<init>	(Lokhttp3/internal/http/ab;La/j;La/i;)V
    //   122: astore 6
    //   124: goto -88 -> 36
    //   127: astore 6
    //   129: new 44	okhttp3/internal/http/RouteException
    //   132: dup
    //   133: aload 6
    //   135: invokespecial 177	okhttp3/internal/http/RouteException:<init>	(Ljava/io/IOException;)V
    //   138: athrow
    //   139: astore 6
    //   141: aload 7
    //   143: monitorexit
    //   144: aload 6
    //   146: athrow
    //
    // Exception table:
    //   from	to	target	type
    //   0	36	127	java/io/IOException
    //   36	45	127	java/io/IOException
    //   57	124	127	java/io/IOException
    //   144	147	127	java/io/IOException
    //   45	54	139	finally
    //   141	144	139	finally
  }

  public final void a(IOException paramIOException)
  {
    synchronized (this.b)
    {
      if ((this.d != null) && (this.d.g == 0))
      {
        if ((this.g != null) && (paramIOException != null))
        {
          z localz = this.c;
          bd localbd = this.g;
          if ((localbd.b.type() != Proxy.Type.DIRECT) && (localz.a.g != null))
            localz.a.g.connectFailed(localz.a.a.a(), localbd.b.address(), paramIOException);
          localz.b.a(localbd);
        }
        this.g = null;
      }
      a(true, false, true);
      return;
    }
  }

  public final void a(c paramc)
  {
    paramc.k.add(new WeakReference(this));
  }

  // ERROR //
  public final void a(boolean paramBoolean, u paramu)
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 26	okhttp3/internal/http/ab:b	Lokhttp3/o;
    //   4: astore_3
    //   5: aload_3
    //   6: monitorenter
    //   7: aload_2
    //   8: ifnull +11 -> 19
    //   11: aload_2
    //   12: aload_0
    //   13: getfield 55	okhttp3/internal/http/ab:f	Lokhttp3/internal/http/u;
    //   16: if_acmpeq +44 -> 60
    //   19: new 48	java/lang/IllegalStateException
    //   22: dup
    //   23: new 241	java/lang/StringBuilder
    //   26: dup
    //   27: ldc 243
    //   29: invokespecial 244	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   32: aload_0
    //   33: getfield 55	okhttp3/internal/http/ab:f	Lokhttp3/internal/http/u;
    //   36: invokevirtual 248	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   39: ldc 250
    //   41: invokevirtual 253	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   44: aload_2
    //   45: invokevirtual 248	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   48: invokevirtual 257	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   51: invokespecial 53	java/lang/IllegalStateException:<init>	(Ljava/lang/String;)V
    //   54: athrow
    //   55: astore_2
    //   56: aload_3
    //   57: monitorexit
    //   58: aload_2
    //   59: athrow
    //   60: iload_1
    //   61: ifne +18 -> 79
    //   64: aload_0
    //   65: getfield 64	okhttp3/internal/http/ab:d	Lokhttp3/internal/b/c;
    //   68: astore_2
    //   69: aload_2
    //   70: aload_2
    //   71: getfield 112	okhttp3/internal/b/c:g	I
    //   74: iconst_1
    //   75: iadd
    //   76: putfield 112	okhttp3/internal/b/c:g	I
    //   79: aload_3
    //   80: monitorexit
    //   81: aload_0
    //   82: iload_1
    //   83: iconst_0
    //   84: iconst_1
    //   85: invokevirtual 224	okhttp3/internal/http/ab:a	(ZZZ)V
    //   88: return
    //
    // Exception table:
    //   from	to	target	type
    //   11	19	55	finally
    //   19	55	55	finally
    //   56	58	55	finally
    //   64	79	55	finally
    //   79	81	55	finally
  }

  public final void a(boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3)
  {
    okhttp3.o localo = this.b;
    if (paramBoolean3);
    while (true)
    {
      try
      {
        this.f = null;
        if (paramBoolean2)
          this.h = true;
        if (this.d == null)
          break label234;
        if (paramBoolean1)
          this.d.l = true;
        if ((this.f != null) || ((!this.h) && (!this.d.l)))
          break label234;
        c localc = this.d;
        int j = localc.k.size();
        int i = 0;
        if (i < j)
        {
          if (((Reference)localc.k.get(i)).get() == this)
          {
            localc.k.remove(i);
            if (!this.d.k.isEmpty())
              break label228;
            this.d.m = System.nanoTime();
            if (!f.b.a(this.b, this.d))
              break label228;
            localc = this.d;
            this.d = null;
            if (localc != null)
              okhttp3.internal.o.a(localc.d);
            return;
          }
          i += 1;
          continue;
        }
        throw new IllegalStateException();
      }
      finally
      {
      }
      label228: Object localObject2 = null;
      continue;
      label234: localObject2 = null;
    }
  }

  public final void b()
  {
    a(false, true, false);
  }

  public final String toString()
  {
    return this.a.toString();
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     okhttp3.internal.http.ab
 * JD-Core Version:    0.6.2
 */