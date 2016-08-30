package com.google.zxing.g;

import com.google.zxing.WriterException;
import com.google.zxing.a;
import com.google.zxing.f;
import com.google.zxing.g.a.n;
import com.google.zxing.g.c.c;
import com.google.zxing.g.c.g;
import com.google.zxing.q;
import java.util.Map;

public final class b
  implements q
{
  private static com.google.zxing.common.b a(g paramg, int paramInt1, int paramInt2, int paramInt3)
  {
    paramg = paramg.e;
    if (paramg == null)
      throw new IllegalStateException();
    int k = paramg.b;
    int m = paramg.c;
    int i = paramInt3 * 2 + k;
    int j = paramInt3 * 2 + m;
    paramInt1 = Math.max(paramInt1, i);
    paramInt3 = Math.max(paramInt2, j);
    int n = Math.min(paramInt1 / i, paramInt3 / j);
    j = (paramInt1 - k * n) / 2;
    paramInt2 = (paramInt3 - m * n) / 2;
    com.google.zxing.common.b localb = new com.google.zxing.common.b(paramInt1, paramInt3);
    paramInt1 = 0;
    while (paramInt1 < m)
    {
      i = 0;
      paramInt3 = j;
      while (i < k)
      {
        if (paramg.a(i, paramInt1) == 1)
          localb.a(paramInt3, paramInt2, n, n);
        i += 1;
        paramInt3 += n;
      }
      paramInt2 += n;
      paramInt1 += 1;
    }
    return localb;
  }

  public final com.google.zxing.common.b a(String paramString, a parama, int paramInt1, int paramInt2, Map<f, ?> paramMap)
    throws WriterException
  {
    if (paramString.isEmpty())
      throw new IllegalArgumentException("Found empty contents");
    if (parama != a.l)
      throw new IllegalArgumentException("Can only encode QR_CODE, but got " + parama);
    if ((paramInt1 < 0) || (paramInt2 < 0))
      throw new IllegalArgumentException("Requested dimensions are too small: " + paramInt1 + 'x' + paramInt2);
    parama = n.a;
    Object localObject = parama;
    int i;
    if (paramMap != null)
    {
      localObject = (n)paramMap.get(f.a);
      if (localObject != null)
        parama = (a)localObject;
      Integer localInteger = (Integer)paramMap.get(f.f);
      localObject = parama;
      if (localInteger != null)
        i = localInteger.intValue();
    }
    while (true)
    {
      return a(c.a(paramString, parama, paramMap), paramInt1, paramInt2, i);
      i = 4;
      parama = (a)localObject;
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.google.zxing.g.b
 * JD-Core Version:    0.6.2
 */