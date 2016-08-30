package com.google.zxing.common;

import com.google.zxing.FormatException;
import java.util.HashMap;
import java.util.Map;

public enum d
{
  private static final Map<Integer, d> C;
  private static final Map<String, d> D;
  public final int[] B;
  private final String[] E;

  static
  {
    A = new d("EUC_KR", 26, 30, new String[] { "EUC-KR" });
    F = new d[] { a, b, c, d, e, f, g, h, i, j, k, l, m, n, o, p, q, r, s, t, u, v, w, x, y, z, A };
    C = new HashMap();
    D = new HashMap();
    d[] arrayOfd = values();
    int i3 = arrayOfd.length;
    int i1 = 0;
    while (i1 < i3)
    {
      d locald = arrayOfd[i1];
      Object localObject1 = locald.B;
      int i4 = localObject1.length;
      int i2 = 0;
      while (i2 < i4)
      {
        int i5 = localObject1[i2];
        C.put(Integer.valueOf(i5), locald);
        i2 += 1;
      }
      D.put(locald.name(), locald);
      localObject1 = locald.E;
      i4 = localObject1.length;
      i2 = 0;
      while (i2 < i4)
      {
        Object localObject2 = localObject1[i2];
        D.put(localObject2, locald);
        i2 += 1;
      }
      i1 += 1;
    }
  }

  private d(int paramInt)
  {
    this(new int[] { 28 }, new String[0]);
  }

  private d(int paramInt, String[] paramArrayOfString)
  {
    this.B = new int[] { paramInt };
    this.E = paramArrayOfString;
  }

  private d(int[] paramArrayOfInt, String[] paramArrayOfString)
  {
    this.B = paramArrayOfInt;
    this.E = paramArrayOfString;
  }

  public static d a(int paramInt)
    throws FormatException
  {
    if ((paramInt < 0) || (paramInt >= 900))
      throw FormatException.a();
    return (d)C.get(Integer.valueOf(paramInt));
  }

  public static d a(String paramString)
  {
    return (d)D.get(paramString);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.google.zxing.common.d
 * JD-Core Version:    0.6.2
 */