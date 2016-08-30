package com.google.zxing.a.c;

import com.google.zxing.common.a;

final class b extends h
{
  private final short c;
  private final short d;

  b(h paramh, int paramInt1, int paramInt2)
  {
    super(paramh);
    this.c = ((short)paramInt1);
    this.d = ((short)paramInt2);
  }

  public final void a(a parama, byte[] paramArrayOfByte)
  {
    int i = 0;
    if (i < this.d)
    {
      if ((i == 0) || ((i == 31) && (this.d <= 62)))
      {
        parama.b(31, 5);
        if (this.d <= 62)
          break label79;
        parama.b(this.d - 31, 16);
      }
      while (true)
      {
        parama.b(paramArrayOfByte[(this.c + i)], 8);
        i += 1;
        break;
        label79: if (i == 0)
          parama.b(Math.min(this.d, 31), 5);
        else
          parama.b(this.d - 31, 5);
      }
    }
  }

  public final String toString()
  {
    return "<" + this.c + "::" + (this.c + this.d - 1) + '>';
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.google.zxing.a.c.b
 * JD-Core Version:    0.6.2
 */