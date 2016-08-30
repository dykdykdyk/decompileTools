package a;

import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.nio.charset.Charset;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

public final class f
  implements i, j, Cloneable
{
  private static final byte[] c = { 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 97, 98, 99, 100, 101, 102 };
  x a;
  public long b;

  private String a(long paramLong, Charset paramCharset)
    throws EOFException
  {
    ad.a(this.b, 0L, paramLong);
    if (paramCharset == null)
      throw new IllegalArgumentException("charset == null");
    if (paramLong > 2147483647L)
      throw new IllegalArgumentException("byteCount > Integer.MAX_VALUE: " + paramLong);
    if (paramLong == 0L)
      paramCharset = "";
    x localx;
    String str;
    do
    {
      return paramCharset;
      localx = this.a;
      if (localx.b + paramLong > localx.c)
        return new String(e(paramLong), paramCharset);
      str = new String(localx.a, localx.b, (int)paramLong, paramCharset);
      localx.b = ((int)(localx.b + paramLong));
      this.b -= paramLong;
      paramCharset = str;
    }
    while (localx.b != localx.c);
    this.a = localx.a();
    y.a(localx);
    return str;
  }

  private void c(byte[] paramArrayOfByte)
    throws EOFException
  {
    int i = 0;
    while (i < paramArrayOfByte.length)
    {
      int j = a(paramArrayOfByte, i, paramArrayOfByte.length - i);
      if (j == -1)
        throw new EOFException();
      i += j;
    }
  }

  private String k(long paramLong)
    throws EOFException
  {
    return a(paramLong, ad.a);
  }

  private f r()
  {
    f localf = new f();
    if (this.b == 0L)
      return localf;
    localf.a = new x(this.a);
    x localx1 = localf.a;
    x localx2 = localf.a;
    x localx3 = localf.a;
    localx2.g = localx3;
    localx1.f = localx3;
    for (localx1 = this.a.f; localx1 != this.a; localx1 = localx1.f)
      localf.a.g.a(new x(localx1));
    localf.b = this.b;
    return localf;
  }

  public final int a(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    ad.a(paramArrayOfByte.length, paramInt1, paramInt2);
    x localx = this.a;
    if (localx == null)
      paramInt1 = -1;
    do
    {
      return paramInt1;
      paramInt2 = Math.min(paramInt2, localx.c - localx.b);
      System.arraycopy(localx.a, localx.b, paramArrayOfByte, paramInt1, paramInt2);
      localx.b += paramInt2;
      this.b -= paramInt2;
      paramInt1 = paramInt2;
    }
    while (localx.b != localx.c);
    this.a = localx.a();
    y.a(localx);
    return paramInt2;
  }

  public final long a(byte paramByte)
  {
    return a(paramByte, 0L);
  }

  public final long a(byte paramByte, long paramLong)
  {
    if (paramLong < 0L)
      throw new IllegalArgumentException("fromIndex < 0");
    Object localObject1 = this.a;
    if (localObject1 == null)
      return -1L;
    long l = 0L;
    int j = ((x)localObject1).c - ((x)localObject1).b;
    if (paramLong >= j);
    for (paramLong -= j; ; paramLong = 0L)
    {
      l += j;
      Object localObject2 = ((x)localObject1).f;
      localObject1 = localObject2;
      if (localObject2 != this.a)
        break;
      return -1L;
      localObject2 = ((x)localObject1).a;
      int i = (int)(((x)localObject1).b + paramLong);
      int k = ((x)localObject1).c;
      while (i < k)
      {
        if (localObject2[i] == paramByte)
          return l + i - ((x)localObject1).b;
        i += 1;
      }
    }
  }

  public final long a(aa paramaa)
    throws IOException
  {
    if (paramaa == null)
      throw new IllegalArgumentException("source == null");
    long l2;
    for (long l1 = 0L; ; l1 += l2)
    {
      l2 = paramaa.read(this, 2048L);
      if (l2 == -1L)
        break;
    }
    return l1;
  }

  public final long a(z paramz)
    throws IOException
  {
    long l = this.b;
    if (l > 0L)
      paramz.a(this, l);
    return l;
  }

  public final f a()
  {
    return this;
  }

  public final f a(int paramInt)
  {
    if (paramInt < 128)
    {
      b(paramInt);
      return this;
    }
    if (paramInt < 2048)
    {
      b(paramInt >> 6 | 0xC0);
      b(paramInt & 0x3F | 0x80);
      return this;
    }
    if (paramInt < 65536)
    {
      if ((paramInt >= 55296) && (paramInt <= 57343))
        throw new IllegalArgumentException("Unexpected code point: " + Integer.toHexString(paramInt));
      b(paramInt >> 12 | 0xE0);
      b(paramInt >> 6 & 0x3F | 0x80);
      b(paramInt & 0x3F | 0x80);
      return this;
    }
    if (paramInt <= 1114111)
    {
      b(paramInt >> 18 | 0xF0);
      b(paramInt >> 12 & 0x3F | 0x80);
      b(paramInt >> 6 & 0x3F | 0x80);
      b(paramInt & 0x3F | 0x80);
      return this;
    }
    throw new IllegalArgumentException("Unexpected code point: " + Integer.toHexString(paramInt));
  }

  public final f a(f paramf, long paramLong1, long paramLong2)
  {
    if (paramf == null)
      throw new IllegalArgumentException("out == null");
    ad.a(this.b, paramLong1, paramLong2);
    if (paramLong2 == 0L)
      return this;
    paramf.b += paramLong2;
    x localx2;
    long l1;
    long l2;
    for (x localx1 = this.a; ; localx1 = localx1.f)
    {
      localx2 = localx1;
      l1 = paramLong1;
      l2 = paramLong2;
      if (paramLong1 < localx1.c - localx1.b)
        break;
      paramLong1 -= localx1.c - localx1.b;
    }
    label103: if (l2 > 0L)
    {
      localx1 = new x(localx2);
      localx1.b = ((int)(localx1.b + l1));
      localx1.c = Math.min(localx1.b + (int)l2, localx1.c);
      if (paramf.a != null)
        break label215;
      localx1.g = localx1;
      localx1.f = localx1;
      paramf.a = localx1;
    }
    while (true)
    {
      l2 -= localx1.c - localx1.b;
      localx2 = localx2.f;
      l1 = 0L;
      break label103;
      break;
      label215: paramf.a.g.a(localx1);
    }
  }

  public final f a(k paramk)
  {
    if (paramk == null)
      throw new IllegalArgumentException("byteString == null");
    b(paramk.c, 0, paramk.c.length);
    return this;
  }

  public final f a(String paramString)
  {
    return a(paramString, 0, paramString.length());
  }

  public final f a(String paramString, int paramInt1, int paramInt2)
  {
    if (paramString == null)
      throw new IllegalArgumentException("string == null");
    if (paramInt1 < 0)
      throw new IllegalAccessError("beginIndex < 0: " + paramInt1);
    if (paramInt2 < paramInt1)
      throw new IllegalArgumentException("endIndex < beginIndex: " + paramInt2 + " < " + paramInt1);
    int k;
    x localx;
    int i;
    if (paramInt2 > paramString.length())
    {
      throw new IllegalArgumentException("endIndex > string.length: " + paramInt2 + " > " + paramString.length());
      i = paramInt1 + k - localx.c;
      localx.c += i;
      this.b += i;
    }
    while (true)
    {
      if (paramInt1 >= paramInt2)
        break label526;
      int j = paramString.charAt(paramInt1);
      if (j < 128)
      {
        localx = e(1);
        byte[] arrayOfByte = localx.a;
        k = localx.c - paramInt1;
        int m = Math.min(paramInt2, 2048 - k);
        i = paramInt1 + 1;
        arrayOfByte[(k + paramInt1)] = ((byte)j);
        paramInt1 = i;
        while (true)
        {
          if (paramInt1 >= m)
            break label270;
          i = paramString.charAt(paramInt1);
          if (i >= 128)
            break;
          arrayOfByte[(paramInt1 + k)] = ((byte)i);
          paramInt1 += 1;
        }
        label270: break;
      }
      if (j < 2048)
      {
        b(j >> 6 | 0xC0);
        b(j & 0x3F | 0x80);
        paramInt1 += 1;
      }
      else if ((j < 55296) || (j > 57343))
      {
        b(j >> 12 | 0xE0);
        b(j >> 6 & 0x3F | 0x80);
        b(j & 0x3F | 0x80);
        paramInt1 += 1;
      }
      else
      {
        if (paramInt1 + 1 < paramInt2);
        for (i = paramString.charAt(paramInt1 + 1); ; i = 0)
        {
          if ((j <= 56319) && (i >= 56320) && (i <= 57343))
            break label438;
          b(63);
          paramInt1 += 1;
          break;
        }
        label438: i = (i & 0xFFFF23FF | (j & 0xFFFF27FF) << 10) + 65536;
        b(i >> 18 | 0xF0);
        b(i >> 12 & 0x3F | 0x80);
        b(i >> 6 & 0x3F | 0x80);
        b(i & 0x3F | 0x80);
        paramInt1 += 2;
      }
    }
    label526: return this;
  }

  public final f a(byte[] paramArrayOfByte)
  {
    if (paramArrayOfByte == null)
      throw new IllegalArgumentException("source == null");
    return b(paramArrayOfByte, 0, paramArrayOfByte.length);
  }

  public final void a(long paramLong)
    throws EOFException
  {
    if (this.b < paramLong)
      throw new EOFException();
  }

  public final void a(f paramf, long paramLong)
  {
    if (paramf == null)
      throw new IllegalArgumentException("source == null");
    if (paramf == this)
      throw new IllegalArgumentException("source == this");
    ad.a(paramf.b, 0L, paramLong);
    if (paramLong > 0L)
    {
      if (paramLong >= paramf.a.c - paramf.a.b)
        break label269;
      if (this.a == null)
        break label160;
      localx1 = this.a.g;
      if ((localx1 == null) || (!localx1.e))
        break label176;
      l = localx1.c;
      if (!localx1.d)
        break label166;
    }
    label160: label166: for (int i = 0; ; i = localx1.b)
    {
      if (l + paramLong - i > 2048L)
        break label176;
      paramf.a.a(localx1, (int)paramLong);
      paramf.b -= paramLong;
      this.b += paramLong;
      return;
      localx1 = null;
      break;
    }
    label176: x localx1 = paramf.a;
    i = (int)paramLong;
    if ((i <= 0) || (i > localx1.c - localx1.b))
      throw new IllegalArgumentException();
    x localx2 = new x(localx1);
    localx2.c = (localx2.b + i);
    localx1.b = (i + localx1.b);
    localx1.g.a(localx2);
    paramf.a = localx2;
    label269: localx1 = paramf.a;
    long l = localx1.c - localx1.b;
    paramf.a = localx1.a();
    if (this.a == null)
    {
      this.a = localx1;
      localx1 = this.a;
      localx2 = this.a;
      x localx3 = this.a;
      localx2.g = localx3;
      localx1.f = localx3;
    }
    label504: 
    while (true)
    {
      paramf.b -= l;
      this.b += l;
      paramLong -= l;
      break;
      localx1 = this.a.g.a(localx1);
      if (localx1.g == localx1)
        throw new IllegalStateException();
      if (localx1.g.e)
      {
        int j = localx1.c - localx1.b;
        int k = localx1.g.c;
        if (localx1.g.d);
        for (i = 0; ; i = localx1.g.b)
        {
          if (j > i + (2048 - k))
            break label504;
          localx1.a(localx1.g, j);
          localx1.a();
          y.a(localx1);
          break;
        }
      }
    }
  }

  public final byte b(long paramLong)
  {
    ad.a(this.b, paramLong, 1L);
    for (x localx = this.a; ; localx = localx.f)
    {
      int i = localx.c - localx.b;
      if (paramLong < i)
        return localx.a[(localx.b + (int)paramLong)];
      paramLong -= i;
    }
  }

  public final f b(int paramInt)
  {
    x localx = e(1);
    byte[] arrayOfByte = localx.a;
    int i = localx.c;
    localx.c = (i + 1);
    arrayOfByte[i] = ((byte)paramInt);
    this.b += 1L;
    return this;
  }

  public final f b(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    if (paramArrayOfByte == null)
      throw new IllegalArgumentException("source == null");
    ad.a(paramArrayOfByte.length, paramInt1, paramInt2);
    int i = paramInt1 + paramInt2;
    while (paramInt1 < i)
    {
      x localx = e(1);
      int j = Math.min(i - paramInt1, 2048 - localx.c);
      System.arraycopy(paramArrayOfByte, paramInt1, localx.a, localx.c, j);
      paramInt1 += j;
      localx.c = (j + localx.c);
    }
    this.b += paramInt2;
    return this;
  }

  public final i b()
  {
    return this;
  }

  public final f c(int paramInt)
  {
    x localx = e(2);
    byte[] arrayOfByte = localx.a;
    int i = localx.c;
    int j = i + 1;
    arrayOfByte[i] = ((byte)(paramInt >>> 8 & 0xFF));
    arrayOfByte[j] = ((byte)(paramInt & 0xFF));
    localx.c = (j + 1);
    this.b += 2L;
    return this;
  }

  public final k c(long paramLong)
    throws EOFException
  {
    return new k(e(paramLong));
  }

  public final boolean c()
  {
    return this.b == 0L;
  }

  public final void close()
  {
  }

  public final f d(int paramInt)
  {
    x localx = e(4);
    byte[] arrayOfByte = localx.a;
    int j = localx.c;
    int i = j + 1;
    arrayOfByte[j] = ((byte)(paramInt >>> 24 & 0xFF));
    j = i + 1;
    arrayOfByte[i] = ((byte)(paramInt >>> 16 & 0xFF));
    i = j + 1;
    arrayOfByte[j] = ((byte)(paramInt >>> 8 & 0xFF));
    arrayOfByte[i] = ((byte)(paramInt & 0xFF));
    localx.c = (i + 1);
    this.b += 4L;
    return this;
  }

  public final InputStream d()
  {
    return new h(this);
  }

  final String d(long paramLong)
    throws EOFException
  {
    if ((paramLong > 0L) && (b(paramLong - 1L) == 13))
    {
      str = k(paramLong - 1L);
      f(2L);
      return str;
    }
    String str = k(paramLong);
    f(1L);
    return str;
  }

  public final long e()
  {
    long l2 = this.b;
    long l1;
    if (l2 == 0L)
      l1 = 0L;
    x localx;
    do
    {
      do
      {
        return l1;
        localx = this.a.g;
        l1 = l2;
      }
      while (localx.c >= 2048);
      l1 = l2;
    }
    while (!localx.e);
    return l2 - (localx.c - localx.b);
  }

  final x e(int paramInt)
  {
    if ((paramInt <= 0) || (paramInt > 2048))
      throw new IllegalArgumentException();
    x localx2;
    x localx1;
    if (this.a == null)
    {
      this.a = y.a();
      localx2 = this.a;
      x localx3 = this.a;
      localx1 = this.a;
      localx3.g = localx1;
      localx2.f = localx1;
    }
    do
    {
      return localx1;
      localx2 = this.a.g;
      if (localx2.c + paramInt > 2048)
        break;
      localx1 = localx2;
    }
    while (localx2.e);
    return localx2.a(y.a());
  }

  public final byte[] e(long paramLong)
    throws EOFException
  {
    ad.a(this.b, 0L, paramLong);
    if (paramLong > 2147483647L)
      throw new IllegalArgumentException("byteCount > Integer.MAX_VALUE: " + paramLong);
    byte[] arrayOfByte = new byte[(int)paramLong];
    c(arrayOfByte);
    return arrayOfByte;
  }

  public final boolean equals(Object paramObject)
  {
    long l1 = 0L;
    if (this == paramObject)
      return true;
    if (!(paramObject instanceof f))
      return false;
    paramObject = (f)paramObject;
    if (this.b != paramObject.b)
      return false;
    if (this.b == 0L)
      return true;
    Object localObject2 = this.a;
    paramObject = paramObject.a;
    int j = ((x)localObject2).b;
    int i = paramObject.b;
    while (l1 < this.b)
    {
      long l2 = Math.min(((x)localObject2).c - j, paramObject.c - i);
      int k = 0;
      while (k < l2)
      {
        if (localObject2.a[j] != paramObject.a[i])
          return false;
        k += 1;
        i += 1;
        j += 1;
      }
      k = j;
      Object localObject1 = localObject2;
      if (j == ((x)localObject2).c)
      {
        localObject1 = ((x)localObject2).f;
        k = ((x)localObject1).b;
      }
      j = i;
      Object localObject3 = paramObject;
      if (i == paramObject.c)
      {
        localObject3 = paramObject.f;
        j = ((x)localObject3).b;
      }
      l1 += l2;
      i = j;
      j = k;
      localObject2 = localObject1;
      paramObject = localObject3;
    }
    return true;
  }

  public final byte f()
  {
    if (this.b == 0L)
      throw new IllegalStateException("size == 0");
    x localx = this.a;
    int i = localx.b;
    int j = localx.c;
    byte[] arrayOfByte = localx.a;
    int k = i + 1;
    byte b1 = arrayOfByte[i];
    this.b -= 1L;
    if (k == j)
    {
      this.a = localx.a();
      y.a(localx);
      return b1;
    }
    localx.b = k;
    return b1;
  }

  public final void f(long paramLong)
    throws EOFException
  {
    while (paramLong > 0L)
    {
      if (this.a == null)
        throw new EOFException();
      int i = (int)Math.min(paramLong, this.a.c - this.a.b);
      this.b -= i;
      long l = paramLong - i;
      x localx = this.a;
      localx.b = (i + localx.b);
      paramLong = l;
      if (this.a.b == this.a.c)
      {
        localx = this.a;
        this.a = localx.a();
        y.a(localx);
        paramLong = l;
      }
    }
  }

  public final void flush()
  {
  }

  public final f g(long paramLong)
  {
    if (paramLong == 0L)
      return b(48);
    if (paramLong < 0L)
    {
      paramLong = -paramLong;
      if (paramLong < 0L)
        return a("-9223372036854775808");
    }
    for (int j = 1; ; j = 0)
    {
      int i;
      if (paramLong < 100000000L)
        if (paramLong < 10000L)
          if (paramLong < 100L)
            if (paramLong < 10L)
              i = 1;
      int k;
      x localx;
      byte[] arrayOfByte;
      while (true)
      {
        k = i;
        if (j != 0)
          k = i + 1;
        localx = e(k);
        arrayOfByte = localx.a;
        i = localx.c + k;
        while (paramLong != 0L)
        {
          int m = (int)(paramLong % 10L);
          i -= 1;
          arrayOfByte[i] = c[m];
          paramLong /= 10L;
        }
        i = 2;
        continue;
        if (paramLong < 1000L)
        {
          i = 3;
        }
        else
        {
          i = 4;
          continue;
          if (paramLong < 1000000L)
          {
            if (paramLong < 100000L)
              i = 5;
            else
              i = 6;
          }
          else if (paramLong < 10000000L)
          {
            i = 7;
          }
          else
          {
            i = 8;
            continue;
            if (paramLong < 1000000000000L)
            {
              if (paramLong < 10000000000L)
              {
                if (paramLong < 1000000000L)
                  i = 9;
                else
                  i = 10;
              }
              else if (paramLong < 100000000000L)
                i = 11;
              else
                i = 12;
            }
            else if (paramLong < 1000000000000000L)
            {
              if (paramLong < 10000000000000L)
                i = 13;
              else if (paramLong < 100000000000000L)
                i = 14;
              else
                i = 15;
            }
            else if (paramLong < 100000000000000000L)
            {
              if (paramLong < 10000000000000000L)
                i = 16;
              else
                i = 17;
            }
            else if (paramLong < 1000000000000000000L)
              i = 18;
            else
              i = 19;
          }
        }
      }
      if (j != 0)
        arrayOfByte[(i - 1)] = 45;
      localx.c += k;
      paramLong = this.b;
      this.b = (k + paramLong);
      return this;
    }
  }

  public final short g()
  {
    if (this.b < 2L)
      throw new IllegalStateException("size < 2: " + this.b);
    x localx = this.a;
    int k = localx.b;
    int i = localx.c;
    if (i - k < 2)
      return (short)((f() & 0xFF) << 8 | f() & 0xFF);
    byte[] arrayOfByte = localx.a;
    int j = k + 1;
    k = arrayOfByte[k];
    int m = j + 1;
    j = arrayOfByte[j];
    this.b -= 2L;
    if (m == i)
    {
      this.a = localx.a();
      y.a(localx);
    }
    while (true)
    {
      return (short)((k & 0xFF) << 8 | j & 0xFF);
      localx.b = m;
    }
  }

  public final int h()
  {
    if (this.b < 4L)
      throw new IllegalStateException("size < 4: " + this.b);
    x localx = this.a;
    int j = localx.b;
    int i = localx.c;
    if (i - j < 4)
      return (f() & 0xFF) << 24 | (f() & 0xFF) << 16 | (f() & 0xFF) << 8 | f() & 0xFF;
    byte[] arrayOfByte = localx.a;
    int k = j + 1;
    j = arrayOfByte[j];
    int n = k + 1;
    k = arrayOfByte[k];
    int m = n + 1;
    int i1 = arrayOfByte[n];
    n = m + 1;
    j = (j & 0xFF) << 24 | (k & 0xFF) << 16 | (i1 & 0xFF) << 8 | arrayOfByte[m] & 0xFF;
    this.b -= 4L;
    if (n == i)
    {
      this.a = localx.a();
      y.a(localx);
      return j;
    }
    localx.b = n;
    return j;
  }

  public final f h(long paramLong)
  {
    if (paramLong == 0L)
      return b(48);
    int j = Long.numberOfTrailingZeros(Long.highestOneBit(paramLong)) / 4 + 1;
    x localx = e(j);
    byte[] arrayOfByte = localx.a;
    int i = localx.c + j - 1;
    int k = localx.c;
    while (i >= k)
    {
      arrayOfByte[i] = c[((int)(0xF & paramLong))];
      paramLong >>>= 4;
      i -= 1;
    }
    localx.c += j;
    paramLong = this.b;
    this.b = (j + paramLong);
    return this;
  }

  public final int hashCode()
  {
    Object localObject = this.a;
    if (localObject == null)
      return 0;
    int j = 1;
    int i;
    x localx;
    do
    {
      int k = ((x)localObject).b;
      int m = ((x)localObject).c;
      for (i = j; k < m; i = j + i * 31)
      {
        j = localObject.a[k];
        k += 1;
      }
      localx = ((x)localObject).f;
      j = i;
      localObject = localx;
    }
    while (localx != this.a);
    return i;
  }

  public final short i()
  {
    return ad.a(g());
  }

  public final int j()
  {
    return ad.a(h());
  }

  public final long k()
  {
    if (this.b == 0L)
      throw new IllegalStateException("size == 0");
    long l2 = 0L;
    int i = 0;
    int j = 0;
    Object localObject = this.a;
    byte[] arrayOfByte = ((x)localObject).a;
    int m = ((x)localObject).b;
    int n = ((x)localObject).c;
    long l1 = l2;
    int k = i;
    label60: i = j;
    if (m < n)
    {
      int i1 = arrayOfByte[m];
      if ((i1 >= 48) && (i1 <= 57))
        i = i1 - 48;
      while (true)
      {
        if ((0x0 & l1) == 0L)
          break label296;
        localObject = new f().h(l1).b(i1);
        throw new NumberFormatException("Number too large: " + ((f)localObject).m());
        if ((i1 >= 97) && (i1 <= 102))
        {
          i = i1 - 97 + 10;
        }
        else
        {
          if ((i1 < 65) || (i1 > 70))
            break;
          i = i1 - 65 + 10;
        }
      }
      if (k == 0)
        throw new NumberFormatException("Expected leading [0-9a-fA-F] character but was 0x" + Integer.toHexString(i1));
      i = 1;
    }
    if (m == n)
    {
      this.a = ((x)localObject).a();
      y.a((x)localObject);
    }
    while (true)
    {
      if (i == 0)
      {
        j = i;
        i = k;
        l2 = l1;
        if (this.a != null)
          break;
      }
      this.b -= k;
      return l1;
      label296: l2 = i;
      k += 1;
      m += 1;
      l1 = l2 | l1 << 4;
      break label60;
      ((x)localObject).b = m;
    }
  }

  public final k l()
  {
    return new k(o());
  }

  public final String m()
  {
    try
    {
      String str = a(this.b, ad.a);
      return str;
    }
    catch (EOFException localEOFException)
    {
      throw new AssertionError(localEOFException);
    }
  }

  public final String n()
    throws EOFException
  {
    long l = a((byte)10, 0L);
    if (l == -1L)
    {
      f localf = new f();
      a(localf, 0L, Math.min(32L, this.b));
      throw new EOFException("\\n not found: size=" + this.b + " content=" + localf.l().b() + "...");
    }
    return d(l);
  }

  public final byte[] o()
  {
    try
    {
      byte[] arrayOfByte = e(this.b);
      return arrayOfByte;
    }
    catch (EOFException localEOFException)
    {
      throw new AssertionError(localEOFException);
    }
  }

  public final void p()
  {
    try
    {
      f(this.b);
      return;
    }
    catch (EOFException localEOFException)
    {
      throw new AssertionError(localEOFException);
    }
  }

  public final long read(f paramf, long paramLong)
  {
    if (paramf == null)
      throw new IllegalArgumentException("sink == null");
    if (paramLong < 0L)
      throw new IllegalArgumentException("byteCount < 0: " + paramLong);
    if (this.b == 0L)
      return -1L;
    long l = paramLong;
    if (paramLong > this.b)
      l = this.b;
    paramf.a(this, l);
    return l;
  }

  public final ab timeout()
  {
    return ab.b;
  }

  public final String toString()
  {
    if (this.b == 0L)
      return "Buffer[size=0]";
    Object localObject;
    if (this.b <= 16L)
    {
      localObject = r().l();
      return String.format("Buffer[size=%s data=%s]", new Object[] { Long.valueOf(this.b), ((k)localObject).b() });
    }
    try
    {
      MessageDigest localMessageDigest = MessageDigest.getInstance("MD5");
      localMessageDigest.update(this.a.a, this.a.b, this.a.c - this.a.b);
      for (localObject = this.a.f; localObject != this.a; localObject = ((x)localObject).f)
        localMessageDigest.update(((x)localObject).a, ((x)localObject).b, ((x)localObject).c - ((x)localObject).b);
      localObject = String.format("Buffer[size=%s md5=%s]", new Object[] { Long.valueOf(this.b), k.a(localMessageDigest.digest()).b() });
      return localObject;
    }
    catch (NoSuchAlgorithmException localNoSuchAlgorithmException)
    {
    }
    throw new AssertionError();
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     a.f
 * JD-Core Version:    0.6.2
 */