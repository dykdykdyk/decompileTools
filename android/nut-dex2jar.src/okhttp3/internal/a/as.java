package okhttp3.internal.a;

import a.f;
import a.i;
import a.k;
import a.l;
import a.q;
import java.io.IOException;
import java.util.List;
import java.util.zip.Deflater;
import okhttp3.internal.o;

final class as
  implements d
{
  private final i a;
  private final f b;
  private final i c;
  private final boolean d;
  private boolean e;

  as(i parami, boolean paramBoolean)
  {
    this.a = parami;
    this.d = paramBoolean;
    parami = new Deflater();
    parami.setDictionary(aq.a);
    this.b = new f();
    this.c = q.a(new l(this.b, parami));
  }

  private void a(List<x> paramList)
    throws IOException
  {
    this.c.f(paramList.size());
    int j = paramList.size();
    int i = 0;
    while (i < j)
    {
      k localk = ((x)paramList.get(i)).h;
      this.c.f(localk.c.length);
      this.c.b(localk);
      localk = ((x)paramList.get(i)).i;
      this.c.f(localk.c.length);
      this.c.b(localk);
      i += 1;
    }
    this.c.flush();
  }

  public final void a()
  {
  }

  public final void a(int paramInt, long paramLong)
    throws IOException
  {
    try
    {
      if (this.e)
        throw new IOException("closed");
    }
    finally
    {
    }
    if ((paramLong == 0L) || (paramLong > 2147483647L))
      throw new IllegalArgumentException("windowSizeIncrement must be between 1 and 0x7fffffff: " + paramLong);
    this.a.f(-2147287031);
    this.a.f(8);
    this.a.f(paramInt);
    this.a.f((int)paramLong);
    this.a.flush();
  }

  public final void a(int paramInt, a parama)
    throws IOException
  {
    try
    {
      if (this.e)
        throw new IOException("closed");
    }
    finally
    {
    }
    if (parama.t == -1)
      throw new IllegalArgumentException();
    this.a.f(-2147287037);
    this.a.f(8);
    this.a.f(0x7FFFFFFF & paramInt);
    this.a.f(parama.t);
    this.a.flush();
  }

  public final void a(int paramInt, a parama, byte[] paramArrayOfByte)
    throws IOException
  {
    try
    {
      if (this.e)
        throw new IOException("closed");
    }
    finally
    {
    }
    if (parama.u == -1)
      throw new IllegalArgumentException("errorCode.spdyGoAwayCode == -1");
    this.a.f(-2147287033);
    this.a.f(8);
    this.a.f(paramInt);
    this.a.f(parama.u);
    this.a.flush();
  }

  public final void a(ap paramap)
  {
  }

  public final void a(boolean paramBoolean, int paramInt1, int paramInt2)
    throws IOException
  {
    boolean bool2 = true;
    try
    {
      if (this.e)
        throw new IOException("closed");
    }
    finally
    {
    }
    boolean bool3 = this.d;
    boolean bool1;
    if ((paramInt1 & 0x1) == 1)
      bool1 = true;
    while (true)
    {
      if (paramBoolean != bool1)
        throw new IllegalArgumentException("payload != reply");
      this.a.f(-2147287034);
      this.a.f(4);
      this.a.f(paramInt1);
      this.a.flush();
      return;
      while (true)
      {
        if (bool3 == bool1)
          break label130;
        bool1 = bool2;
        break;
        bool1 = false;
      }
      label130: bool1 = false;
    }
  }

  public final void a(boolean paramBoolean, int paramInt1, f paramf, int paramInt2)
    throws IOException
  {
    if (paramBoolean);
    for (int i = 1; ; i = 0)
      try
      {
        if (!this.e)
          break;
        throw new IOException("closed");
      }
      finally
      {
      }
    if (paramInt2 > 16777215L)
      throw new IllegalArgumentException("FRAME_TOO_LARGE max size is 16Mib: " + paramInt2);
    this.a.f(0x7FFFFFFF & paramInt1);
    this.a.f((i & 0xFF) << 24 | 0xFFFFFF & paramInt2);
    if (paramInt2 > 0)
      this.a.a(paramf, paramInt2);
  }

  public final void a(boolean paramBoolean, int paramInt, List<x> paramList)
    throws IOException
  {
    int i = 0;
    try
    {
      if (this.e)
        throw new IOException("closed");
    }
    finally
    {
    }
    a(paramList);
    int j = (int)(10L + this.b.b);
    if (paramBoolean)
      i = 1;
    this.a.f(-2147287039);
    this.a.f(((i | 0x0) & 0xFF) << 24 | j & 0xFFFFFF);
    this.a.f(0x7FFFFFFF & paramInt);
    this.a.f(0);
    this.a.g(0);
    this.a.a(this.b);
    this.a.flush();
  }

  public final void b()
    throws IOException
  {
    try
    {
      if (this.e)
        throw new IOException("closed");
    }
    finally
    {
    }
    this.a.flush();
  }

  public final void b(ap paramap)
    throws IOException
  {
    try
    {
      if (this.e)
        throw new IOException("closed");
    }
    finally
    {
    }
    int i = Integer.bitCount(paramap.a);
    this.a.f(-2147287036);
    this.a.f(i * 8 + 4 & 0xFFFFFF | 0x0);
    this.a.f(i);
    i = 0;
    while (true)
    {
      if (i <= 10)
      {
        if (paramap.a(i))
        {
          int j = paramap.b(i);
          this.a.f((j & 0xFF) << 24 | i & 0xFFFFFF);
          this.a.f(paramap.d[i]);
        }
      }
      else
      {
        this.a.flush();
        return;
      }
      i += 1;
    }
  }

  public final int c()
  {
    return 16383;
  }

  public final void close()
    throws IOException
  {
    try
    {
      this.e = true;
      o.a(this.a, this.c);
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     okhttp3.internal.a.as
 * JD-Core Version:    0.6.2
 */