package com.google.zxing.e;

import com.google.zxing.ChecksumException;
import com.google.zxing.FormatException;
import com.google.zxing.NotFoundException;
import com.google.zxing.ReaderException;
import com.google.zxing.d;
import com.google.zxing.m;
import com.google.zxing.n;
import com.google.zxing.o;
import com.google.zxing.p;
import java.util.Arrays;
import java.util.List;
import java.util.Map;

public abstract class x extends q
{
  static final int[] b = { 1, 1, 1 };
  static final int[] c = { 1, 1, 1, 1, 1 };
  static final int[][] d = { { 3, 2, 1, 1 }, { 2, 2, 2, 1 }, { 2, 1, 2, 2 }, { 1, 4, 1, 1 }, { 1, 1, 3, 2 }, { 1, 2, 3, 1 }, { 1, 1, 1, 4 }, { 1, 3, 1, 2 }, { 1, 2, 1, 3 }, { 3, 1, 1, 2 } };
  static final int[][] e = new int[20][];
  private final StringBuilder a = new StringBuilder(20);
  private final w f = new w();
  private final l g = new l();

  static
  {
    System.arraycopy(d, 0, e, 0, 10);
    int i = 10;
    while (i < 20)
    {
      int[] arrayOfInt1 = d[(i - 10)];
      int[] arrayOfInt2 = new int[arrayOfInt1.length];
      int j = 0;
      while (j < arrayOfInt1.length)
      {
        arrayOfInt2[j] = arrayOfInt1[(arrayOfInt1.length - j - 1)];
        j += 1;
      }
      e[i] = arrayOfInt2;
      i += 1;
    }
  }

  static int a(com.google.zxing.common.a parama, int[] paramArrayOfInt, int paramInt, int[][] paramArrayOfInt1)
    throws NotFoundException
  {
    a(parama, paramInt, paramArrayOfInt);
    float f1 = 0.48F;
    int i = -1;
    int j = paramArrayOfInt1.length;
    paramInt = 0;
    if (paramInt < j)
    {
      float f2 = a(paramArrayOfInt, paramArrayOfInt1[paramInt], 0.7F);
      if (f2 >= f1)
        break label70;
      i = paramInt;
      f1 = f2;
    }
    label70: 
    while (true)
    {
      paramInt += 1;
      break;
      if (i >= 0)
        return i;
      throw NotFoundException.a();
    }
  }

  static boolean a(CharSequence paramCharSequence)
    throws FormatException
  {
    int k = paramCharSequence.length();
    if (k == 0);
    int j;
    do
    {
      return false;
      int i = k - 2;
      j = 0;
      while (i >= 0)
      {
        int m = paramCharSequence.charAt(i) - '0';
        if ((m < 0) || (m > 9))
          throw FormatException.a();
        j += m;
        i -= 2;
      }
      j *= 3;
      i = k - 1;
      while (i >= 0)
      {
        k = paramCharSequence.charAt(i) - '0';
        if ((k < 0) || (k > 9))
          throw FormatException.a();
        j += k;
        i -= 2;
      }
    }
    while (j % 10 != 0);
    return true;
  }

  static int[] a(com.google.zxing.common.a parama)
    throws NotFoundException
  {
    int[] arrayOfInt2 = new int[b.length];
    int i = 0;
    Object localObject = null;
    boolean bool = false;
    while (!bool)
    {
      Arrays.fill(arrayOfInt2, 0, b.length, 0);
      int[] arrayOfInt1 = a(parama, i, false, b, arrayOfInt2);
      int k = arrayOfInt1[0];
      int j = arrayOfInt1[1];
      int m = k - (j - k);
      i = j;
      localObject = arrayOfInt1;
      if (m >= 0)
      {
        bool = parama.a(m, k);
        i = j;
        localObject = arrayOfInt1;
      }
    }
    return localObject;
  }

  static int[] a(com.google.zxing.common.a parama, int paramInt, boolean paramBoolean, int[] paramArrayOfInt)
    throws NotFoundException
  {
    return a(parama, paramInt, paramBoolean, paramArrayOfInt, new int[paramArrayOfInt.length]);
  }

  private static int[] a(com.google.zxing.common.a parama, int paramInt, boolean paramBoolean, int[] paramArrayOfInt1, int[] paramArrayOfInt2)
    throws NotFoundException
  {
    int m = paramArrayOfInt1.length;
    int n = parama.b;
    int i;
    int j;
    label26: int k;
    if (paramBoolean)
    {
      paramInt = parama.d(paramInt);
      i = 0;
      j = paramInt;
      if (j >= n)
        break label215;
      if (!(parama.a(j) ^ paramBoolean))
        break label88;
      paramArrayOfInt2[i] += 1;
      k = i;
      i = paramInt;
    }
    while (true)
    {
      j += 1;
      paramInt = i;
      i = k;
      break label26;
      paramInt = parama.c(paramInt);
      break;
      label88: if (i == m - 1)
      {
        if (a(paramArrayOfInt2, paramArrayOfInt1, 0.7F) < 0.48F)
          return new int[] { paramInt, j };
        k = paramInt + (paramArrayOfInt2[0] + paramArrayOfInt2[1]);
        System.arraycopy(paramArrayOfInt2, 2, paramArrayOfInt2, 0, m - 2);
        paramArrayOfInt2[(m - 2)] = 0;
        paramArrayOfInt2[(m - 1)] = 0;
        paramInt = i - 1;
        i = k;
      }
      while (true)
      {
        paramArrayOfInt2[paramInt] = 1;
        if (paramBoolean)
          break label207;
        paramBoolean = true;
        k = paramInt;
        break;
        k = i + 1;
        i = paramInt;
        paramInt = k;
      }
      label207: paramBoolean = false;
      k = paramInt;
    }
    label215: throw NotFoundException.a();
  }

  protected abstract int a(com.google.zxing.common.a parama, int[] paramArrayOfInt, StringBuilder paramStringBuilder)
    throws NotFoundException;

  public m a(int paramInt, com.google.zxing.common.a parama, Map<d, ?> paramMap)
    throws NotFoundException, ChecksumException, FormatException
  {
    return a(paramInt, parama, a(parama), paramMap);
  }

  public m a(int paramInt, com.google.zxing.common.a parama, int[] paramArrayOfInt, Map<d, ?> paramMap)
    throws NotFoundException, ChecksumException, FormatException
  {
    if (paramMap == null);
    int i;
    Object localObject3;
    int j;
    for (Object localObject1 = null; ; localObject1 = (p)paramMap.get(d.j))
    {
      if (localObject1 != null)
        new o((paramArrayOfInt[0] + paramArrayOfInt[1]) / 2.0F, paramInt);
      localObject2 = this.a;
      ((StringBuilder)localObject2).setLength(0);
      i = a(parama, paramArrayOfInt, (StringBuilder)localObject2);
      if (localObject1 != null)
        new o(i, paramInt);
      localObject3 = a(parama, i);
      if (localObject1 != null)
        new o((localObject3[0] + localObject3[1]) / 2.0F, paramInt);
      i = localObject3[1];
      j = i - localObject3[0] + i;
      if ((j < parama.b) && (parama.a(i, j)))
        break;
      throw NotFoundException.a();
    }
    localObject1 = ((StringBuilder)localObject2).toString();
    if (((String)localObject1).length() < 8)
      throw FormatException.a();
    if (!a((String)localObject1))
      throw ChecksumException.a();
    float f1 = (paramArrayOfInt[1] + paramArrayOfInt[0]) / 2.0F;
    float f2 = (localObject3[1] + localObject3[0]) / 2.0F;
    Object localObject2 = b();
    paramArrayOfInt = new m((String)localObject1, null, new o[] { new o(f1, paramInt), new o(f2, paramInt) }, (com.google.zxing.a)localObject2);
    int k;
    try
    {
      parama = this.f.a(paramInt, parama, localObject3[1]);
      paramArrayOfInt.a(n.h, parama.a);
      paramArrayOfInt.a(parama.e);
      localObject3 = parama.c;
      o[] arrayOfo1 = paramArrayOfInt.c;
      if (arrayOfo1 == null);
      o[] arrayOfo2;
      for (paramArrayOfInt.c = ((o[])localObject3); ; paramArrayOfInt.c = arrayOfo2)
      {
        do
        {
          paramInt = parama.a.length();
          if (paramMap != null)
            break;
          parama = null;
          if (parama == null)
            break label489;
          k = 0;
          int m = parama.length;
          i = 0;
          j = k;
          if (i < m)
          {
            if (paramInt != parama[i])
              break label480;
            j = 1;
          }
          if (j != 0)
            break label489;
          throw NotFoundException.a();
        }
        while ((localObject3 == null) || (localObject3.length <= 0));
        arrayOfo2 = new o[arrayOfo1.length + localObject3.length];
        System.arraycopy(arrayOfo1, 0, arrayOfo2, 0, arrayOfo1.length);
        System.arraycopy(localObject3, 0, arrayOfo2, arrayOfo1.length, localObject3.length);
      }
    }
    catch (ReaderException parama)
    {
      while (true)
      {
        paramInt = 0;
        continue;
        parama = (int[])paramMap.get(d.k);
        continue;
        label480: i += 1;
      }
      label489: if (localObject2 == com.google.zxing.a.h)
        break label505;
    }
    if (localObject2 == com.google.zxing.a.o)
    {
      label505: parama = this.g;
      parama.a();
      j = Integer.parseInt(((String)localObject1).substring(0, 3));
      k = parama.a.size();
      paramInt = 0;
      if (paramInt >= k)
        break label631;
      paramMap = (int[])parama.a.get(paramInt);
      i = paramMap[0];
      if (j < i)
        break label631;
      if (paramMap.length != 1)
        break label615;
      label580: if (j > i)
        break label624;
    }
    label615: label624: label631: for (parama = (String)parama.b.get(paramInt); ; parama = null)
    {
      if (parama != null)
        paramArrayOfInt.a(n.g, parama);
      return paramArrayOfInt;
      i = paramMap[1];
      break label580;
      paramInt += 1;
      break;
    }
  }

  boolean a(String paramString)
    throws FormatException
  {
    return a(paramString);
  }

  int[] a(com.google.zxing.common.a parama, int paramInt)
    throws NotFoundException
  {
    return a(parama, paramInt, false, b);
  }

  abstract com.google.zxing.a b();
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.google.zxing.e.x
 * JD-Core Version:    0.6.2
 */