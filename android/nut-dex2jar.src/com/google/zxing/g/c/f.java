package com.google.zxing.g.c;

import com.google.zxing.WriterException;
import com.google.zxing.common.a;
import com.google.zxing.g.a.n;
import com.google.zxing.g.a.r;

final class f
{
  private static final int[][] a;
  private static final int[][] b;
  private static final int[][] c;
  private static final int[][] d = { arrayOfInt1, arrayOfInt2, arrayOfInt3, { 8, 3 }, arrayOfInt4, arrayOfInt5, { 8, 7 }, arrayOfInt6, arrayOfInt7, arrayOfInt8, arrayOfInt9, arrayOfInt10, arrayOfInt11, arrayOfInt12, arrayOfInt13 };

  static
  {
    int[] arrayOfInt1 = { 1, 1, 1, 1, 1, 1, 1 };
    int[] arrayOfInt2 = { 1, 0, 1, 1, 1, 0, 1 };
    int[] arrayOfInt3 = { 1, 0, 1, 1, 1, 0, 1 };
    int[] arrayOfInt4 = { 1, 0, 0, 0, 0, 0, 1 };
    a = new int[][] { arrayOfInt1, { 1, 0, 0, 0, 0, 0, 1 }, arrayOfInt2, arrayOfInt3, { 1, 0, 1, 1, 1, 0, 1 }, arrayOfInt4, { 1, 1, 1, 1, 1, 1, 1 } };
    b = new int[][] { { 1, 1, 1, 1, 1 }, { 1, 0, 0, 0, 1 }, { 1, 0, 1, 0, 1 }, { 1, 0, 0, 0, 1 }, { 1, 1, 1, 1, 1 } };
    arrayOfInt1 = new int[] { -1, -1, -1, -1, -1, -1, -1 };
    arrayOfInt2 = new int[] { 6, 18, -1, -1, -1, -1, -1 };
    arrayOfInt3 = new int[] { 6, 26, -1, -1, -1, -1, -1 };
    arrayOfInt4 = new int[] { 6, 34, -1, -1, -1, -1, -1 };
    int[] arrayOfInt5 = { 6, 22, 38, -1, -1, -1, -1 };
    int[] arrayOfInt6 = { 6, 26, 46, -1, -1, -1, -1 };
    int[] arrayOfInt7 = { 6, 28, 50, -1, -1, -1, -1 };
    int[] arrayOfInt8 = { 6, 30, 54, -1, -1, -1, -1 };
    int[] arrayOfInt9 = { 6, 32, 58, -1, -1, -1, -1 };
    int[] arrayOfInt10 = { 6, 34, 62, -1, -1, -1, -1 };
    int[] arrayOfInt11 = { 6, 26, 46, 66, -1, -1, -1 };
    int[] arrayOfInt12 = { 6, 26, 48, 70, -1, -1, -1 };
    int[] arrayOfInt13 = { 6, 26, 50, 74, -1, -1, -1 };
    int[] arrayOfInt14 = { 6, 30, 54, 78, -1, -1, -1 };
    int[] arrayOfInt15 = { 6, 30, 58, 86, -1, -1, -1 };
    int[] arrayOfInt16 = { 6, 34, 62, 90, -1, -1, -1 };
    int[] arrayOfInt17 = { 6, 28, 50, 72, 94, -1, -1 };
    int[] arrayOfInt18 = { 6, 26, 50, 74, 98, -1, -1 };
    int[] arrayOfInt19 = { 6, 30, 54, 78, 102, -1, -1 };
    int[] arrayOfInt20 = { 6, 32, 58, 84, 110, -1, -1 };
    int[] arrayOfInt21 = { 6, 30, 58, 86, 114, -1, -1 };
    int[] arrayOfInt22 = { 6, 34, 62, 90, 118, -1, -1 };
    int[] arrayOfInt23 = { 6, 26, 50, 74, 98, 122, -1 };
    int[] arrayOfInt24 = { 6, 30, 54, 78, 102, 126, -1 };
    int[] arrayOfInt25 = { 6, 30, 56, 82, 108, 134, -1 };
    int[] arrayOfInt26 = { 6, 34, 60, 86, 112, 138, -1 };
    int[] arrayOfInt27 = { 6, 30, 58, 86, 114, 142, -1 };
    int[] arrayOfInt28 = { 6, 34, 62, 90, 118, 146, -1 };
    int[] arrayOfInt29 = { 6, 30, 54, 78, 102, 126, 150 };
    int[] arrayOfInt30 = { 6, 24, 50, 76, 102, 128, 154 };
    int[] arrayOfInt31 = { 6, 28, 54, 80, 106, 132, 158 };
    int[] arrayOfInt32 = { 6, 26, 54, 82, 110, 138, 166 };
    int[] arrayOfInt33 = { 6, 30, 58, 86, 114, 142, 170 };
    c = new int[][] { arrayOfInt1, arrayOfInt2, { 6, 22, -1, -1, -1, -1, -1 }, arrayOfInt3, { 6, 30, -1, -1, -1, -1, -1 }, arrayOfInt4, arrayOfInt5, { 6, 24, 42, -1, -1, -1, -1 }, arrayOfInt6, arrayOfInt7, arrayOfInt8, arrayOfInt9, arrayOfInt10, arrayOfInt11, arrayOfInt12, arrayOfInt13, arrayOfInt14, { 6, 30, 56, 82, -1, -1, -1 }, arrayOfInt15, arrayOfInt16, arrayOfInt17, arrayOfInt18, arrayOfInt19, { 6, 28, 54, 80, 106, -1, -1 }, arrayOfInt20, arrayOfInt21, arrayOfInt22, arrayOfInt23, arrayOfInt24, { 6, 26, 52, 78, 104, 130, -1 }, arrayOfInt25, arrayOfInt26, arrayOfInt27, arrayOfInt28, arrayOfInt29, arrayOfInt30, arrayOfInt31, { 6, 32, 58, 84, 110, 136, 162 }, arrayOfInt32, arrayOfInt33 };
    arrayOfInt1 = new int[] { 8, 0 };
    arrayOfInt2 = new int[] { 8, 1 };
    arrayOfInt3 = new int[] { 8, 2 };
    arrayOfInt4 = new int[] { 8, 4 };
    arrayOfInt5 = new int[] { 8, 5 };
    arrayOfInt6 = new int[] { 8, 8 };
    arrayOfInt7 = new int[] { 7, 8 };
    arrayOfInt8 = new int[] { 5, 8 };
    arrayOfInt9 = new int[] { 4, 8 };
    arrayOfInt10 = new int[] { 3, 8 };
    arrayOfInt11 = new int[] { 2, 8 };
    arrayOfInt12 = new int[] { 1, 8 };
    arrayOfInt13 = new int[] { 0, 8 };
  }

  private static int a(int paramInt)
  {
    int j = 0;
    int i = paramInt;
    paramInt = j;
    while (i != 0)
    {
      i >>>= 1;
      paramInt += 1;
    }
    return paramInt;
  }

  private static int a(int paramInt1, int paramInt2)
  {
    if (paramInt2 == 0)
      throw new IllegalArgumentException("0 polynomial");
    int i = a(paramInt2);
    paramInt1 <<= i - 1;
    while (a(paramInt1) >= i)
      paramInt1 ^= paramInt2 << a(paramInt1) - i;
    return paramInt1;
  }

  private static void a(int paramInt1, int paramInt2, b paramb)
    throws WriterException
  {
    int i = 0;
    while (i < 8)
    {
      if (!b(paramb.a(paramInt1 + i, paramInt2)))
        throw new WriterException();
      paramb.a(paramInt1 + i, paramInt2, 0);
      i += 1;
    }
  }

  private static void a(a parama, int paramInt, b paramb)
    throws WriterException
  {
    int k = paramb.b - 1;
    int j = paramb.c - 1;
    int m = -1;
    int i = 0;
    int n;
    if (k > 0)
    {
      if (k != 6)
        break label439;
      n = k - 1;
    }
    while (true)
      if ((j >= 0) && (j < paramb.c))
      {
        int i1 = 0;
        if (i1 < 2)
        {
          int i2 = n - i1;
          k = i;
          if (b(paramb.a(i2, j)))
          {
            boolean bool1;
            if (i < parama.b)
              bool1 = parama.a(i);
            for (k = i + 1; ; k = i)
            {
              bool2 = bool1;
              if (paramInt == -1)
                break;
              switch (paramInt)
              {
              default:
                throw new IllegalArgumentException("Invalid mask pattern: " + paramInt);
                bool1 = false;
              case 0:
              case 1:
              case 2:
              case 3:
              case 4:
              case 5:
              case 6:
              case 7:
              }
            }
            i = j + i2 & 0x1;
            label205: if (i != 0)
              break label348;
            i = 1;
            label211: bool2 = bool1;
            if (i != 0)
              if (bool1)
                break label353;
          }
          label348: label353: for (boolean bool2 = true; ; bool2 = false)
          {
            paramb.a(i2, j, bool2);
            i1 += 1;
            i = k;
            break;
            i = j & 0x1;
            break label205;
            i = i2 % 3;
            break label205;
            i = (j + i2) % 3;
            break label205;
            i = j / 2 + i2 / 3 & 0x1;
            break label205;
            i = j * i2;
            i = i % 3 + (i & 0x1);
            break label205;
            i = j * i2;
            i = i % 3 + (i & 0x1) & 0x1;
            break label205;
            i = j * i2 % 3 + (j + i2 & 0x1) & 0x1;
            break label205;
            i = 0;
            break label211;
          }
        }
        j += m;
      }
      else
      {
        k = -m;
        m = k;
        j += k;
        k = n - 2;
        break;
        if (i != parama.b)
          throw new WriterException("Not all bits consumed: " + i + '/' + parama.b);
        return;
        label439: n = k;
      }
  }

  static void a(a parama, n paramn, r paramr, int paramInt, b paramb)
    throws WriterException
  {
    int i = 0;
    int j;
    while (i < paramb.c)
    {
      j = 0;
      while (j < paramb.b)
      {
        paramb.a[i][j] = -1;
        j += 1;
      }
      i += 1;
    }
    i = a[0].length;
    c(0, 0, paramb);
    c(paramb.b - i, 0, paramb);
    c(0, paramb.b - i, paramb);
    a(0, 7, paramb);
    a(paramb.b - 8, 7, paramb);
    a(0, paramb.b - 8, paramb);
    b(7, 0, paramb);
    b(paramb.c - 7 - 1, 0, paramb);
    b(7, paramb.c - 7, paramb);
    if (paramb.a(8, paramb.c - 8) == 0)
      throw new WriterException();
    paramb.a(8, paramb.c - 8, 1);
    if (paramr.a >= 2)
    {
      i = paramr.a - 1;
      localObject = c[i];
      int n = c[i].length;
      i = 0;
      while (i < n)
      {
        j = 0;
        while (j < n)
        {
          int i1 = localObject[i];
          int i2 = localObject[j];
          if ((i2 != -1) && (i1 != -1) && (b(paramb.a(i2, i1))))
          {
            int k = 0;
            while (k < 5)
            {
              int m = 0;
              while (m < 5)
              {
                paramb.a(i2 - 2 + m, i1 - 2 + k, b[k][m]);
                m += 1;
              }
              k += 1;
            }
          }
          j += 1;
        }
        i += 1;
      }
    }
    i = 8;
    while (i < paramb.b - 8)
    {
      j = (i + 1) % 2;
      if (b(paramb.a(i, 6)))
        paramb.a(i, 6, j);
      if (b(paramb.a(6, i)))
        paramb.a(6, i, j);
      i += 1;
    }
    Object localObject = new a();
    if ((paramInt >= 0) && (paramInt < 8));
    for (i = 1; i == 0; i = 0)
      throw new WriterException("Invalid mask pattern");
    i = paramn.e << 3 | paramInt;
    ((a)localObject).b(i, 5);
    ((a)localObject).b(a(i, 1335), 10);
    paramn = new a();
    paramn.b(21522, 15);
    if (((a)localObject).a.length != paramn.a.length)
      throw new IllegalArgumentException("Sizes don't match");
    i = 0;
    while (i < ((a)localObject).a.length)
    {
      int[] arrayOfInt = ((a)localObject).a;
      arrayOfInt[i] ^= paramn.a[i];
      i += 1;
    }
    if (((a)localObject).b != 15)
      throw new WriterException("should not happen but we got: " + ((a)localObject).b);
    i = 0;
    if (i < ((a)localObject).b)
    {
      boolean bool = ((a)localObject).a(((a)localObject).b - 1 - i);
      paramb.a(d[i][0], d[i][1], bool);
      if (i < 8)
        paramb.a(paramb.b - i - 1, 8, bool);
      while (true)
      {
        i += 1;
        break;
        paramb.a(8, paramb.c - 7 + (i - 8), bool);
      }
    }
    a(paramr, paramb);
    a(parama, paramInt, paramb);
  }

  private static void a(r paramr, b paramb)
    throws WriterException
  {
    if (paramr.a < 7);
    while (true)
    {
      return;
      a locala = new a();
      locala.b(paramr.a, 6);
      locala.b(a(paramr.a, 7973), 12);
      if (locala.b != 18)
        throw new WriterException("should not happen but we got: " + locala.b);
      int i = 17;
      int j = 0;
      while (j < 6)
      {
        int k = 0;
        while (k < 3)
        {
          boolean bool = locala.a(i);
          i -= 1;
          paramb.a(j, paramb.c - 11 + k, bool);
          paramb.a(paramb.c - 11 + k, j, bool);
          k += 1;
        }
        j += 1;
      }
    }
  }

  private static void b(int paramInt1, int paramInt2, b paramb)
    throws WriterException
  {
    int i = 0;
    while (i < 7)
    {
      if (!b(paramb.a(paramInt1, paramInt2 + i)))
        throw new WriterException();
      paramb.a(paramInt1, paramInt2 + i, 0);
      i += 1;
    }
  }

  private static boolean b(int paramInt)
  {
    return paramInt == -1;
  }

  private static void c(int paramInt1, int paramInt2, b paramb)
  {
    int i = 0;
    while (i < 7)
    {
      int j = 0;
      while (j < 7)
      {
        paramb.a(paramInt1 + j, paramInt2 + i, a[i][j]);
        j += 1;
      }
      i += 1;
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.google.zxing.g.c.f
 * JD-Core Version:    0.6.2
 */