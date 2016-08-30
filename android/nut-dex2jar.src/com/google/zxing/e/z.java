package com.google.zxing.e;

import com.google.zxing.FormatException;
import com.google.zxing.NotFoundException;

public final class z extends x
{
  private static final int[] a = { 1, 1, 1, 1, 1, 1 };
  private static final int[][] f = { { 56, 52, 50, 49, 44, 38, 35, 42, 41, 37 }, arrayOfInt };
  private final int[] g = new int[4];

  static
  {
    int[] arrayOfInt = { 7, 11, 13, 14, 19, 25, 28, 21, 22, 26 };
  }

  public static String b(String paramString)
  {
    char[] arrayOfChar = new char[6];
    paramString.getChars(1, 7, arrayOfChar, 0);
    StringBuilder localStringBuilder = new StringBuilder(12);
    localStringBuilder.append(paramString.charAt(0));
    char c = arrayOfChar[5];
    switch (c)
    {
    default:
      localStringBuilder.append(arrayOfChar, 0, 5);
      localStringBuilder.append("0000");
      localStringBuilder.append(c);
    case '0':
    case '1':
    case '2':
    case '3':
    case '4':
    }
    while (true)
    {
      localStringBuilder.append(paramString.charAt(7));
      return localStringBuilder.toString();
      localStringBuilder.append(arrayOfChar, 0, 2);
      localStringBuilder.append(c);
      localStringBuilder.append("0000");
      localStringBuilder.append(arrayOfChar, 2, 3);
      continue;
      localStringBuilder.append(arrayOfChar, 0, 3);
      localStringBuilder.append("00000");
      localStringBuilder.append(arrayOfChar, 3, 2);
      continue;
      localStringBuilder.append(arrayOfChar, 0, 4);
      localStringBuilder.append("00000");
      localStringBuilder.append(arrayOfChar[4]);
    }
  }

  protected final int a(com.google.zxing.common.a parama, int[] paramArrayOfInt, StringBuilder paramStringBuilder)
    throws NotFoundException
  {
    int[] arrayOfInt = this.g;
    arrayOfInt[0] = 0;
    arrayOfInt[1] = 0;
    arrayOfInt[2] = 0;
    arrayOfInt[3] = 0;
    int n = parama.b;
    int i = paramArrayOfInt[1];
    int k = 0;
    int m;
    for (int j = 0; (k < 6) && (i < n); j = m)
    {
      int i1 = a(parama, arrayOfInt, i, e);
      paramStringBuilder.append((char)(i1 % 10 + 48));
      int i2 = arrayOfInt.length;
      m = 0;
      while (m < i2)
      {
        i += arrayOfInt[m];
        m += 1;
      }
      m = j;
      if (i1 >= 10)
        m = j | 1 << 5 - k;
      k += 1;
    }
    k = 0;
    while (k <= 1)
    {
      m = 0;
      while (m < 10)
      {
        if (j == f[k][m])
        {
          paramStringBuilder.insert(0, (char)(k + 48));
          paramStringBuilder.append((char)(m + 48));
          return i;
        }
        m += 1;
      }
      k += 1;
    }
    throw NotFoundException.a();
  }

  protected final boolean a(String paramString)
    throws FormatException
  {
    return super.a(b(paramString));
  }

  protected final int[] a(com.google.zxing.common.a parama, int paramInt)
    throws NotFoundException
  {
    return a(parama, paramInt, true, a);
  }

  final com.google.zxing.a b()
  {
    return com.google.zxing.a.p;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.google.zxing.e.z
 * JD-Core Version:    0.6.2
 */