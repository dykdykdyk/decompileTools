package com.google.zxing.g.a;

final class j extends c
{
  private j()
  {
    super((byte)0);
  }

  final boolean a(int paramInt1, int paramInt2)
  {
    paramInt1 *= paramInt2;
    return (paramInt1 % 3 + (paramInt1 & 0x1) & 0x1) == 0;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.google.zxing.g.a.j
 * JD-Core Version:    0.6.2
 */