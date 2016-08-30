package com.google.zxing.g.b;

import com.google.zxing.common.b;
import com.google.zxing.o;
import com.google.zxing.p;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public final class e
{
  public final b a;
  public final List<d> b;
  public boolean c;
  private final int[] d;
  private final p e;

  public e(b paramb, p paramp)
  {
    this.a = paramb;
    this.b = new ArrayList();
    this.d = new int[5];
    this.e = paramp;
  }

  private static float a(int[] paramArrayOfInt, int paramInt)
  {
    return paramInt - paramArrayOfInt[4] - paramArrayOfInt[3] - paramArrayOfInt[2] / 2.0F;
  }

  public static boolean a(int[] paramArrayOfInt)
  {
    int i = 0;
    int j = 0;
    int k;
    if (i < 5)
    {
      k = paramArrayOfInt[i];
      if (k != 0);
    }
    float f1;
    float f2;
    do
    {
      do
      {
        return false;
        j += k;
        i += 1;
        break;
      }
      while (j < 7);
      f1 = j / 7.0F;
      f2 = f1 / 2.0F;
    }
    while ((Math.abs(f1 - paramArrayOfInt[0]) >= f2) || (Math.abs(f1 - paramArrayOfInt[1]) >= f2) || (Math.abs(3.0F * f1 - paramArrayOfInt[2]) >= 3.0F * f2) || (Math.abs(f1 - paramArrayOfInt[3]) >= f2) || (Math.abs(f1 - paramArrayOfInt[4]) >= f2));
    return true;
  }

  private int[] b()
  {
    this.d[0] = 0;
    this.d[1] = 0;
    this.d[2] = 0;
    this.d[3] = 0;
    this.d[4] = 0;
    return this.d;
  }

  public final boolean a()
  {
    float f2 = 0.0F;
    int j = this.b.size();
    Iterator localIterator = this.b.iterator();
    float f1 = 0.0F;
    int i = 0;
    if (localIterator.hasNext())
    {
      d locald = (d)localIterator.next();
      if (locald.d < 2)
        break label147;
      f1 = locald.c + f1;
      i += 1;
    }
    label147: 
    while (true)
    {
      break;
      if (i < 3);
      do
      {
        return false;
        float f3 = f1 / j;
        localIterator = this.b.iterator();
        while (localIterator.hasNext())
          f2 += Math.abs(((d)localIterator.next()).c - f3);
      }
      while (f2 > 0.05F * f1);
      return true;
    }
  }

  public final boolean a(int[] paramArrayOfInt, int paramInt1, int paramInt2, boolean paramBoolean)
  {
    int j = paramArrayOfInt[0] + paramArrayOfInt[1] + paramArrayOfInt[2] + paramArrayOfInt[3] + paramArrayOfInt[4];
    float f2 = a(paramArrayOfInt, paramInt2);
    int k = (int)f2;
    int m = paramArrayOfInt[2];
    Object localObject = this.a;
    int n = ((b)localObject).b;
    int[] arrayOfInt = b();
    paramInt2 = paramInt1;
    while ((paramInt2 >= 0) && (((b)localObject).a(k, paramInt2)))
    {
      arrayOfInt[2] += 1;
      paramInt2 -= 1;
    }
    int i = paramInt2;
    float f1;
    if (paramInt2 < 0)
      f1 = (0.0F / 0.0F);
    float f3;
    while (!Float.isNaN(f1))
    {
      i = (int)f2;
      k = (int)f1;
      m = paramArrayOfInt[2];
      localObject = this.a;
      n = ((b)localObject).a;
      arrayOfInt = b();
      paramInt1 = i;
      while (true)
        if ((paramInt1 >= 0) && (((b)localObject).a(paramInt1, k)))
        {
          arrayOfInt[2] += 1;
          paramInt1 -= 1;
          continue;
          while ((i >= 0) && (!((b)localObject).a(k, i)) && (arrayOfInt[1] <= m))
          {
            arrayOfInt[1] += 1;
            i -= 1;
          }
          if ((i < 0) || (arrayOfInt[1] > m))
          {
            f1 = (0.0F / 0.0F);
            break;
          }
          while ((i >= 0) && (((b)localObject).a(k, i)) && (arrayOfInt[0] <= m))
          {
            arrayOfInt[0] += 1;
            i -= 1;
          }
          if (arrayOfInt[0] > m)
          {
            f1 = (0.0F / 0.0F);
            break;
          }
          paramInt1 += 1;
          while ((paramInt1 < n) && (((b)localObject).a(k, paramInt1)))
          {
            arrayOfInt[2] += 1;
            paramInt1 += 1;
          }
          paramInt2 = paramInt1;
          if (paramInt1 == n)
          {
            f1 = (0.0F / 0.0F);
            break;
          }
          while ((paramInt2 < n) && (!((b)localObject).a(k, paramInt2)) && (arrayOfInt[3] < m))
          {
            arrayOfInt[3] += 1;
            paramInt2 += 1;
          }
          if ((paramInt2 == n) || (arrayOfInt[3] >= m))
          {
            f1 = (0.0F / 0.0F);
            break;
          }
          while ((paramInt2 < n) && (((b)localObject).a(k, paramInt2)) && (arrayOfInt[4] < m))
          {
            arrayOfInt[4] += 1;
            paramInt2 += 1;
          }
          if (arrayOfInt[4] >= m)
          {
            f1 = (0.0F / 0.0F);
            break;
          }
          if (Math.abs(arrayOfInt[0] + arrayOfInt[1] + arrayOfInt[2] + arrayOfInt[3] + arrayOfInt[4] - j) * 5 >= j * 2)
          {
            f1 = (0.0F / 0.0F);
            break;
          }
          if (a(arrayOfInt))
          {
            f1 = a(arrayOfInt, paramInt2);
            break;
          }
          f1 = (0.0F / 0.0F);
          break;
        }
      paramInt2 = paramInt1;
      if (paramInt1 < 0)
        f2 = (0.0F / 0.0F);
      while (true)
        if (!Float.isNaN(f2))
          if (paramBoolean)
          {
            i = (int)f1;
            k = (int)f2;
            m = paramArrayOfInt[2];
            paramArrayOfInt = b();
            paramInt1 = 0;
            while (true)
              if ((i >= paramInt1) && (k >= paramInt1) && (this.a.a(k - paramInt1, i - paramInt1)))
              {
                paramArrayOfInt[2] += 1;
                paramInt1 += 1;
                continue;
                while ((paramInt2 >= 0) && (!((b)localObject).a(paramInt2, k)) && (arrayOfInt[1] <= m))
                {
                  arrayOfInt[1] += 1;
                  paramInt2 -= 1;
                }
                if ((paramInt2 < 0) || (arrayOfInt[1] > m))
                {
                  f2 = (0.0F / 0.0F);
                  break;
                }
                while ((paramInt2 >= 0) && (((b)localObject).a(paramInt2, k)) && (arrayOfInt[0] <= m))
                {
                  arrayOfInt[0] += 1;
                  paramInt2 -= 1;
                }
                if (arrayOfInt[0] > m)
                {
                  f2 = (0.0F / 0.0F);
                  break;
                }
                paramInt1 = i + 1;
                while ((paramInt1 < n) && (((b)localObject).a(paramInt1, k)))
                {
                  arrayOfInt[2] += 1;
                  paramInt1 += 1;
                }
                paramInt2 = paramInt1;
                if (paramInt1 == n)
                {
                  f2 = (0.0F / 0.0F);
                  break;
                }
                while ((paramInt2 < n) && (!((b)localObject).a(paramInt2, k)) && (arrayOfInt[3] < m))
                {
                  arrayOfInt[3] += 1;
                  paramInt2 += 1;
                }
                if ((paramInt2 == n) || (arrayOfInt[3] >= m))
                {
                  f2 = (0.0F / 0.0F);
                  break;
                }
                while ((paramInt2 < n) && (((b)localObject).a(paramInt2, k)) && (arrayOfInt[4] < m))
                {
                  arrayOfInt[4] += 1;
                  paramInt2 += 1;
                }
                if (arrayOfInt[4] >= m)
                {
                  f2 = (0.0F / 0.0F);
                  break;
                }
                if (Math.abs(arrayOfInt[0] + arrayOfInt[1] + arrayOfInt[2] + arrayOfInt[3] + arrayOfInt[4] - j) * 5 >= j)
                {
                  f2 = (0.0F / 0.0F);
                  break;
                }
                if (a(arrayOfInt))
                {
                  f2 = a(arrayOfInt, paramInt2);
                  break;
                }
                f2 = (0.0F / 0.0F);
                break;
              }
            if (i >= paramInt1)
            {
              paramInt2 = paramInt1;
              if (k >= paramInt1)
                break;
            }
            else
            {
              paramInt1 = 0;
              if (paramInt1 == 0)
                break label1716;
            }
          }
          else
          {
            f3 = j / 7.0F;
            paramInt2 = 0;
            label1041: if (paramInt2 >= this.b.size())
              break label1718;
            paramArrayOfInt = (d)this.b.get(paramInt2);
            if ((Math.abs(f1 - paramArrayOfInt.b) > f3) || (Math.abs(f2 - paramArrayOfInt.a) > f3))
              break label1704;
            float f4 = Math.abs(f3 - paramArrayOfInt.c);
            if ((f4 > 1.0F) && (f4 > paramArrayOfInt.c))
              break label1699;
            paramInt1 = 1;
            label1131: if (paramInt1 == 0)
              break label1709;
            localObject = this.b;
            paramInt1 = paramArrayOfInt.d + 1;
            f4 = (paramArrayOfInt.d * paramArrayOfInt.a + f2) / paramInt1;
            float f5 = (paramArrayOfInt.d * paramArrayOfInt.b + f1) / paramInt1;
            float f6 = paramArrayOfInt.d;
            ((List)localObject).set(paramInt2, new d(f4, f5, (paramArrayOfInt.c * f6 + f3) / paramInt1, paramInt1));
          }
    }
    label1699: label1704: label1709: label1716: label1718: for (paramInt1 = 1; ; paramInt1 = 0)
    {
      if (paramInt1 == 0)
      {
        paramArrayOfInt = new d(f2, f1, f3);
        this.b.add(paramArrayOfInt);
      }
      return true;
      while ((i >= paramInt2) && (k >= paramInt2) && (!this.a.a(k - paramInt2, i - paramInt2)) && (paramArrayOfInt[1] <= m))
      {
        paramArrayOfInt[1] += 1;
        paramInt2 += 1;
      }
      if ((i < paramInt2) || (k < paramInt2) || (paramArrayOfInt[1] > m))
      {
        paramInt1 = 0;
        break;
      }
      while ((i >= paramInt2) && (k >= paramInt2) && (this.a.a(k - paramInt2, i - paramInt2)) && (paramArrayOfInt[0] <= m))
      {
        paramArrayOfInt[0] += 1;
        paramInt2 += 1;
      }
      if (paramArrayOfInt[0] <= m)
      {
        n = this.a.b;
        int i1 = this.a.a;
        paramInt1 = 1;
        while ((i + paramInt1 < n) && (k + paramInt1 < i1) && (this.a.a(k + paramInt1, i + paramInt1)))
        {
          paramArrayOfInt[2] += 1;
          paramInt1 += 1;
        }
        if (i + paramInt1 < n)
        {
          paramInt2 = paramInt1;
          if (k + paramInt1 < i1);
        }
        else
        {
          paramInt1 = 0;
          break;
        }
        while ((i + paramInt2 < n) && (k + paramInt2 < i1) && (!this.a.a(k + paramInt2, i + paramInt2)) && (paramArrayOfInt[3] < m))
        {
          paramArrayOfInt[3] += 1;
          paramInt2 += 1;
        }
        if ((i + paramInt2 >= n) || (k + paramInt2 >= i1) || (paramArrayOfInt[3] >= m))
        {
          paramInt1 = 0;
          break;
        }
        while ((i + paramInt2 < n) && (k + paramInt2 < i1) && (this.a.a(k + paramInt2, i + paramInt2)) && (paramArrayOfInt[4] < m))
        {
          paramArrayOfInt[4] += 1;
          paramInt2 += 1;
        }
        if ((paramArrayOfInt[4] < m) && (Math.abs(paramArrayOfInt[0] + paramArrayOfInt[1] + paramArrayOfInt[2] + paramArrayOfInt[3] + paramArrayOfInt[4] - j) < j * 2) && (a(paramArrayOfInt)))
        {
          paramInt1 = 1;
          break;
        }
      }
      paramInt1 = 0;
      break;
      paramInt1 = 0;
      break label1131;
      paramInt1 = 0;
      break label1131;
      paramInt2 += 1;
      break label1041;
      return false;
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.google.zxing.g.b.e
 * JD-Core Version:    0.6.2
 */