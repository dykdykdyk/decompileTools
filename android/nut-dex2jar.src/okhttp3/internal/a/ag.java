package okhttp3.internal.a;

import a.f;
import a.i;
import a.k;
import java.io.IOException;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

final class ag
  implements d
{
  private final i a;
  private final boolean b;
  private final f c;
  private final ab d;
  private int e;
  private boolean f;

  ag(i parami, boolean paramBoolean)
  {
    this.a = parami;
    this.b = paramBoolean;
    this.c = new f();
    this.d = new ab(this.c);
    this.e = 16384;
  }

  private void a(int paramInt1, int paramInt2, byte paramByte1, byte paramByte2)
    throws IOException
  {
    if (ac.b().isLoggable(Level.FINE))
      ac.b().fine(ae.a(false, paramInt1, paramInt2, paramByte1, paramByte2));
    if (paramInt2 > this.e)
      throw ac.b("FRAME_SIZE_ERROR length > %d: %d", new Object[] { Integer.valueOf(this.e), Integer.valueOf(paramInt2) });
    if ((0x80000000 & paramInt1) != 0)
      throw ac.b("reserved bit set: %s", new Object[] { Integer.valueOf(paramInt1) });
    ac.a(this.a, paramInt2);
    this.a.h(paramByte1 & 0xFF);
    this.a.h(paramByte2 & 0xFF);
    this.a.f(0x7FFFFFFF & paramInt1);
  }

  private void b(int paramInt, long paramLong)
    throws IOException
  {
    if (paramLong > 0L)
    {
      int i = (int)Math.min(this.e, paramLong);
      paramLong -= i;
      if (paramLong == 0L);
      for (byte b1 = 4; ; b1 = 0)
      {
        a(paramInt, i, (byte)9, b1);
        this.a.a(this.c, i);
        break;
      }
    }
  }

  public final void a()
    throws IOException
  {
    try
    {
      if (this.f)
        throw new IOException("closed");
    }
    finally
    {
    }
    boolean bool = this.b;
    if (!bool);
    while (true)
    {
      return;
      if (ac.b().isLoggable(Level.FINE))
        ac.b().fine(String.format(">> CONNECTION %s", new Object[] { ac.a().b() }));
      this.a.b(ac.a().d());
      this.a.flush();
    }
  }

  public final void a(int paramInt, long paramLong)
    throws IOException
  {
    try
    {
      if (this.f)
        throw new IOException("closed");
    }
    finally
    {
    }
    if ((paramLong == 0L) || (paramLong > 2147483647L))
      throw ac.b("windowSizeIncrement == 0 || windowSizeIncrement > 0x7fffffffL: %s", new Object[] { Long.valueOf(paramLong) });
    a(paramInt, 4, (byte)8, (byte)0);
    this.a.f((int)paramLong);
    this.a.flush();
  }

  public final void a(int paramInt, a parama)
    throws IOException
  {
    try
    {
      if (this.f)
        throw new IOException("closed");
    }
    finally
    {
    }
    if (parama.s == -1)
      throw new IllegalArgumentException();
    a(paramInt, 4, (byte)3, (byte)0);
    this.a.f(parama.s);
    this.a.flush();
  }

  public final void a(int paramInt, a parama, byte[] paramArrayOfByte)
    throws IOException
  {
    try
    {
      if (this.f)
        throw new IOException("closed");
    }
    finally
    {
    }
    if (parama.s == -1)
      throw ac.b("errorCode.httpCode == -1", new Object[0]);
    a(0, paramArrayOfByte.length + 8, (byte)7, (byte)0);
    this.a.f(paramInt);
    this.a.f(parama.s);
    if (paramArrayOfByte.length > 0)
      this.a.b(paramArrayOfByte);
    this.a.flush();
  }

  public final void a(ap paramap)
    throws IOException
  {
    try
    {
      if (this.f)
        throw new IOException("closed");
    }
    finally
    {
    }
    int i = this.e;
    if ((paramap.a & 0x20) != 0)
      i = paramap.d[5];
    this.e = i;
    a(0, 0, (byte)4, (byte)1);
    this.a.flush();
  }

  public final void a(boolean paramBoolean, int paramInt1, int paramInt2)
    throws IOException
  {
    byte b1 = 0;
    try
    {
      if (this.f)
        throw new IOException("closed");
    }
    finally
    {
    }
    if (paramBoolean)
      b1 = 1;
    a(0, 8, (byte)6, b1);
    this.a.f(paramInt1);
    this.a.f(paramInt2);
    this.a.flush();
  }

  public final void a(boolean paramBoolean, int paramInt1, f paramf, int paramInt2)
    throws IOException
  {
    byte b1 = 0;
    try
    {
      if (this.f)
        throw new IOException("closed");
    }
    finally
    {
    }
    if (paramBoolean)
      b1 = 1;
    a(paramInt1, paramInt2, (byte)0, b1);
    if (paramInt2 > 0)
      this.a.a(paramf, paramInt2);
  }

  public final void a(boolean paramBoolean, int paramInt, List<x> paramList)
    throws IOException
  {
    try
    {
      if (this.f)
        throw new IOException("closed");
    }
    finally
    {
    }
    if (this.f)
      throw new IOException("closed");
    this.d.a(paramList);
    long l = this.c.b;
    int i = (int)Math.min(this.e, l);
    byte b1;
    if (l == i)
      b1 = 4;
    while (true)
    {
      a(paramInt, i, (byte)1, b2);
      this.a.a(this.c, i);
      if (l > i)
        b(paramInt, l - i);
      return;
      b1 = 0;
      byte b2 = b1;
      if (paramBoolean)
        b2 = (byte)(b1 | 0x1);
    }
  }

  public final void b()
    throws IOException
  {
    try
    {
      if (this.f)
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
    int i = 0;
    try
    {
      if (this.f)
        throw new IOException("closed");
    }
    finally
    {
    }
    a(0, Integer.bitCount(paramap.a) * 6, (byte)4, (byte)0);
    int j;
    if (i < 10)
    {
      if (!paramap.a(i))
        break label111;
      if (i != 4)
        break label118;
      j = 3;
    }
    while (true)
    {
      label64: this.a.g(j);
      this.a.f(paramap.d[i]);
      break label111;
      this.a.flush();
      return;
      label111: label118: 
      do
      {
        j = i;
        break label64;
        i += 1;
        break;
      }
      while (i != 7);
      j = 4;
    }
  }

  public final int c()
  {
    return this.e;
  }

  public final void close()
    throws IOException
  {
    try
    {
      this.f = true;
      this.a.close();
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
 * Qualified Name:     okhttp3.internal.a.ag
 * JD-Core Version:    0.6.2
 */