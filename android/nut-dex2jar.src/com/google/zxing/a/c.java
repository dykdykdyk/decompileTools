package com.google.zxing.a;

import com.google.zxing.common.b;
import com.google.zxing.f;
import com.google.zxing.q;
import java.nio.charset.Charset;
import java.util.Map;

public final class c
  implements q
{
  private static final Charset a = Charset.forName("ISO-8859-1");

  private static b a(com.google.zxing.a.c.a parama, int paramInt1, int paramInt2)
  {
    parama = parama.e;
    if (parama == null)
      throw new IllegalStateException();
    int m = parama.a;
    int n = parama.b;
    paramInt1 = Math.max(paramInt1, m);
    int i = Math.max(paramInt2, n);
    int i1 = Math.min(paramInt1 / m, i / n);
    int k = (paramInt1 - m * i1) / 2;
    paramInt2 = (i - n * i1) / 2;
    b localb = new b(paramInt1, i);
    paramInt1 = 0;
    while (paramInt1 < n)
    {
      i = k;
      int j = 0;
      while (j < m)
      {
        if (parama.a(j, paramInt1))
          localb.a(i, paramInt2, i1, i1);
        j += 1;
        i += i1;
      }
      paramInt2 += i1;
      paramInt1 += 1;
    }
    return localb;
  }

  public final b a(String paramString, com.google.zxing.a parama, int paramInt1, int paramInt2, Map<f, ?> paramMap)
  {
    Object localObject;
    Number localNumber;
    label16: label24: label34: int i;
    if (paramMap == null)
    {
      localObject = null;
      if (paramMap != null)
        break label100;
      localNumber = null;
      if (paramMap != null)
        break label118;
      paramMap = null;
      if (localObject != null)
        break label136;
      localObject = a;
      if (localNumber != null)
        break label146;
      i = 33;
      label43: if (paramMap != null)
        break label156;
    }
    label136: label146: label156: for (int j = 0; ; j = paramMap.intValue())
    {
      if (parama == com.google.zxing.a.a)
        break label166;
      throw new IllegalArgumentException("Can only encode AZTEC, but got " + parama);
      localObject = (String)paramMap.get(f.b);
      break;
      label100: localNumber = (Number)paramMap.get(f.a);
      break label16;
      label118: paramMap = (Number)paramMap.get(f.j);
      break label24;
      localObject = Charset.forName((String)localObject);
      break label34;
      i = localNumber.intValue();
      break label43;
    }
    label166: return a(com.google.zxing.a.c.c.a(paramString.getBytes((Charset)localObject), i, j), paramInt1, paramInt2);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.google.zxing.a.c
 * JD-Core Version:    0.6.2
 */