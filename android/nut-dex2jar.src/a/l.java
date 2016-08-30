package a;

import java.io.IOException;
import java.util.zip.Deflater;
import org.codehaus.mojo.animal_sniffer.IgnoreJRERequirement;

public final class l
  implements z
{
  private final i a;
  private final Deflater b;
  private boolean c;

  private l(i parami, Deflater paramDeflater)
  {
    if (parami == null)
      throw new IllegalArgumentException("source == null");
    if (paramDeflater == null)
      throw new IllegalArgumentException("inflater == null");
    this.a = parami;
    this.b = paramDeflater;
  }

  public l(z paramz, Deflater paramDeflater)
  {
    this(q.a(paramz), paramDeflater);
  }

  @IgnoreJRERequirement
  private void a(boolean paramBoolean)
    throws IOException
  {
    f localf = this.a.a();
    x localx;
    label119: 
    do
    {
      localx = localf.e(1);
      if (paramBoolean);
      for (int i = this.b.deflate(localx.a, localx.c, 2048 - localx.c, 2); ; i = this.b.deflate(localx.a, localx.c, 2048 - localx.c))
      {
        if (i <= 0)
          break label119;
        localx.c += i;
        localf.b += i;
        this.a.q();
        break;
      }
    }
    while (!this.b.needsInput());
    if (localx.b == localx.c)
    {
      localf.a = localx.a();
      y.a(localx);
    }
  }

  public final void a(f paramf, long paramLong)
    throws IOException
  {
    ad.a(paramf.b, 0L, paramLong);
    while (paramLong > 0L)
    {
      x localx = paramf.a;
      int i = (int)Math.min(paramLong, localx.c - localx.b);
      this.b.setInput(localx.a, localx.b, i);
      a(false);
      paramf.b -= i;
      localx.b += i;
      if (localx.b == localx.c)
      {
        paramf.a = localx.a();
        y.a(localx);
      }
      paramLong -= i;
    }
  }

  public final void close()
    throws IOException
  {
    if (this.c);
    while (true)
    {
      return;
      Object localObject2 = null;
      try
      {
        this.b.finish();
        a(false);
      }
      catch (Throwable localThrowable1)
      {
        try
        {
          this.b.end();
          localObject1 = localObject2;
        }
        catch (Throwable localThrowable1)
        {
          try
          {
            while (true)
            {
              Object localObject1;
              this.a.close();
              localObject2 = localObject1;
              this.c = true;
              if (localObject2 == null)
                break;
              ad.a(localObject2);
              return;
              localThrowable3 = localThrowable3;
              continue;
              localThrowable1 = localThrowable1;
              if (localThrowable3 != null)
                localThrowable2 = localThrowable3;
            }
          }
          catch (Throwable localThrowable4)
          {
            while (true)
            {
              Throwable localThrowable2;
              Object localObject3 = localThrowable2;
              if (localThrowable2 == null)
                localObject3 = localThrowable4;
            }
          }
        }
      }
    }
  }

  public final void flush()
    throws IOException
  {
    a(true);
    this.a.flush();
  }

  public final ab timeout()
  {
    return this.a.timeout();
  }

  public final String toString()
  {
    return "DeflaterSink(" + this.a + ")";
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     a.l
 * JD-Core Version:    0.6.2
 */