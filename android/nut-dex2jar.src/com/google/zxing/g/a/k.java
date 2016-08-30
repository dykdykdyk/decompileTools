package com.google.zxing.g.a;

final class k extends c
{
  private k()
  {
    super((byte)0);
  }

  final boolean a(int paramInt1, int paramInt2)
  {
    return ((paramInt1 + paramInt2 & 0x1) + paramInt1 * paramInt2 % 3 & 0x1) == 0;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.google.zxing.g.a.k
 * JD-Core Version:    0.6.2
 */