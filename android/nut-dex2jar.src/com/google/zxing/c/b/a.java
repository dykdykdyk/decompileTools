package com.google.zxing.c.b;

import com.google.zxing.NotFoundException;
import com.google.zxing.common.i;
import com.google.zxing.o;
import java.util.Map;

public final class a
{
  public final com.google.zxing.common.b a;
  public final com.google.zxing.common.a.b b;

  public a(com.google.zxing.common.b paramb)
    throws NotFoundException
  {
    this.a = paramb;
    this.b = new com.google.zxing.common.a.b(paramb);
  }

  public static int a(o paramo1, o paramo2)
  {
    return com.google.zxing.common.a.a.a(o.a(paramo1, paramo2));
  }

  public static com.google.zxing.common.b a(com.google.zxing.common.b paramb, o paramo1, o paramo2, o paramo3, o paramo4, int paramInt1, int paramInt2)
    throws NotFoundException
  {
    return i.a().a(paramb, paramInt1, paramInt2, 0.5F, 0.5F, paramInt1 - 0.5F, 0.5F, paramInt1 - 0.5F, paramInt2 - 0.5F, 0.5F, paramInt2 - 0.5F, paramo1.a, paramo1.b, paramo4.a, paramo4.b, paramo3.a, paramo3.b, paramo2.a, paramo2.b);
  }

  public static void a(Map<o, Integer> paramMap, o paramo)
  {
    Integer localInteger = (Integer)paramMap.get(paramo);
    if (localInteger == null);
    for (int i = 1; ; i = localInteger.intValue() + 1)
    {
      paramMap.put(paramo, Integer.valueOf(i));
      return;
    }
  }

  public final boolean a(o paramo)
  {
    return (paramo.a >= 0.0F) && (paramo.a < this.a.a) && (paramo.b > 0.0F) && (paramo.b < this.a.b);
  }

  public final b b(o paramo1, o paramo2)
  {
    int j = (int)paramo1.a;
    int i = (int)paramo1.b;
    int i1 = (int)paramo2.a;
    int i2 = (int)paramo2.b;
    int n;
    if (Math.abs(i2 - i) > Math.abs(i1 - j))
    {
      n = 1;
      if (n == 0)
        break label338;
    }
    while (true)
    {
      int i8 = Math.abs(i2 - i);
      int i9 = Math.abs(i1 - j);
      int i5 = -i8 / 2;
      int i3;
      label89: int i4;
      label98: com.google.zxing.common.b localb;
      label116: label124: boolean bool1;
      if (j < i1)
      {
        i3 = 1;
        if (i >= i2)
          break label293;
        i4 = 1;
        i6 = 0;
        localb = this.a;
        if (n == 0)
          break label299;
        k = j;
        if (n == 0)
          break label305;
        m = i;
        bool1 = localb.a(k, m);
        k = i6;
        label139: i6 = k;
        if (i == i2)
          break label325;
        localb = this.a;
        if (n == 0)
          break label312;
        m = j;
        label164: if (n == 0)
          break label318;
      }
      label293: label299: label305: label312: label318: for (int i6 = i; ; i6 = j)
      {
        boolean bool3 = localb.a(m, i6);
        m = k;
        boolean bool2 = bool1;
        if (bool3 != bool1)
        {
          m = k + 1;
          bool2 = bool3;
        }
        int i7 = i5 + i9;
        k = i7;
        i5 = j;
        if (i7 > 0)
        {
          i6 = m;
          if (j == i1)
            break label325;
          i5 = j + i3;
          k = i7 - i8;
        }
        i += i4;
        i6 = k;
        j = i5;
        k = m;
        bool1 = bool2;
        i5 = i6;
        break label139;
        n = 0;
        break;
        i3 = -1;
        break label89;
        i4 = -1;
        break label98;
        k = i;
        break label116;
        m = j;
        break label124;
        m = i;
        break label164;
      }
      label325: return new b(paramo1, paramo2, i6, (byte)0);
      label338: int k = i1;
      i1 = i2;
      int m = j;
      i2 = k;
      j = i;
      i = m;
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.google.zxing.c.b.a
 * JD-Core Version:    0.6.2
 */