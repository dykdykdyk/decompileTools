package com.google.zxing.e;

import com.google.zxing.WriterException;
import com.google.zxing.a;
import com.google.zxing.common.b;
import com.google.zxing.f;
import java.util.Map;

public final class n extends r
{
  private static final int[] a = { 1, 1, 1, 1 };
  private static final int[] b = { 3, 1, 1 };

  public final b a(String paramString, a parama, int paramInt1, int paramInt2, Map<f, ?> paramMap)
    throws WriterException
  {
    if (parama != a.i)
      throw new IllegalArgumentException("Can only encode ITF, but got " + parama);
    return super.a(paramString, parama, paramInt1, paramInt2, paramMap);
  }

  public final boolean[] a(String paramString)
  {
    int m = paramString.length();
    if (m % 2 != 0)
      throw new IllegalArgumentException("The lenght of the input should be even");
    if (m > 80)
      throw new IllegalArgumentException("Requested contents should be less than 80 digits long, but got " + m);
    boolean[] arrayOfBoolean = new boolean[m * 9 + 9];
    int j = a(arrayOfBoolean, 0, a, true);
    int i = 0;
    while (i < m)
    {
      int n = Character.digit(paramString.charAt(i), 10);
      int i1 = Character.digit(paramString.charAt(i + 1), 10);
      int[] arrayOfInt = new int[18];
      int k = 0;
      while (k < 5)
      {
        arrayOfInt[(k * 2)] = m.a[n][k];
        arrayOfInt[(k * 2 + 1)] = m.a[i1][k];
        k += 1;
      }
      j += a(arrayOfBoolean, j, arrayOfInt, true);
      i += 2;
    }
    a(arrayOfBoolean, j, b, true);
    return arrayOfBoolean;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.google.zxing.e.n
 * JD-Core Version:    0.6.2
 */