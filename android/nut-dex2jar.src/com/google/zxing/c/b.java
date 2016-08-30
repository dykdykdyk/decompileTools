package com.google.zxing.c;

import com.google.zxing.a;
import com.google.zxing.c.c.i;
import com.google.zxing.c.c.j;
import com.google.zxing.c.c.k;
import com.google.zxing.c.c.l;
import com.google.zxing.f;
import com.google.zxing.q;
import java.util.Map;

public final class b
  implements q
{
  private static com.google.zxing.common.b a(com.google.zxing.c.c.e parame, k paramk)
  {
    int i1 = paramk.b();
    int i2 = paramk.c();
    com.google.zxing.g.c.b localb = new com.google.zxing.g.c.b(paramk.d(), paramk.e());
    int j = 0;
    int i = 0;
    int m;
    boolean bool;
    if (j < i2)
    {
      if (j % paramk.e != 0)
        break label402;
      k = 0;
      m = 0;
      if (k < paramk.d())
      {
        if (k % 2 == 0);
        for (bool = true; ; bool = false)
        {
          localb.a(m, i, bool);
          m += 1;
          k += 1;
          break;
        }
      }
    }
    label399: label402: for (int k = i + 1; ; k = i)
    {
      m = 0;
      i = 0;
      label114: if (m < i1)
      {
        int n = i;
        if (m % paramk.d == 0)
        {
          localb.a(i, k, true);
          n = i + 1;
        }
        if (parame.b[(parame.a * j + m)] == 1)
        {
          bool = true;
          localb.a(n, k, bool);
          i = n + 1;
          if (m % paramk.d != paramk.d - 1)
            break label399;
          if (j % 2 != 0)
            break label239;
          bool = true;
          localb.a(i, k, bool);
          i += 1;
        }
      }
      while (true)
      {
        label169: label210: m += 1;
        break label114;
        bool = false;
        break label169;
        label239: bool = false;
        break label210;
        m = k + 1;
        if (j % paramk.e == paramk.e - 1)
        {
          i = 0;
          k = 0;
          while (i < paramk.d())
          {
            localb.a(k, m, true);
            k += 1;
            i += 1;
          }
        }
        for (i = m + 1; ; i = m)
        {
          j += 1;
          break;
          k = localb.b;
          m = localb.c;
          parame = new com.google.zxing.common.b(k, m);
          parame.a();
          i = 0;
          while (i < k)
          {
            j = 0;
            while (j < m)
            {
              if (localb.a(i, j) == 1)
                parame.b(i, j);
              j += 1;
            }
            i += 1;
          }
          return parame;
        }
      }
    }
  }

  public final com.google.zxing.common.b a(String paramString, a parama, int paramInt1, int paramInt2, Map<f, ?> paramMap)
  {
    Object localObject3 = null;
    if (paramString.isEmpty())
      throw new IllegalArgumentException("Found empty contents");
    if (parama != a.f)
      throw new IllegalArgumentException("Can only encode DATA_MATRIX, but got " + parama);
    if ((paramInt1 < 0) || (paramInt2 < 0))
      throw new IllegalArgumentException("Requested dimensions are too small: " + paramInt1 + 'x' + paramInt2);
    parama = l.a;
    Object localObject1;
    Object localObject2;
    if (paramMap != null)
    {
      localObject1 = (l)paramMap.get(f.c);
      if (localObject1 != null)
        parama = (a)localObject1;
      localObject1 = (com.google.zxing.e)paramMap.get(f.d);
      if (localObject1 != null)
      {
        com.google.zxing.e locale = (com.google.zxing.e)paramMap.get(f.e);
        paramMap = parama;
        localObject2 = localObject1;
        if (locale != null)
        {
          localObject3 = locale;
          localObject2 = localObject1;
        }
      }
    }
    for (paramMap = parama; ; paramMap = parama)
    {
      paramString = j.a(paramString, paramMap, localObject2, localObject3);
      parama = k.a(paramString.length(), paramMap, localObject2, localObject3);
      paramString = new com.google.zxing.c.c.e(i.a(paramString, parama), parama.b(), parama.c());
      paramString.a();
      return a(paramString, parama);
      localObject1 = null;
      break;
      localObject2 = null;
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.google.zxing.c.b
 * JD-Core Version:    0.6.2
 */