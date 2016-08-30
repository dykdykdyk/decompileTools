package okhttp3.internal.a;

import a.j;
import a.k;
import java.io.IOException;
import java.net.ProtocolException;
import java.util.List;

final class ar
  implements b
{
  private final j a;
  private final boolean b;
  private final aj c;

  ar(j paramj, boolean paramBoolean)
  {
    this.a = paramj;
    this.c = new aj(this.a);
    this.b = paramBoolean;
  }

  private static IOException a(String paramString, Object[] paramArrayOfObject)
    throws IOException
  {
    throw new IOException(String.format(paramString, paramArrayOfObject));
  }

  private void a(c paramc, int paramInt1, int paramInt2)
    throws IOException
  {
    boolean bool = true;
    int i = this.a.h();
    if (paramInt2 != i * 8 + 4)
      throw a("TYPE_SETTINGS length: %d != 4 + 8 * %d", new Object[] { Integer.valueOf(paramInt2), Integer.valueOf(i) });
    ap localap = new ap();
    paramInt2 = 0;
    while (paramInt2 < i)
    {
      int j = this.a.h();
      localap.a(j & 0xFFFFFF, (0xFF000000 & j) >>> 24, this.a.h());
      paramInt2 += 1;
    }
    if ((paramInt1 & 0x1) != 0);
    while (true)
    {
      paramc.a(bool, localap);
      return;
      bool = false;
    }
  }

  public final void a()
  {
  }

  public final boolean a(c paramc)
    throws IOException
  {
    boolean bool1 = false;
    boolean bool2 = false;
    int j;
    int m;
    int k;
    while (true)
    {
      try
      {
        j = this.a.h();
        m = this.a.h();
        if ((0x80000000 & j) != 0)
        {
          i = 1;
          k = (0xFF000000 & m) >>> 24;
          m = 0xFFFFFF & m;
          if (i == 0)
            break label711;
          i = (0x7FFF0000 & j) >>> 16;
          if (i == 3)
            break;
          throw new ProtocolException("version != 3: " + i);
        }
      }
      catch (IOException paramc)
      {
        return false;
      }
      i = 0;
    }
    Object localObject;
    switch (j & 0xFFFF)
    {
    case 5:
    default:
      this.a.f(m);
      return true;
    case 1:
      i = this.a.h();
      this.a.h();
      this.a.g();
      localObject = this.c.a(m - 10);
      if ((k & 0x1) != 0);
      for (bool1 = true; ; bool1 = false)
      {
        if ((k & 0x2) != 0)
          bool2 = true;
        paramc.a(bool2, bool1, i & 0x7FFFFFFF, (List)localObject, y.a);
        return true;
      }
    case 2:
      i = this.a.h();
      localObject = this.c.a(m - 4);
      if ((k & 0x1) != 0);
      for (bool1 = true; ; bool1 = false)
      {
        paramc.a(false, bool1, i & 0x7FFFFFFF, (List)localObject, y.b);
        return true;
      }
    case 3:
      if (m != 8)
        throw a("TYPE_RST_STREAM length: %d != 8", new Object[] { Integer.valueOf(m) });
      i = this.a.h();
      j = this.a.h();
      localObject = a.a(j);
      if (localObject == null)
        throw a("TYPE_RST_STREAM unexpected error code: %d", new Object[] { Integer.valueOf(j) });
      paramc.a(i & 0x7FFFFFFF, (a)localObject);
      return true;
    case 4:
      a(paramc, k, m);
      return true;
    case 6:
      if (m != 4)
        throw a("TYPE_PING length: %d != 4", new Object[] { Integer.valueOf(m) });
      i = this.a.h();
      bool2 = this.b;
      if ((i & 0x1) == 1)
      {
        bool1 = true;
        if (bool2 != bool1)
          break label496;
      }
      for (bool1 = true; ; bool1 = false)
      {
        paramc.a(bool1, i, 0);
        return true;
        bool1 = false;
        break;
      }
    case 7:
      if (m != 8)
        throw a("TYPE_GOAWAY length: %d != 8", new Object[] { Integer.valueOf(m) });
      i = this.a.h();
      j = this.a.h();
      if (a.c(j) == null)
        throw a("TYPE_GOAWAY unexpected error code: %d", new Object[] { Integer.valueOf(j) });
      paramc.a(i & 0x7FFFFFFF, k.b);
      return true;
    case 8:
      label496: paramc.a(false, false, this.a.h() & 0x7FFFFFFF, this.c.a(m - 4), y.c);
      return true;
    case 9:
    }
    if (m != 8)
      throw a("TYPE_WINDOW_UPDATE length: %d != 8", new Object[] { Integer.valueOf(m) });
    int i = this.a.h();
    long l = this.a.h() & 0x7FFFFFFF;
    if (l == 0L)
      throw a("windowSizeIncrement was 0", new Object[] { Long.valueOf(l) });
    paramc.a(i & 0x7FFFFFFF, l);
    return true;
    label711: if ((k & 0x1) != 0)
      bool1 = true;
    paramc.a(bool1, j & 0x7FFFFFFF, this.a, m);
    return true;
  }

  public final void close()
    throws IOException
  {
    this.c.b.close();
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     okhttp3.internal.a.ar
 * JD-Core Version:    0.6.2
 */