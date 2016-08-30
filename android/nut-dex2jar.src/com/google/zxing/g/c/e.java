package com.google.zxing.g.c;

final class e
{
  static int a(b paramb, boolean paramBoolean)
  {
    int m;
    int n;
    label20: int i1;
    if (paramBoolean)
    {
      m = paramb.c;
      if (!paramBoolean)
        break label99;
      n = paramb.b;
      paramb = paramb.a;
      i1 = 0;
    }
    int j;
    for (int i = 0; ; i = j)
    {
      if (i1 >= m)
        break label180;
      j = -1;
      int i2 = 0;
      int i3 = 0;
      label45: if (i2 < n)
      {
        if (paramBoolean)
        {
          k = paramb[i1][i2];
          label65: if (k != j)
            break label120;
        }
        for (int k = i3 + 1; ; k = i3)
        {
          i2 += 1;
          i3 = k;
          break label45;
          m = paramb.b;
          break;
          label99: n = paramb.c;
          break label20;
          k = paramb[i2][i1];
          break label65;
          label120: j = i;
          if (i3 >= 5)
            j = i + (i3 - 5 + 3);
          i3 = 1;
          i = j;
          j = k;
        }
      }
      j = i;
      if (i3 >= 5)
        j = i + (i3 - 5 + 3);
      i1 += 1;
    }
    label180: return i;
  }

  static boolean a(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    boolean bool2 = true;
    while (true)
    {
      boolean bool1 = bool2;
      if (paramInt1 < paramInt2)
      {
        if ((paramInt1 >= 0) && (paramInt1 < paramArrayOfByte.length) && (paramArrayOfByte[paramInt1] == 1))
          bool1 = false;
      }
      else
        return bool1;
      paramInt1 += 1;
    }
  }

  static boolean a(byte[][] paramArrayOfByte, int paramInt1, int paramInt2, int paramInt3)
  {
    boolean bool2 = true;
    while (true)
    {
      boolean bool1 = bool2;
      if (paramInt2 < paramInt3)
      {
        if ((paramInt2 >= 0) && (paramInt2 < paramArrayOfByte.length) && (paramArrayOfByte[paramInt2][paramInt1] == 1))
          bool1 = false;
      }
      else
        return bool1;
      paramInt2 += 1;
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.google.zxing.g.c.e
 * JD-Core Version:    0.6.2
 */