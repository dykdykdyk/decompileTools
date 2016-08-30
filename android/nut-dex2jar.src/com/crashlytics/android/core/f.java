package com.crashlytics.android.core;

import java.io.ByteArrayInputStream;
import java.io.Flushable;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

final class f
  implements Flushable
{
  final byte[] a;
  final int b;
  int c;
  final OutputStream d;

  private f(OutputStream paramOutputStream, byte[] paramArrayOfByte)
  {
    this.d = paramOutputStream;
    this.a = paramArrayOfByte;
    this.c = 0;
    this.b = 4096;
  }

  public static int a()
  {
    return d(1) + 4;
  }

  public static f a(OutputStream paramOutputStream)
  {
    return new f(paramOutputStream, new byte[4096]);
  }

  private void a(long paramLong)
    throws IOException
  {
    while (true)
    {
      if ((0xFFFFFF80 & paramLong) == 0L)
      {
        g((int)paramLong);
        return;
      }
      g((int)paramLong & 0x7F | 0x80);
      paramLong >>>= 7;
    }
  }

  public static int b(int paramInt)
  {
    return d(paramInt) + 1;
  }

  public static int b(int paramInt, long paramLong)
  {
    int i = d(paramInt);
    if ((0xFFFFFF80 & paramLong) == 0L)
      paramInt = 1;
    while (true)
    {
      return paramInt + i;
      if ((0xFFFFC000 & paramLong) == 0L)
        paramInt = 2;
      else if ((0xFFE00000 & paramLong) == 0L)
        paramInt = 3;
      else if ((0xF0000000 & paramLong) == 0L)
        paramInt = 4;
      else if ((0x0 & paramLong) == 0L)
        paramInt = 5;
      else if ((0x0 & paramLong) == 0L)
        paramInt = 6;
      else if ((0x0 & paramLong) == 0L)
        paramInt = 7;
      else if ((0x0 & paramLong) == 0L)
        paramInt = 8;
      else if ((0x0 & paramLong) == 0L)
        paramInt = 9;
      else
        paramInt = 10;
    }
  }

  public static int b(int paramInt, b paramb)
  {
    return d(paramInt) + (f(paramb.a.length) + paramb.a.length);
  }

  public static int c(int paramInt)
  {
    return d(2) + f(h(paramInt));
  }

  public static int c(int paramInt1, int paramInt2)
  {
    return d(paramInt1) + f(paramInt2);
  }

  public static int d(int paramInt)
  {
    return f(cd.a(paramInt, 0));
  }

  public static int d(int paramInt1, int paramInt2)
  {
    int i = d(paramInt1);
    if (paramInt2 >= 0);
    for (paramInt1 = f(paramInt2); ; paramInt1 = 10)
      return paramInt1 + i;
  }

  public static int f(int paramInt)
  {
    if ((paramInt & 0xFFFFFF80) == 0)
      return 1;
    if ((paramInt & 0xFFFFC000) == 0)
      return 2;
    if ((0xFFE00000 & paramInt) == 0)
      return 3;
    if ((0xF0000000 & paramInt) == 0)
      return 4;
    return 5;
  }

  private void g(int paramInt)
    throws IOException
  {
    int i = (byte)paramInt;
    if (this.c == this.b)
      b();
    byte[] arrayOfByte = this.a;
    paramInt = this.c;
    this.c = (paramInt + 1);
    arrayOfByte[paramInt] = i;
  }

  private static int h(int paramInt)
  {
    return paramInt << 1 ^ paramInt >> 31;
  }

  public final void a(float paramFloat)
    throws IOException
  {
    e(1, 5);
    int i = Float.floatToRawIntBits(paramFloat);
    g(i & 0xFF);
    g(i >> 8 & 0xFF);
    g(i >> 16 & 0xFF);
    g(i >> 24 & 0xFF);
  }

  public final void a(int paramInt)
    throws IOException
  {
    e(2, 0);
    e(h(paramInt));
  }

  public final void a(int paramInt1, int paramInt2)
    throws IOException
  {
    e(paramInt1, 0);
    e(paramInt2);
  }

  public final void a(int paramInt, long paramLong)
    throws IOException
  {
    e(paramInt, 0);
    a(paramLong);
  }

  public final void a(int paramInt, b paramb)
    throws IOException
  {
    e(paramInt, 2);
    e(paramb.a.length);
    paramInt = paramb.a.length;
    if (this.b - this.c >= paramInt)
    {
      paramb.a(this.a, 0, this.c, paramInt);
      this.c = (paramInt + this.c);
      return;
    }
    int j = this.b - this.c;
    paramb.a(this.a, 0, this.c, j);
    int i = j + 0;
    paramInt -= j;
    this.c = this.b;
    b();
    if (paramInt <= this.b)
    {
      paramb.a(this.a, i, 0, paramInt);
      this.c = paramInt;
      return;
    }
    paramb = new ByteArrayInputStream(paramb.a);
    if (i != paramb.skip(i))
      throw new IllegalStateException("Skip failed.");
    do
    {
      this.d.write(this.a, 0, j);
      paramInt -= j;
      if (paramInt <= 0)
        break;
      i = Math.min(paramInt, this.b);
      j = paramb.read(this.a, 0, i);
    }
    while (j == i);
    throw new IllegalStateException("Read failed.");
  }

  public final void a(int paramInt, boolean paramBoolean)
    throws IOException
  {
    int i = 0;
    e(paramInt, 0);
    paramInt = i;
    if (paramBoolean)
      paramInt = 1;
    g(paramInt);
  }

  final void b()
    throws IOException
  {
    if (this.d == null)
      throw new g();
    this.d.write(this.a, 0, this.c);
    this.c = 0;
  }

  public final void b(int paramInt1, int paramInt2)
    throws IOException
  {
    e(paramInt1, 0);
    if (paramInt2 >= 0)
    {
      e(paramInt2);
      return;
    }
    a(paramInt2);
  }

  public final void e(int paramInt)
    throws IOException
  {
    while (true)
    {
      if ((paramInt & 0xFFFFFF80) == 0)
      {
        g(paramInt);
        return;
      }
      g(paramInt & 0x7F | 0x80);
      paramInt >>>= 7;
    }
  }

  public final void e(int paramInt1, int paramInt2)
    throws IOException
  {
    e(cd.a(paramInt1, paramInt2));
  }

  public final void flush()
    throws IOException
  {
    if (this.d != null)
      b();
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.crashlytics.android.core.f
 * JD-Core Version:    0.6.2
 */