package com.google.zxing.f;

import com.google.zxing.WriterException;
import com.google.zxing.common.b;
import com.google.zxing.f;
import com.google.zxing.f.c.c;
import com.google.zxing.f.c.e;
import com.google.zxing.q;
import java.lang.reflect.Array;
import java.nio.charset.Charset;
import java.util.Map;

public final class d
  implements q
{
  private static b a(byte[][] paramArrayOfByte, int paramInt)
  {
    b localb = new b(paramArrayOfByte[0].length + paramInt * 2, paramArrayOfByte.length + paramInt * 2);
    localb.a();
    int i = localb.b - paramInt - 1;
    int j = 0;
    while (j < paramArrayOfByte.length)
    {
      int k = 0;
      while (k < paramArrayOfByte[0].length)
      {
        if (paramArrayOfByte[j][k] == 1)
          localb.b(k + paramInt, i);
        k += 1;
      }
      j += 1;
      i -= 1;
    }
    return localb;
  }

  private static byte[][] a(byte[][] paramArrayOfByte)
  {
    int i = paramArrayOfByte[0].length;
    int j = paramArrayOfByte.length;
    byte[][] arrayOfByte = (byte[][])Array.newInstance(Byte.TYPE, new int[] { i, j });
    i = 0;
    while (i < paramArrayOfByte.length)
    {
      int k = paramArrayOfByte.length;
      j = 0;
      while (j < paramArrayOfByte[0].length)
      {
        arrayOfByte[j][(k - i - 1)] = paramArrayOfByte[i][j];
        j += 1;
      }
      i += 1;
    }
    return arrayOfByte;
  }

  public final b a(String paramString, com.google.zxing.a parama, int paramInt1, int paramInt2, Map<f, ?> paramMap)
    throws WriterException
  {
    if (parama != com.google.zxing.a.k)
      throw new IllegalArgumentException("Can only encode PDF_417, but got " + parama);
    parama = new e();
    int i = 30;
    int j = 2;
    int k = i;
    int m = j;
    if (paramMap != null)
    {
      if (paramMap.containsKey(f.g))
        parama.b = ((Boolean)paramMap.get(f.g)).booleanValue();
      if (paramMap.containsKey(f.h))
        parama.c = ((c)paramMap.get(f.h));
      if (paramMap.containsKey(f.i))
      {
        com.google.zxing.f.c.d locald = (com.google.zxing.f.c.d)paramMap.get(f.i);
        k = locald.b;
        m = locald.a;
        int n = locald.d;
        int i1 = locald.c;
        parama.f = k;
        parama.e = m;
        parama.g = n;
        parama.h = i1;
      }
      if (paramMap.containsKey(f.f))
        i = ((Number)paramMap.get(f.f)).intValue();
      if (paramMap.containsKey(f.a))
        j = ((Number)paramMap.get(f.a)).intValue();
      k = i;
      m = j;
      if (paramMap.containsKey(f.b))
      {
        parama.d = Charset.forName((String)paramMap.get(f.b));
        m = j;
        k = i;
      }
    }
    parama.a(paramString, m);
    paramString = parama.a.a(1, 4);
    if (paramInt2 > paramInt1)
    {
      i = 1;
      if (paramString[0].length >= paramString.length)
        break label430;
      j = 1;
      label351: if ((i ^ j) == 0)
        break label449;
      paramString = a(paramString);
    }
    label430: label443: label449: for (i = 1; ; i = 0)
    {
      paramInt1 /= paramString[0].length;
      paramInt2 /= paramString.length;
      if (paramInt1 >= paramInt2)
        paramInt1 = paramInt2;
      while (true)
      {
        if (paramInt1 > 1)
        {
          paramString = parama.a.a(paramInt1, paramInt1 * 4);
          if (i == 0)
            break label443;
          paramString = a(paramString);
        }
        while (true)
        {
          return a(paramString, k);
          i = 0;
          break;
          j = 0;
          break label351;
          return a(paramString, k);
        }
      }
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.google.zxing.f.d
 * JD-Core Version:    0.6.2
 */