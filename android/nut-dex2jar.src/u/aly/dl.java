package u.aly;

import java.io.UnsupportedEncodingException;
import java.nio.ByteBuffer;

public class dl extends dq
{
  private static final du d = new du("");
  private static final dn f = new dn("", (byte)0, (short)0);
  private static final byte[] g;
  byte[] a = new byte[5];
  byte[] b = new byte[10];
  byte[] c = new byte[1];
  private cv h = new cv();
  private short i = 0;
  private dn j = null;
  private Boolean k = null;
  private final long l;
  private byte[] m = new byte[1];

  static
  {
    byte[] arrayOfByte = new byte[16];
    g = arrayOfByte;
    arrayOfByte[0] = 0;
    g[2] = 1;
    g[3] = 3;
    g[6] = 4;
    g[8] = 5;
    g[10] = 6;
    g[4] = 7;
    g[11] = 8;
    g[15] = 9;
    g[14] = 10;
    g[13] = 11;
    g[12] = 12;
  }

  public dl(ed paramed, long paramLong)
  {
    super(paramed);
    this.l = paramLong;
  }

  private void a(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
    throws bv
  {
    b(paramInt2);
    this.e.b(paramArrayOfByte, paramInt1, paramInt2);
  }

  private void b(byte paramByte)
    throws bv
  {
    this.m[0] = paramByte;
    ed localed = this.e;
    byte[] arrayOfByte = this.m;
    localed.b(arrayOfByte, 0, arrayOfByte.length);
  }

  private void b(int paramInt)
    throws bv
  {
    int i1 = 0;
    int n = paramInt;
    paramInt = i1;
    while (true)
    {
      if ((n & 0xFFFFFF80) == 0)
      {
        this.a[paramInt] = ((byte)n);
        this.e.b(this.a, 0, paramInt + 1);
        return;
      }
      this.a[paramInt] = ((byte)(n & 0x7F | 0x80));
      n >>>= 7;
      paramInt += 1;
    }
  }

  private static byte c(byte paramByte)
    throws cp
  {
    switch ((byte)(paramByte & 0xF))
    {
    default:
      throw new cp("don't know what type: " + (byte)(paramByte & 0xF));
    case 0:
      return 0;
    case 1:
    case 2:
      return 2;
    case 3:
      return 3;
    case 4:
      return 6;
    case 5:
      return 8;
    case 6:
      return 10;
    case 7:
      return 4;
    case 8:
      return 11;
    case 9:
      return 15;
    case 10:
      return 14;
    case 11:
      return 13;
    case 12:
    }
    return 12;
  }

  private static int c(int paramInt)
  {
    return paramInt << 1 ^ paramInt >> 31;
  }

  private void d(int paramInt)
    throws cp
  {
    if (paramInt < 0)
      throw new cp("Negative length: " + paramInt);
    if ((this.l != -1L) && (paramInt > this.l))
      throw new cp("Length exceeded max allowed: " + paramInt);
  }

  private static int e(int paramInt)
  {
    return paramInt >>> 1 ^ -(paramInt & 0x1);
  }

  private int t()
    throws bv
  {
    int i2 = 0;
    int n = 0;
    int i1;
    if (this.e.c() >= 5)
    {
      byte[] arrayOfByte = this.e.a();
      int i3 = this.e.b();
      i1 = 0;
      i2 = 0;
      while (true)
      {
        int i4 = arrayOfByte[(i3 + n)];
        i2 |= (i4 & 0x7F) << i1;
        if ((i4 & 0x80) != 128)
          break;
        i1 += 7;
        n += 1;
      }
      this.e.a(n + 1);
      return i2;
    }
    while (true)
    {
      i2 = k();
      i1 |= (i2 & 0x7F) << n;
      if ((i2 & 0x80) == 128)
      {
        n += 7;
      }
      else
      {
        return i1;
        i1 = 0;
        n = i2;
      }
    }
  }

  public final void a()
    throws bv
  {
    this.h.a(this.i);
    this.i = 0;
  }

  public final void a(byte paramByte)
    throws bv
  {
    b(paramByte);
  }

  public final void a(int paramInt)
    throws bv
  {
    b(c(paramInt));
  }

  public final void a(long paramLong)
    throws bv
  {
    paramLong = paramLong << 1 ^ paramLong >> 63;
    int n = 0;
    while (true)
    {
      if ((0xFFFFFF80 & paramLong) == 0L)
      {
        this.b[n] = ((byte)(int)paramLong);
        this.e.b(this.b, 0, n + 1);
        return;
      }
      this.b[n] = ((byte)(int)(0x7F & paramLong | 0x80));
      paramLong >>>= 7;
      n += 1;
    }
  }

  public final void a(String paramString)
    throws bv
  {
    try
    {
      paramString = paramString.getBytes("UTF-8");
      a(paramString, 0, paramString.length);
      return;
    }
    catch (UnsupportedEncodingException paramString)
    {
    }
    throw new bv("UTF-8 not supported!");
  }

  public final void a(ByteBuffer paramByteBuffer)
    throws bv
  {
    int n = paramByteBuffer.limit();
    int i1 = paramByteBuffer.position();
    a(paramByteBuffer.array(), paramByteBuffer.position() + paramByteBuffer.arrayOffset(), n - i1);
  }

  public final void a(dn paramdn)
    throws bv
  {
    if (paramdn.b == 2)
    {
      this.j = paramdn;
      return;
    }
    int i1 = paramdn.b;
    int n = g[i1];
    if ((paramdn.c > this.i) && (paramdn.c - this.i <= 15))
      b((byte)(n | paramdn.c - this.i << 4));
    while (true)
    {
      this.i = paramdn.c;
      return;
      b(n);
      b(c(paramdn.c));
    }
  }

  public final void a(do paramdo)
    throws bv
  {
    int n = paramdo.a;
    int i1 = paramdo.b;
    if (i1 <= 14)
    {
      b((byte)(g[n] | i1 << 4));
      return;
    }
    b((byte)(g[n] | 0xF0));
    b(i1);
  }

  public final void a(dp paramdp)
    throws bv
  {
    if (paramdp.c == 0)
    {
      b((byte)0);
      return;
    }
    b(paramdp.c);
    int n = paramdp.a;
    n = g[n];
    int i1 = paramdp.b;
    b((byte)(n << 4 | g[i1]));
  }

  public final void b()
    throws bv
  {
    this.i = this.h.a();
  }

  public final void c()
    throws bv
  {
    b((byte)0);
  }

  public final du d()
    throws bv
  {
    this.h.a(this.i);
    this.i = 0;
    return d;
  }

  public final void e()
    throws bv
  {
    this.i = this.h.a();
  }

  public final dn f()
    throws bv
  {
    int i1 = k();
    if (i1 == 0)
      return f;
    int n = (short)((i1 & 0xF0) >> 4);
    short s;
    dn localdn;
    if (n == 0)
    {
      s = l();
      localdn = new dn("", c((byte)(i1 & 0xF)), s);
      n = i1 & 0xF;
      if ((n != 1) && (n != 2))
        break label115;
      n = 1;
      label68: if (n != 0)
        if ((byte)(i1 & 0xF) != 1)
          break label120;
    }
    label115: label120: for (Boolean localBoolean = Boolean.TRUE; ; localBoolean = Boolean.FALSE)
    {
      this.k = localBoolean;
      this.i = localdn.c;
      return localdn;
      s = (short)(n + this.i);
      break;
      n = 0;
      break label68;
    }
  }

  public final dp g()
    throws bv
  {
    int i1 = t();
    if (i1 == 0);
    for (int n = 0; ; n = k())
      return new dp(c((byte)(n >> 4)), c((byte)(n & 0xF)), i1);
  }

  public final do h()
    throws bv
  {
    byte b1 = k();
    int i1 = b1 >> 4 & 0xF;
    int n = i1;
    if (i1 == 15)
      n = t();
    return new do(c(b1), n);
  }

  public final dt i()
    throws bv
  {
    return new dt(h());
  }

  public final boolean j()
    throws bv
  {
    boolean bool = true;
    if (this.k != null)
    {
      bool = this.k.booleanValue();
      this.k = null;
    }
    while (k() == 1)
      return bool;
    return false;
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
    this.e.a(this.c, 1);
    return this.c[0];
  }

  public final short l()
    throws bv
  {
    return (short)e(t());
  }

  public final int m()
    throws bv
  {
    return e(t());
  }

  public final long n()
    throws bv
  {
    int n = 0;
    int i2 = 0;
    long l1 = 0L;
    long l2 = l1;
    int i1;
    if (this.e.c() >= 10)
    {
      byte[] arrayOfByte = this.e.a();
      int i3 = this.e.b();
      i1 = 0;
      n = i2;
      while (true)
      {
        i2 = arrayOfByte[(i3 + n)];
        l1 |= (i2 & 0x7F) << i1;
        if ((i2 & 0x80) != 128)
          break;
        i1 += 7;
        n += 1;
      }
      this.e.a(n + 1);
      return l1 >>> 1 ^ -(l1 & 1L);
    }
    while (true)
    {
      i1 = k();
      l2 |= (i1 & 0x7F) << n;
      l1 = l2;
      if ((i1 & 0x80) != 128)
        break;
      n += 7;
    }
  }

  public final double o()
    throws bv
  {
    byte[] arrayOfByte = new byte[8];
    this.e.a(arrayOfByte, 8);
    long l1 = arrayOfByte[7];
    long l2 = arrayOfByte[6];
    long l3 = arrayOfByte[5];
    long l4 = arrayOfByte[4];
    long l5 = arrayOfByte[3];
    long l6 = arrayOfByte[2];
    long l7 = arrayOfByte[1];
    return Double.longBitsToDouble(arrayOfByte[0] & 0xFF | ((l1 & 0xFF) << 56 | (l2 & 0xFF) << 48 | (l3 & 0xFF) << 40 | (l4 & 0xFF) << 32 | (l5 & 0xFF) << 24 | (l6 & 0xFF) << 16 | (l7 & 0xFF) << 8));
  }

  public final String p()
    throws bv
  {
    int n = t();
    d(n);
    if (n == 0)
      return "";
    try
    {
      if (this.e.c() >= n)
      {
        String str = new String(this.e.a(), this.e.b(), n, "UTF-8");
        this.e.a(n);
        return str;
      }
    }
    catch (UnsupportedEncodingException localUnsupportedEncodingException)
    {
      throw new bv("UTF-8 not supported!");
    }
    byte[] arrayOfByte;
    if (n == 0)
      arrayOfByte = new byte[0];
    while (true)
    {
      return new String(arrayOfByte, "UTF-8");
      arrayOfByte = new byte[n];
      this.e.a(arrayOfByte, n);
    }
  }

  public final ByteBuffer q()
    throws bv
  {
    int n = t();
    d(n);
    if (n == 0)
      return ByteBuffer.wrap(new byte[0]);
    byte[] arrayOfByte = new byte[n];
    this.e.a(arrayOfByte, n);
    return ByteBuffer.wrap(arrayOfByte);
  }

  public final void r()
  {
    this.h.a = -1;
    this.i = 0;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     u.aly.dl
 * JD-Core Version:    0.6.2
 */