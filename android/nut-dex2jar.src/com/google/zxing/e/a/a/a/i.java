package com.google.zxing.e.a.a.a;

import com.google.zxing.common.a;

abstract class i extends h
{
  i(a parama)
  {
    super(parama);
  }

  protected abstract int a(int paramInt);

  protected abstract void a(StringBuilder paramStringBuilder, int paramInt);

  protected final void b(StringBuilder paramStringBuilder, int paramInt1, int paramInt2)
  {
    paramInt1 = this.b.a(paramInt1, paramInt2);
    a(paramStringBuilder, paramInt1);
    int i = a(paramInt1);
    paramInt2 = 100000;
    paramInt1 = 0;
    while (paramInt1 < 5)
    {
      if (i / paramInt2 == 0)
        paramStringBuilder.append('0');
      paramInt2 /= 10;
      paramInt1 += 1;
    }
    paramStringBuilder.append(i);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.google.zxing.e.a.a.a.i
 * JD-Core Version:    0.6.2
 */