package com.google.zxing.a.c;

import com.google.zxing.common.a;

final class f extends h
{
  private final short c;
  private final short d;

  f(h paramh, int paramInt1, int paramInt2)
  {
    super(paramh);
    this.c = ((short)paramInt1);
    this.d = ((short)paramInt2);
  }

  final void a(a parama, byte[] paramArrayOfByte)
  {
    parama.b(this.c, this.d);
  }

  public final String toString()
  {
    int i = this.c;
    int j = this.d;
    int k = this.d;
    return "<" + Integer.toBinaryString(i & (1 << j) - 1 | 1 << k | 1 << this.d).substring(1) + '>';
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.google.zxing.a.c.f
 * JD-Core Version:    0.6.2
 */