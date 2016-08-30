package com.google.zxing.e;

import com.google.zxing.WriterException;
import com.google.zxing.a;
import com.google.zxing.common.b;
import com.google.zxing.f;
import com.google.zxing.q;
import java.util.Map;

public abstract class r
  implements q
{
  protected static int a(boolean[] paramArrayOfBoolean, int paramInt, int[] paramArrayOfInt, boolean paramBoolean)
  {
    int m = paramArrayOfInt.length;
    int i = 0;
    int j = 0;
    if (i < m)
    {
      int n = paramArrayOfInt[i];
      int k = 0;
      while (k < n)
      {
        paramArrayOfBoolean[paramInt] = paramBoolean;
        k += 1;
        paramInt += 1;
      }
      j += n;
      if (!paramBoolean);
      for (paramBoolean = true; ; paramBoolean = false)
      {
        i += 1;
        break;
      }
    }
    return j;
  }

  private static b a(boolean[] paramArrayOfBoolean, int paramInt1, int paramInt2, int paramInt3)
  {
    int i = paramArrayOfBoolean.length;
    int j = i + paramInt3;
    int k = Math.max(paramInt1, j);
    paramInt3 = Math.max(1, paramInt2);
    j = k / j;
    paramInt1 = (k - i * j) / 2;
    b localb = new b(k, paramInt3);
    paramInt2 = 0;
    while (paramInt2 < i)
    {
      if (paramArrayOfBoolean[paramInt2] != 0)
        localb.a(paramInt1, 0, j, paramInt3);
      paramInt2 += 1;
      paramInt1 += j;
    }
    return localb;
  }

  public int a()
  {
    return 10;
  }

  public b a(String paramString, a parama, int paramInt1, int paramInt2, Map<f, ?> paramMap)
    throws WriterException
  {
    if (paramString.isEmpty())
      throw new IllegalArgumentException("Found empty contents");
    if ((paramInt1 < 0) || (paramInt2 < 0))
      throw new IllegalArgumentException("Negative size is not allowed. Input: " + paramInt1 + 'x' + paramInt2);
    int i = a();
    if (paramMap != null)
    {
      parama = (Integer)paramMap.get(f.f);
      if (parama != null)
        i = parama.intValue();
    }
    while (true)
      return a(a(paramString), paramInt1, paramInt2, i);
  }

  public abstract boolean[] a(String paramString);
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.google.zxing.e.r
 * JD-Core Version:    0.6.2
 */