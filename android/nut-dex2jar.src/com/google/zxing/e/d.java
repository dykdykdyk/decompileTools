package com.google.zxing.e;

import com.google.zxing.WriterException;
import com.google.zxing.a;
import com.google.zxing.common.b;
import com.google.zxing.f;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;

public final class d extends r
{
  private static boolean a(CharSequence paramCharSequence, int paramInt1, int paramInt2)
  {
    paramInt2 = paramInt1 + paramInt2;
    int j = paramCharSequence.length();
    while ((paramInt1 < paramInt2) && (paramInt1 < j))
    {
      int k = paramCharSequence.charAt(paramInt1);
      int i;
      if (k >= 48)
      {
        i = paramInt2;
        if (k <= 57);
      }
      else
      {
        if (k != 241)
          return false;
        i = paramInt2 + 1;
      }
      paramInt1 += 1;
      paramInt2 = i;
    }
    return paramInt2 <= j;
  }

  public final b a(String paramString, a parama, int paramInt1, int paramInt2, Map<f, ?> paramMap)
    throws WriterException
  {
    if (parama != a.e)
      throw new IllegalArgumentException("Can only encode CODE_128, but got " + parama);
    return super.a(paramString, parama, paramInt1, paramInt2, paramMap);
  }

  public final boolean[] a(String paramString)
  {
    int i3 = 0;
    int i4 = paramString.length();
    if ((i4 <= 0) || (i4 > 80))
      throw new IllegalArgumentException("Contents length should be between 1 and 80 characters, but got " + i4);
    int i = 0;
    while (i < i4)
    {
      char c = paramString.charAt(i);
      if ((c < ' ') || (c > '~'))
        switch (c)
        {
        default:
          throw new IllegalArgumentException("Bad character in input: " + c);
        case 'ñ':
        case 'ò':
        case 'ó':
        case 'ô':
        }
      i += 1;
    }
    Object localObject = new ArrayList();
    int k = 0;
    int m = 0;
    i = 1;
    int n = 0;
    int i1 = i;
    label174: int j;
    if (k < i4)
      if (m == 99)
      {
        i = 2;
        if (!a(paramString, k, i))
          break label319;
        j = 99;
        label188: if (j != m)
          break label373;
        switch (paramString.charAt(k))
        {
        default:
          if (m == 100)
          {
            i = paramString.charAt(k) - ' ';
            label249: k += 1;
            j = m;
            m = k;
            label263: ((Collection)localObject).add(c.a[i]);
            if (m == 0)
              break label566;
          }
          break;
        case 'ñ':
        case 'ò':
        case 'ó':
        case 'ô':
        }
      }
    label566: for (k = i1 + 1; ; k = i1)
    {
      int i2 = k;
      n += i * i1;
      k = m;
      m = j;
      i = i2;
      break;
      i = 4;
      break label174;
      label319: j = 100;
      break label188;
      i = 102;
      break label249;
      i = 97;
      break label249;
      i = 96;
      break label249;
      i = 100;
      break label249;
      i = Integer.parseInt(paramString.substring(k, k + 2));
      k += 1;
      break label249;
      label373: if (m == 0)
      {
        if (j == 100)
        {
          i = 104;
          m = k;
          break label263;
        }
        i = 105;
        m = k;
        break label263;
      }
      i = j;
      m = k;
      break label263;
      ((Collection)localObject).add(c.a[(n % 103)]);
      ((Collection)localObject).add(c.a[106]);
      paramString = ((Collection)localObject).iterator();
      i = 0;
      if (paramString.hasNext())
      {
        int[] arrayOfInt = (int[])paramString.next();
        m = arrayOfInt.length;
        k = 0;
        j = i;
        while (true)
        {
          i = j;
          if (k >= m)
            break;
          j += arrayOfInt[k];
          k += 1;
        }
      }
      paramString = new boolean[i];
      localObject = ((Collection)localObject).iterator();
      i = i3;
      while (((Iterator)localObject).hasNext())
        i += a(paramString, i, (int[])((Iterator)localObject).next(), true);
      return paramString;
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.google.zxing.e.d
 * JD-Core Version:    0.6.2
 */