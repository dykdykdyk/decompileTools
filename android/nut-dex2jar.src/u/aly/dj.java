package u.aly;

import java.io.UnsupportedEncodingException;
import java.nio.ByteBuffer;

public final class dj extends dq
{
  private static final du f = new du();
  protected boolean a = false;
  protected boolean b = true;
  protected int c;
  protected boolean d = false;
  private byte[] g = new byte[1];
  private byte[] h = new byte[2];
  private byte[] i = new byte[4];
  private byte[] j = new byte[8];
  private byte[] k = new byte[1];
  private byte[] l = new byte[2];
  private byte[] m = new byte[4];
  private byte[] n = new byte[8];

  public dj(ed paramed, boolean paramBoolean1, boolean paramBoolean2)
  {
    super(paramed);
    this.a = paramBoolean1;
    this.b = paramBoolean2;
  }

  private int a(byte[] paramArrayOfByte, int paramInt)
    throws bv
  {
    d(paramInt);
    return this.e.a(paramArrayOfByte, paramInt);
  }

  private void a(byte paramByte)
    throws bv
  {
    this.g[0] = paramByte;
    this.e.b(this.g, 0, 1);
  }

  private String c(int paramInt)
    throws bv
  {
    try
    {
      d(paramInt);
      Object localObject = new byte[paramInt];
      this.e.a((byte[])localObject, paramInt);
      localObject = new String((byte[])localObject, "UTF-8");
      return localObject;
    }
    catch (UnsupportedEncodingException localUnsupportedEncodingException)
    {
    }
    throw new bv("JVM DOES NOT SUPPORT UTF-8");
  }

  private void d(int paramInt)
    throws bv
  {
    if (paramInt < 0)
      throw new cp("Negative length: " + paramInt);
    if (this.d)
    {
      this.c -= paramInt;
      if (this.c < 0)
        throw new cp("Message length exceeded: " + paramInt);
    }
  }

  public final void a()
  {
  }

  public final void a(int paramInt)
    throws bv
  {
    this.i[0] = ((byte)(paramInt >> 24 & 0xFF));
    this.i[1] = ((byte)(paramInt >> 16 & 0xFF));
    this.i[2] = ((byte)(paramInt >> 8 & 0xFF));
    this.i[3] = ((byte)(paramInt & 0xFF));
    this.e.b(this.i, 0, 4);
  }

  public final void a(long paramLong)
    throws bv
  {
    this.j[0] = ((byte)(int)(paramLong >> 56 & 0xFF));
    this.j[1] = ((byte)(int)(paramLong >> 48 & 0xFF));
    this.j[2] = ((byte)(int)(paramLong >> 40 & 0xFF));
    this.j[3] = ((byte)(int)(paramLong >> 32 & 0xFF));
    this.j[4] = ((byte)(int)(paramLong >> 24 & 0xFF));
    this.j[5] = ((byte)(int)(paramLong >> 16 & 0xFF));
    this.j[6] = ((byte)(int)(paramLong >> 8 & 0xFF));
    this.j[7] = ((byte)(int)(0xFF & paramLong));
    this.e.b(this.j, 0, 8);
  }

  public final void a(String paramString)
    throws bv
  {
    try
    {
      paramString = paramString.getBytes("UTF-8");
      a(paramString.length);
      this.e.b(paramString, 0, paramString.length);
      return;
    }
    catch (UnsupportedEncodingException paramString)
    {
    }
    throw new bv("JVM DOES NOT SUPPORT UTF-8");
  }

  public final void a(ByteBuffer paramByteBuffer)
    throws bv
  {
    int i1 = paramByteBuffer.limit() - paramByteBuffer.position();
    a(i1);
    this.e.b(paramByteBuffer.array(), paramByteBuffer.position() + paramByteBuffer.arrayOffset(), i1);
  }

  public final void a(dn paramdn)
    throws bv
  {
    a(paramdn.b);
    int i1 = paramdn.c;
    this.h[0] = ((byte)(i1 >> 8 & 0xFF));
    this.h[1] = ((byte)(i1 & 0xFF));
    this.e.b(this.h, 0, 2);
  }

  public final void a(do paramdo)
    throws bv
  {
    a(paramdo.a);
    a(paramdo.b);
  }

  public final void a(dp paramdp)
    throws bv
  {
    a(paramdp.a);
    a(paramdp.b);
    a(paramdp.c);
  }

  public final void b()
  {
  }

  public final void b(int paramInt)
  {
    this.c = paramInt;
    this.d = true;
  }

  public final void c()
    throws bv
  {
    a((byte)0);
  }

  public final du d()
  {
    return f;
  }

  public final void e()
  {
  }

  public final dn f()
    throws bv
  {
    byte b1 = k();
    if (b1 == 0);
    for (short s = 0; ; s = l())
      return new dn("", b1, s);
  }

  public final dp g()
    throws bv
  {
    return new dp(k(), k(), m());
  }

  public final do h()
    throws bv
  {
    return new do(k(), m());
  }

  public final dt i()
    throws bv
  {
    return new dt(k(), m());
  }

  public final boolean j()
    throws bv
  {
    return k() == 1;
  }

  public final byte k()
    throws bv
  {
    if (this.e.c() > 0)
    {
      byte b1 = this.e.a()[this.e.b()];
      this.e.a(1);
      return b1;
    }
    a(this.k, 1);
    return this.k[0];
  }

  public final short l()
    throws bv
  {
    byte[] arrayOfByte = this.l;
    int i1 = 0;
    if (this.e.c() >= 2)
    {
      arrayOfByte = this.e.a();
      i1 = this.e.b();
      this.e.a(2);
    }
    while (true)
    {
      int i2 = arrayOfByte[i1];
      return (short)(arrayOfByte[(i1 + 1)] & 0xFF | (i2 & 0xFF) << 8);
      a(this.l, 2);
    }
  }

  public final int m()
    throws bv
  {
    byte[] arrayOfByte = this.m;
    int i1 = 0;
    if (this.e.c() >= 4)
    {
      arrayOfByte = this.e.a();
      i1 = this.e.b();
      this.e.a(4);
    }
    while (true)
    {
      int i2 = arrayOfByte[i1];
      int i3 = arrayOfByte[(i1 + 1)];
      int i4 = arrayOfByte[(i1 + 2)];
      return arrayOfByte[(i1 + 3)] & 0xFF | ((i2 & 0xFF) << 24 | (i3 & 0xFF) << 16 | (i4 & 0xFF) << 8);
      a(this.m, 4);
    }
  }

  public final long n()
    throws bv
  {
    byte[] arrayOfByte = this.n;
    int i1 = 0;
    if (this.e.c() >= 8)
    {
      arrayOfByte = this.e.a();
      i1 = this.e.b();
      this.e.a(8);
    }
    while (true)
    {
      long l1 = arrayOfByte[i1] & 0xFF;
      long l2 = arrayOfByte[(i1 + 1)] & 0xFF;
      long l3 = arrayOfByte[(i1 + 2)] & 0xFF;
      long l4 = arrayOfByte[(i1 + 3)] & 0xFF;
      long l5 = arrayOfByte[(i1 + 4)] & 0xFF;
      long l6 = arrayOfByte[(i1 + 5)] & 0xFF;
      long l7 = arrayOfByte[(i1 + 6)] & 0xFF;
      return arrayOfByte[(i1 + 7)] & 0xFF | (l1 << 56 | l2 << 48 | l3 << 40 | l4 << 32 | l5 << 24 | l6 << 16 | l7 << 8);
      a(this.n, 8);
    }
  }

  public final double o()
    throws bv
  {
    return Double.longBitsToDouble(n());
  }

  public final String p()
    throws bv
  {
    int i1 = m();
    if (this.e.c() >= i1)
      try
      {
        String str = new String(this.e.a(), this.e.b(), i1, "UTF-8");
        this.e.a(i1);
        return str;
      }
      catch (UnsupportedEncodingException localUnsupportedEncodingException)
      {
        throw new bv("JVM DOES NOT SUPPORT UTF-8");
      }
    return c(i1);
  }

  public final ByteBuffer q()
    throws bv
  {
    int i1 = m();
    d(i1);
    if (this.e.c() >= i1)
    {
      localObject = ByteBuffer.wrap(this.e.a(), this.e.b(), i1);
      this.e.a(i1);
      return localObject;
    }
    Object localObject = new byte[i1];
    this.e.a((byte[])localObject, i1);
    return ByteBuffer.wrap((byte[])localObject);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     u.aly.dj
 * JD-Core Version:    0.6.2
 */