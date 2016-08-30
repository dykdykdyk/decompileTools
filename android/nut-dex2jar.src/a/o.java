package a;

import java.io.EOFException;
import java.io.IOException;
import java.util.zip.CRC32;
import java.util.zip.Inflater;

public final class o
  implements aa
{
  private int a = 0;
  private final j b;
  private final Inflater c;
  private final p d;
  private final CRC32 e = new CRC32();

  public o(aa paramaa)
  {
    if (paramaa == null)
      throw new IllegalArgumentException("source == null");
    this.c = new Inflater(true);
    this.b = q.a(paramaa);
    this.d = new p(this.b, this.c);
  }

  private void a(f paramf, long paramLong1, long paramLong2)
  {
    Object localObject;
    long l1;
    long l2;
    for (paramf = paramf.a; ; paramf = paramf.f)
    {
      localObject = paramf;
      l1 = paramLong1;
      l2 = paramLong2;
      if (paramLong1 < paramf.c - paramf.b)
        break;
      paramLong1 -= paramf.c - paramf.b;
    }
    while (l2 > 0L)
    {
      int i = (int)(((x)localObject).b + l1);
      int j = (int)Math.min(((x)localObject).c - i, l2);
      this.e.update(((x)localObject).a, i, j);
      l2 -= j;
      localObject = ((x)localObject).f;
      l1 = 0L;
    }
  }

  private static void a(String paramString, int paramInt1, int paramInt2)
    throws IOException
  {
    if (paramInt2 != paramInt1)
      throw new IOException(String.format("%s: actual 0x%08x != expected 0x%08x", new Object[] { paramString, Integer.valueOf(paramInt2), Integer.valueOf(paramInt1) }));
  }

  public final void close()
    throws IOException
  {
    this.d.close();
  }

  public final long read(f paramf, long paramLong)
    throws IOException
  {
    if (paramLong < 0L)
      throw new IllegalArgumentException("byteCount < 0: " + paramLong);
    if (paramLong == 0L)
      return 0L;
    long l;
    if (this.a == 0)
    {
      this.b.a(10L);
      int j = this.b.a().b(3L);
      if ((j >> 1 & 0x1) == 1);
      for (int i = 1; ; i = 0)
      {
        if (i != 0)
          a(this.b.a(), 0L, 10L);
        a("ID1ID2", 8075, this.b.g());
        this.b.f(8L);
        if ((j >> 2 & 0x1) == 1)
        {
          this.b.a(2L);
          if (i != 0)
            a(this.b.a(), 0L, 2L);
          int k = this.b.a().i();
          this.b.a(k);
          if (i != 0)
            a(this.b.a(), 0L, k);
          this.b.f(k);
        }
        if ((j >> 3 & 0x1) != 1)
          break label323;
        l = this.b.a((byte)0);
        if (l != -1L)
          break;
        throw new EOFException();
      }
      if (i != 0)
        a(this.b.a(), 0L, 1L + l);
      this.b.f(1L + l);
      label323: if ((j >> 4 & 0x1) == 1)
      {
        l = this.b.a((byte)0);
        if (l == -1L)
          throw new EOFException();
        if (i != 0)
          a(this.b.a(), 0L, 1L + l);
        this.b.f(1L + l);
      }
      if (i != 0)
      {
        a("FHCRC", this.b.i(), (short)(int)this.e.getValue());
        this.e.reset();
      }
      this.a = 1;
    }
    if (this.a == 1)
    {
      l = paramf.b;
      paramLong = this.d.read(paramf, paramLong);
      if (paramLong != -1L)
      {
        a(paramf, l, paramLong);
        return paramLong;
      }
      this.a = 2;
    }
    if (this.a == 2)
    {
      a("CRC", this.b.j(), (int)this.e.getValue());
      a("ISIZE", this.b.j(), this.c.getTotalOut());
      this.a = 3;
      if (!this.b.c())
        throw new IOException("gzip finished without exhausting source");
    }
    return -1L;
  }

  public final ab timeout()
  {
    return this.b.timeout();
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     a.o
 * JD-Core Version:    0.6.2
 */