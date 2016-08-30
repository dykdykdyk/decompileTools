package com.google.zxing.e;

import com.google.zxing.FormatException;
import com.google.zxing.WriterException;
import com.google.zxing.a;
import com.google.zxing.common.b;
import com.google.zxing.f;
import java.util.Map;

public final class i extends y
{
  public final b a(String paramString, a parama, int paramInt1, int paramInt2, Map<f, ?> paramMap)
    throws WriterException
  {
    if (parama != a.h)
      throw new IllegalArgumentException("Can only encode EAN_13, but got " + parama);
    return super.a(paramString, parama, paramInt1, paramInt2, paramMap);
  }

  public final boolean[] a(String paramString)
  {
    if (paramString.length() != 13)
      throw new IllegalArgumentException("Requested contents should be 13 digits long, but got " + paramString.length());
    try
    {
      if (!x.a(paramString))
        throw new IllegalArgumentException("Contents do not pass checksum");
    }
    catch (FormatException paramString)
    {
      throw new IllegalArgumentException("Illegal contents");
    }
    int i = Integer.parseInt(paramString.substring(0, 1));
    int n = h.a[i];
    boolean[] arrayOfBoolean = new boolean[95];
    int j = a(arrayOfBoolean, 0, x.b, true);
    i = 1;
    j += 0;
    int k;
    while (i <= 6)
    {
      int m = Integer.parseInt(paramString.substring(i, i + 1));
      k = m;
      if ((n >> 6 - i & 0x1) == 1)
        k = m + 10;
      j += a(arrayOfBoolean, j, x.e[k], false);
      i += 1;
    }
    j += a(arrayOfBoolean, j, x.c, false);
    i = 7;
    while (i <= 12)
    {
      k = Integer.parseInt(paramString.substring(i, i + 1));
      j += a(arrayOfBoolean, j, x.d[k], true);
      i += 1;
    }
    a(arrayOfBoolean, j, x.b, true);
    return arrayOfBoolean;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.google.zxing.e.i
 * JD-Core Version:    0.6.2
 */