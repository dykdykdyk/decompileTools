package a;

import java.io.EOFException;
import java.io.IOException;
import java.util.zip.DataFormatException;
import java.util.zip.Inflater;

public final class p
  implements aa
{
  private final j a;
  private final Inflater b;
  private int c;
  private boolean d;

  public p(aa paramaa, Inflater paramInflater)
  {
    this(q.a(paramaa), paramInflater);
  }

  p(j paramj, Inflater paramInflater)
  {
    if (paramj == null)
      throw new IllegalArgumentException("source == null");
    if (paramInflater == null)
      throw new IllegalArgumentException("inflater == null");
    this.a = paramj;
    this.b = paramInflater;
  }

  private void b()
    throws IOException
  {
    if (this.c == 0)
      return;
    int i = this.c - this.b.getRemaining();
    this.c -= i;
    this.a.f(i);
  }

  public final boolean a()
    throws IOException
  {
    if (!this.b.needsInput())
      return false;
    b();
    if (this.b.getRemaining() != 0)
      throw new IllegalStateException("?");
    if (this.a.c())
      return true;
    x localx = this.a.a().a;
    this.c = (localx.c - localx.b);
    this.b.setInput(localx.a, localx.b, this.c);
    return false;
  }

  public final void close()
    throws IOException
  {
    if (this.d)
      return;
    this.b.end();
    this.d = true;
    this.a.close();
  }

  public final long read(f paramf, long paramLong)
    throws IOException
  {
    if (paramLong < 0L)
      throw new IllegalArgumentException("byteCount < 0: " + paramLong);
    if (this.d)
      throw new IllegalStateException("closed");
    if (paramLong == 0L)
      return 0L;
    while (true)
    {
      boolean bool = a();
      try
      {
        x localx = paramf.e(1);
        int i = this.b.inflate(localx.a, localx.c, 2048 - localx.c);
        if (i > 0)
        {
          localx.c += i;
          paramf.b += i;
          return i;
        }
        if ((this.b.finished()) || (this.b.needsDictionary()))
        {
          b();
          if (localx.b == localx.c)
          {
            paramf.a = localx.a();
            y.a(localx);
          }
        }
        else
        {
          if (!bool)
            continue;
          throw new EOFException("source exhausted prematurely");
        }
      }
      catch (DataFormatException paramf)
      {
        throw new IOException(paramf);
      }
    }
    return -1L;
  }

  public final ab timeout()
  {
    return this.a.timeout();
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     a.p
 * JD-Core Version:    0.6.2
 */