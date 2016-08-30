package com.google.zxing.e.a.a.a;

import com.google.zxing.FormatException;

final class q extends r
{
  final int a;
  final int b;

  q(int paramInt1, int paramInt2, int paramInt3)
    throws FormatException
  {
    super(paramInt1);
    if ((paramInt2 < 0) || (paramInt2 > 10) || (paramInt3 < 0) || (paramInt3 > 10))
      throw FormatException.a();
    this.a = paramInt2;
    this.b = paramInt3;
  }

  final boolean a()
  {
    return this.b == 10;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.google.zxing.e.a.a.a.q
 * JD-Core Version:    0.6.2
 */