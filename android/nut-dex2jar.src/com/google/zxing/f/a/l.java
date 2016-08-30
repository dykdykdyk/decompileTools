package com.google.zxing.f.a;

import com.google.zxing.ChecksumException;
import com.google.zxing.FormatException;
import com.google.zxing.NotFoundException;
import com.google.zxing.o;
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

public final class l
{
  private static final com.google.zxing.f.a.a.a a = new com.google.zxing.f.a.a.a();

  private static com.google.zxing.common.e a(int paramInt, int[] paramArrayOfInt1, int[] paramArrayOfInt2, int[] paramArrayOfInt3, int[][] paramArrayOfInt)
    throws FormatException, ChecksumException
  {
    int[] arrayOfInt = new int[paramArrayOfInt3.length];
    int i = 100;
    int j = i - 1;
    label79: int m;
    label104: label108: com.google.zxing.f.a.a.a locala;
    Object localObject1;
    Object localObject2;
    int k;
    label141: int n;
    if (i > 0)
    {
      i = 0;
      while (i < arrayOfInt.length)
      {
        paramArrayOfInt1[paramArrayOfInt3[i]] = paramArrayOfInt[i][arrayOfInt[i]];
        i += 1;
      }
      try
      {
        if (paramArrayOfInt1.length != 0)
          break label79;
        throw FormatException.a();
      }
      catch (ChecksumException localChecksumException)
      {
        if (arrayOfInt.length != 0)
          break label976;
      }
      throw ChecksumException.a();
      m = 1 << paramInt + 1;
      if ((paramArrayOfInt2 == null) || (paramArrayOfInt2.length <= m / 2 + 3))
        break label1073;
      throw ChecksumException.a();
      locala = a;
      localObject1 = new com.google.zxing.f.a.a.c(locala.a, paramArrayOfInt1);
      localObject2 = new int[m];
      k = 0;
      i = m;
      if (i <= 0)
        break label1098;
      n = ((com.google.zxing.f.a.a.c)localObject1).b(locala.a.b[i]);
      localObject2[(m - i)] = n;
      if (n == 0)
        break label1089;
      k = 1;
      break label1089;
    }
    while (true)
    {
      label185: if (paramArrayOfInt1.length < 4)
        throw FormatException.a();
      label976: 
      do
      {
        localObject1 = locala.a.e;
        int i1;
        if (paramArrayOfInt2 != null)
        {
          k = paramArrayOfInt2.length;
          i = 0;
          while (i < k)
          {
            n = paramArrayOfInt2[i];
            localObject3 = locala.a;
            i1 = paramArrayOfInt1.length;
            n = localObject3.b[(i1 - 1 - n)];
            localObject1 = ((com.google.zxing.f.a.a.c)localObject1).c(new com.google.zxing.f.a.a.c(locala.a, new int[] { locala.a.c(0, n), 1 }));
            i += 1;
          }
        }
        localObject2 = new com.google.zxing.f.a.a.c(locala.a, (int[])localObject2);
        Object localObject3 = locala.a.a(m, 1);
        if (((com.google.zxing.f.a.a.c)localObject3).b.length - 1 < ((com.google.zxing.f.a.a.c)localObject2).b.length - 1)
          localObject1 = localObject3;
        while (true)
        {
          Object localObject4 = locala.a.d;
          Object localObject5 = locala.a.e;
          localObject3 = localObject2;
          localObject2 = localObject5;
          while (((com.google.zxing.f.a.a.c)localObject1).b.length - 1 >= m / 2)
          {
            if (((com.google.zxing.f.a.a.c)localObject1).a())
              throw ChecksumException.a();
            localObject5 = locala.a.d;
            i = ((com.google.zxing.f.a.a.c)localObject1).a(((com.google.zxing.f.a.a.c)localObject1).b.length - 1);
            k = locala.a.a(i);
            if ((((com.google.zxing.f.a.a.c)localObject3).b.length - 1 >= ((com.google.zxing.f.a.a.c)localObject1).b.length - 1) && (!((com.google.zxing.f.a.a.c)localObject3).a()))
            {
              i = ((com.google.zxing.f.a.a.c)localObject3).b.length - 1 - (((com.google.zxing.f.a.a.c)localObject1).b.length - 1);
              n = locala.a.d(((com.google.zxing.f.a.a.c)localObject3).a(((com.google.zxing.f.a.a.c)localObject3).b.length - 1), k);
              com.google.zxing.f.a.a.c localc = ((com.google.zxing.f.a.a.c)localObject5).a(locala.a.a(i, n));
              if (i < 0)
                throw new IllegalArgumentException();
              if (n == 0);
              for (localObject5 = ((com.google.zxing.f.a.a.c)localObject1).a.d; ; localObject5 = new com.google.zxing.f.a.a.c(((com.google.zxing.f.a.a.c)localObject1).a, (int[])localObject5))
              {
                localObject3 = ((com.google.zxing.f.a.a.c)localObject3).b((com.google.zxing.f.a.a.c)localObject5);
                localObject5 = localc;
                break;
                i1 = ((com.google.zxing.f.a.a.c)localObject1).b.length;
                localObject5 = new int[i1 + i];
                i = 0;
                while (i < i1)
                {
                  localObject5[i] = ((com.google.zxing.f.a.a.c)localObject1).a.d(localObject1.b[i], n);
                  i += 1;
                }
              }
            }
            localObject5 = ((com.google.zxing.f.a.a.c)localObject5).c((com.google.zxing.f.a.a.c)localObject2).b((com.google.zxing.f.a.a.c)localObject4).b();
            localObject4 = localObject2;
            localObject2 = localObject5;
            localObject5 = localObject3;
            localObject3 = localObject1;
            localObject1 = localObject5;
          }
          i = ((com.google.zxing.f.a.a.c)localObject2).a(0);
          if (i == 0)
            throw ChecksumException.a();
          i = locala.a.a(i);
          localObject2 = ((com.google.zxing.f.a.a.c)localObject2).c(i);
          localObject3 = ((com.google.zxing.f.a.a.c)localObject1).c(i);
          localObject1 = new com.google.zxing.f.a.a.c[2];
          localObject1[0] = localObject2;
          localObject1[1] = localObject3;
          localObject2 = localObject1[0];
          localObject3 = localObject1[1];
          localObject1 = locala.a((com.google.zxing.f.a.a.c)localObject2);
          localObject2 = locala.a((com.google.zxing.f.a.a.c)localObject3, (com.google.zxing.f.a.a.c)localObject2, (int[])localObject1);
          i = 0;
          while (i < localObject1.length)
          {
            k = paramArrayOfInt1.length;
            localObject3 = locala.a;
            n = localObject1[i];
            if (n == 0)
              throw new IllegalArgumentException();
            k = k - 1 - localObject3.c[n];
            if (k < 0)
              throw ChecksumException.a();
            paramArrayOfInt1[k] = locala.a.c(paramArrayOfInt1[k], localObject2[i]);
            i += 1;
          }
          i = localObject1.length;
          break label185;
          k = paramArrayOfInt1[0];
          if (k > paramArrayOfInt1.length)
            throw FormatException.a();
          if (k == 0)
          {
            if (m < paramArrayOfInt1.length)
              paramArrayOfInt1[0] = (paramArrayOfInt1.length - m);
          }
          else
          {
            localObject1 = e.a(paramArrayOfInt1, String.valueOf(paramInt));
            ((com.google.zxing.common.e)localObject1).e = Integer.valueOf(i);
            ((com.google.zxing.common.e)localObject1).f = Integer.valueOf(paramArrayOfInt2.length);
            return localObject1;
          }
          throw FormatException.a();
          i = 0;
          while (true)
          {
            if (i >= arrayOfInt.length)
              break label1051;
            if (arrayOfInt[i] < paramArrayOfInt[i].length - 1)
            {
              arrayOfInt[i] += 1;
              i = j;
              break;
            }
            arrayOfInt[i] = 0;
            if (i == arrayOfInt.length - 1)
              throw ChecksumException.a();
            i += 1;
          }
          i = j;
          break;
          throw ChecksumException.a();
          localObject1 = localObject2;
          localObject2 = localObject3;
        }
        if (m < 0)
          break label104;
        if (m <= 512)
          break label108;
        break label104;
        i -= 1;
        break label141;
      }
      while (k != 0);
      label1051: label1073: label1089: label1098: i = 0;
    }
  }

  public static com.google.zxing.common.e a(com.google.zxing.common.b paramb, o paramo1, o paramo2, o paramo3, o paramo4, int paramInt1, int paramInt2)
    throws NotFoundException, FormatException, ChecksumException
  {
    c localc1 = new c(paramb, paramo1, paramo2, paramo3, paramo4);
    paramo2 = null;
    int i = 0;
    Object localObject1 = null;
    paramo4 = null;
    label68: Object localObject2;
    while (true)
      if (i < 2)
        if (paramo1 != null)
        {
          paramo4 = a(paramb, localc1, paramo1, true, paramInt1, paramInt2);
          if (paramo3 != null)
          {
            localObject1 = a(paramb, localc1, paramo3, false, paramInt1, paramInt2);
            if ((paramo4 == null) && (localObject1 == null))
            {
              paramo2 = null;
              if (paramo2 == null)
                throw NotFoundException.a();
            }
            else
            {
              if (paramo4 != null)
              {
                paramo2 = paramo4.a();
                if (paramo2 != null);
              }
              else if (localObject1 == null)
              {
                paramo2 = null;
              }
              while (true)
              {
                if (paramo2 != null)
                  break label192;
                paramo2 = null;
                break;
                paramo2 = ((j)localObject1).a();
                continue;
                if (localObject1 != null)
                {
                  localObject2 = ((j)localObject1).a();
                  if (localObject2 == null);
                }
                else if ((paramo2.a != ((a)localObject2).a) && (paramo2.b != ((a)localObject2).b) && (paramo2.e != ((a)localObject2).e))
                {
                  paramo2 = null;
                }
              }
              label192: localObject2 = a(paramo4);
              c localc2 = a((j)localObject1);
              if (localObject2 == null)
                localObject2 = localc2;
              while (true)
              {
                paramo2 = new h(paramo2, (c)localObject2);
                break;
                if (localc2 != null)
                  localObject2 = new c(((c)localObject2).a, ((c)localObject2).b, ((c)localObject2).c, localc2.d, localc2.e);
              }
            }
            if ((i == 0) && (paramo2.c != null) && ((paramo2.c.h < localc1.h) || (paramo2.c.i > localc1.i)))
            {
              localc1 = paramo2.c;
              i += 1;
              localObject2 = localObject1;
              localObject1 = paramo2;
              paramo2 = (o)localObject2;
              continue;
            }
            paramo2.c = localc1;
            paramo1 = paramo2;
          }
        }
    while (true)
    {
      int i4 = paramo1.d + 1;
      paramo1.b[0] = paramo4;
      paramo1.b[i4] = localObject1;
      boolean bool1;
      int m;
      if (paramo4 != null)
      {
        bool1 = true;
        i = 1;
        j = paramInt2;
        paramInt2 = i;
        m = paramInt1;
      }
      label413: int n;
      label451: label463: int k;
      int i1;
      label481: label507: int i2;
      while (true)
      {
        if (paramInt2 > i4)
          break label1010;
        boolean bool2;
        if (bool1)
        {
          i = paramInt2;
          paramInt1 = m;
          n = j;
          if (paramo1.b[i] != null)
            break label993;
          if ((i != 0) && (i != i4))
            break label710;
          if (i != 0)
            break label704;
          bool2 = true;
          paramo2 = new j(localc1, bool2);
          paramo1.b[i] = paramo2;
          k = -1;
          i1 = localc1.h;
          paramInt1 = m;
          n = j;
          if (i1 > localc1.i)
            break label993;
          if (!bool1)
            break label723;
          paramInt1 = 1;
          paramo3 = null;
          if (a(paramo1, i - paramInt1))
            paramo3 = paramo1.b[(i - paramInt1)].c(i1);
          if (paramo3 == null)
            break label738;
          if (!bool1)
            break label729;
          paramInt1 = paramo3.b;
        }
        while (true)
        {
          if (paramInt1 >= 0)
          {
            n = paramInt1;
            if (paramInt1 <= localc1.g);
          }
          else
          {
            i3 = m;
            i2 = j;
            paramInt1 = k;
            if (k == -1)
              break label667;
            n = k;
          }
          paramo3 = a(paramb, localc1.f, localc1.g, bool1, n, i1, m, j);
          int i3 = m;
          i2 = j;
          paramInt1 = k;
          if (paramo3 != null)
          {
            paramo2.a(i1, paramo3);
            i3 = Math.min(m, paramo3.c());
            i2 = Math.max(j, paramo3.c());
            paramInt1 = n;
          }
          label667: i1 += 1;
          m = i3;
          j = i2;
          k = paramInt1;
          break label481;
          bool1 = false;
          break;
          i = i4 - paramInt2;
          break label413;
          label704: bool2 = false;
          break label451;
          label710: paramo2 = new i(localc1);
          break label463;
          label723: paramInt1 = -1;
          break label507;
          label729: paramInt1 = paramo3.a;
          continue;
          label738: paramo3 = paramo1.b[i].a(i1);
          if (paramo3 != null)
          {
            if (bool1)
              paramInt1 = paramo3.a;
            else
              paramInt1 = paramo3.b;
          }
          else
          {
            if (a(paramo1, i - paramInt1))
              paramo3 = paramo1.b[(i - paramInt1)].a(i1);
            if (paramo3 != null)
            {
              if (bool1)
                paramInt1 = paramo3.b;
              else
                paramInt1 = paramo3.a;
            }
            else
            {
              n = 0;
              for (i2 = i; ; i2 = i3)
              {
                if (!a(paramo1, i2 - paramInt1))
                  break label964;
                i3 = i2 - paramInt1;
                paramo3 = paramo1.b[i3].b;
                int i5 = paramo3.length;
                i2 = 0;
                while (true)
                {
                  if (i2 >= i5)
                    break label951;
                  paramo4 = paramo3[i2];
                  if (paramo4 != null)
                  {
                    if (bool1);
                    for (i2 = paramo4.b; ; i2 = paramo4.a)
                    {
                      paramInt1 = i2 + n * paramInt1 * (paramo4.b - paramo4.a);
                      break;
                    }
                  }
                  i2 += 1;
                }
                label951: n += 1;
              }
              label964: if (bool1)
                paramInt1 = paramo1.c.f;
              else
                paramInt1 = paramo1.c.g;
            }
          }
        }
        label993: paramInt2 += 1;
        m = paramInt1;
        j = n;
      }
      label1010: paramo3 = (b[][])Array.newInstance(b.class, new int[] { paramo1.a.e, paramo1.d + 2 });
      paramInt1 = 0;
      while (paramInt1 < paramo3.length)
      {
        paramInt2 = 0;
        while (paramInt2 < paramo3[paramInt1].length)
        {
          paramo3[paramInt1][paramInt2] = new b();
          paramInt2 += 1;
        }
        paramInt1 += 1;
      }
      paramo1.a(paramo1.b[0]);
      paramo1.a(paramo1.b[(paramo1.d + 1)]);
      paramInt2 = 928;
      if ((paramo1.b[0] == null) || (paramo1.b[(paramo1.d + 1)] == null));
      while (paramo1.b[0] == null)
      {
        i = 0;
        if (paramo1.b[(paramo1.d + 1)] != null)
          break label1604;
        k = 0;
        m = i + k;
        if (m != 0)
          break label1781;
        paramInt1 = 0;
        label1193: if ((paramInt1 > 0) && (paramInt1 < paramInt2))
          break label2531;
        paramb = paramo1.b;
        j = paramb.length;
        paramInt1 = 0;
        paramInt2 = 0;
        label1220: if (paramInt1 >= j)
          break label2203;
        paramo2 = paramb[paramInt1];
        if (paramo2 == null)
          break label2188;
        paramo2 = paramo2.b;
        k = paramo2.length;
        i = 0;
        label1248: if (i >= k)
          break label2188;
        paramo4 = paramo2[i];
        if (paramo4 == null)
          break label2179;
        m = paramo4.e;
        if (m < 0)
          break label2179;
        if (m < paramo3.length)
          break label2164;
        throw FormatException.a();
        paramb = paramo1.b[0].b;
        paramo2 = paramo1.b[(paramo1.d + 1)].b;
        paramInt1 = 0;
        while (paramInt1 < paramb.length)
        {
          if ((paramb[paramInt1] != null) && (paramo2[paramInt1] != null) && (paramb[paramInt1].e == paramo2[paramInt1].e))
          {
            i = 1;
            while (i <= paramo1.d)
            {
              paramo4 = paramo1.b[i].b[paramInt1];
              if (paramo4 != null)
              {
                paramo4.e = paramb[paramInt1].e;
                if (!paramo4.a())
                  paramo1.b[i].b[paramInt1] = null;
              }
              i += 1;
            }
          }
          paramInt1 += 1;
        }
      }
      paramInt1 = 0;
      paramb = paramo1.b[0].b;
      int j = 0;
      while (true)
      {
        i = paramInt1;
        if (j >= paramb.length)
          break;
        i = paramInt1;
        if (paramb[j] != null)
        {
          i1 = paramb[j].e;
          m = 0;
          k = 1;
          while ((k < paramo1.d + 1) && (m < 2))
          {
            paramo2 = paramo1.b[k].b[j];
            n = paramInt1;
            i = m;
            if (paramo2 != null)
            {
              m = h.a(i1, m, paramo2);
              n = paramInt1;
              i = m;
              if (!paramo2.a())
              {
                n = paramInt1 + 1;
                i = m;
              }
            }
            k += 1;
            paramInt1 = n;
            m = i;
          }
          i = paramInt1;
        }
        j += 1;
        paramInt1 = i;
      }
      label1604: paramInt1 = 0;
      paramb = paramo1.b[(paramo1.d + 1)].b;
      j = 0;
      while (true)
      {
        k = paramInt1;
        if (j >= paramb.length)
          break;
        n = paramInt1;
        if (paramb[j] != null)
        {
          i2 = paramb[j].e;
          k = paramo1.d;
          m = 0;
          k += 1;
          while (true)
          {
            n = paramInt1;
            if (k <= 0)
              break;
            n = paramInt1;
            if (m >= 2)
              break;
            paramo2 = paramo1.b[k].b[j];
            i1 = paramInt1;
            n = m;
            if (paramo2 != null)
            {
              m = h.a(i2, m, paramo2);
              i1 = paramInt1;
              n = m;
              if (!paramo2.a())
              {
                i1 = paramInt1 + 1;
                n = m;
              }
            }
            k -= 1;
            paramInt1 = i1;
            m = n;
          }
        }
        j += 1;
        paramInt1 = n;
      }
      label1781: paramInt1 = 1;
      label1784: if (paramInt1 < paramo1.d + 1)
      {
        paramo4 = paramo1.b[paramInt1].b;
        i = 0;
        if (i < paramo4.length)
          if ((paramo4[i] != null) && (!paramo4[i].a()))
          {
            localObject1 = paramo4[i];
            paramo2 = paramo1.b[(paramInt1 - 1)].b;
            if (paramo1.b[(paramInt1 + 1)] == null)
              break label2538;
          }
      }
      label1810: label2139: label2531: label2538: for (paramb = paramo1.b[(paramInt1 + 1)].b; ; paramb = paramo2)
      {
        localObject2 = new d[14];
        localObject2[2] = paramo2[i];
        localObject2[3] = paramb[i];
        if (i > 0)
        {
          localObject2[0] = paramo4[(i - 1)];
          localObject2[4] = paramo2[(i - 1)];
          localObject2[5] = paramb[(i - 1)];
        }
        if (i > 1)
        {
          localObject2[8] = paramo4[(i - 2)];
          localObject2[10] = paramo2[(i - 2)];
          localObject2[11] = paramb[(i - 2)];
        }
        if (i < paramo4.length - 1)
        {
          localObject2[1] = paramo4[(i + 1)];
          localObject2[6] = paramo2[(i + 1)];
          localObject2[7] = paramb[(i + 1)];
        }
        if (i < paramo4.length - 2)
        {
          localObject2[9] = paramo4[(i + 2)];
          localObject2[12] = paramo2[(i + 2)];
          localObject2[13] = paramb[(i + 2)];
        }
        j = 0;
        if (j < 14)
        {
          paramb = localObject2[j];
          if ((paramb != null) && (paramb.a()) && (paramb.c == ((d)localObject1).c))
            ((d)localObject1).e = paramb.e;
          for (k = 1; ; k = 0)
          {
            if (k != 0)
              break label2139;
            j += 1;
            break;
          }
        }
        i += 1;
        break label1810;
        paramInt1 += 1;
        break label1784;
        paramInt1 = m;
        break label1193;
        label2164: paramo3[m][paramInt2].a(paramo4.d);
        i += 1;
        break label1248;
        paramInt2 += 1;
        paramInt1 += 1;
        break label1220;
        paramb = paramo3[0][1].a();
        paramInt1 = paramo1.d * paramo1.a.e - (2 << paramo1.a.b);
        if (paramb.length == 0)
        {
          if ((paramInt1 <= 0) || (paramInt1 > 928))
            throw NotFoundException.a();
          paramo3[0][1].a(paramInt1);
          paramb = new ArrayList();
          paramo2 = new int[paramo1.a.e * paramo1.d];
          paramo4 = new ArrayList();
          localObject1 = new ArrayList();
          paramInt1 = 0;
        }
        while (true)
        {
          if (paramInt1 >= paramo1.a.e)
            break label2463;
          paramInt2 = 0;
          if (paramInt2 < paramo1.d)
          {
            localObject2 = paramo3[paramInt1][(paramInt2 + 1)].a();
            i = paramo1.d * paramInt1 + paramInt2;
            if (localObject2.length == 0)
              paramb.add(Integer.valueOf(i));
            while (true)
            {
              paramInt2 += 1;
              break label2327;
              if (paramb[0] == paramInt1)
                break;
              paramo3[0][1].a(paramInt1);
              break;
              if (localObject2.length == 1)
              {
                paramo2[i] = localObject2[0];
              }
              else
              {
                ((List)localObject1).add(Integer.valueOf(i));
                paramo4.add(localObject2);
              }
            }
          }
          paramInt1 += 1;
        }
        paramo3 = new int[paramo4.size()][];
        paramInt1 = 0;
        while (paramInt1 < paramo3.length)
        {
          paramo3[paramInt1] = ((int[])paramo4.get(paramInt1));
          paramInt1 += 1;
        }
        return a(paramo1.a.b, paramo2, com.google.zxing.f.a.a(paramb), com.google.zxing.f.a.a((Collection)localObject1), paramo3);
        paramInt2 = paramInt1;
        break;
      }
      label2179: label2188: label2203: label2463: localObject1 = paramo2;
      label2327: break label68;
      break;
      paramo1 = (o)localObject1;
      localObject1 = paramo2;
    }
  }

  private static c a(j paramj)
    throws NotFoundException, FormatException
  {
    if (paramj == null)
      return null;
    Object localObject3 = paramj.a();
    if (localObject3 == null)
      localObject1 = null;
    label61: label99: int i1;
    while (localObject1 == null)
    {
      return null;
      localObject2 = paramj.a;
      int i2;
      if (paramj.c)
      {
        localObject1 = ((c)localObject2).b;
        if (!paramj.c)
          break label185;
        localObject2 = ((c)localObject2).c;
        k = paramj.b((int)((o)localObject1).b);
        int i3 = paramj.b((int)((o)localObject2).b);
        localObject1 = paramj.b;
        m = 1;
        n = -1;
        i2 = 0;
        if (k >= i3)
          break label266;
        i = i2;
        i1 = m;
        j = n;
        if (localObject1[k] != null)
        {
          localObject2 = localObject1[k];
          ((d)localObject2).b();
          i = ((d)localObject2).e - n;
          if (i != 0)
            break label195;
          i = i2 + 1;
          j = n;
          i1 = m;
        }
      }
      while (true)
      {
        k += 1;
        i2 = i;
        m = i1;
        n = j;
        break label99;
        localObject1 = ((c)localObject2).d;
        break;
        label185: localObject2 = ((c)localObject2).e;
        break label61;
        label195: if (i == 1)
        {
          i1 = Math.max(m, i2);
          j = ((d)localObject2).e;
          i = 1;
        }
        else if (((d)localObject2).e >= ((a)localObject3).e)
        {
          localObject1[k] = null;
          i = i2;
          i1 = m;
          j = n;
        }
        else
        {
          j = ((d)localObject2).e;
          i = 1;
          i1 = m;
        }
      }
      label266: localObject1 = new int[((a)localObject3).e];
      localObject2 = paramj.b;
      j = localObject2.length;
      i = 0;
      while (i < j)
      {
        localObject3 = localObject2[i];
        if (localObject3 != null)
        {
          k = ((d)localObject3).e;
          if (k >= localObject1.length)
            throw FormatException.a();
          localObject1[k] += 1;
        }
        i += 1;
      }
    }
    int j = localObject1.length;
    int i = 0;
    int k = -1;
    while (i < j)
    {
      k = Math.max(k, localObject1[i]);
      i += 1;
    }
    int n = localObject1.length;
    int m = 0;
    i = 0;
    while (true)
    {
      j = i;
      if (m >= n)
        break;
      i1 = localObject1[m];
      i += k - i1;
      j = i;
      if (i1 > 0)
        break;
      m += 1;
    }
    Object localObject2 = paramj.b;
    i = 0;
    m = j;
    while ((m > 0) && (localObject2[i] == null))
    {
      i += 1;
      m -= 1;
    }
    n = localObject1.length - 1;
    j = 0;
    while (true)
    {
      i = j;
      if (n < 0)
        break;
      j += k - localObject1[n];
      i = j;
      if (localObject1[n] > 0)
        break;
      n -= 1;
    }
    j = localObject2.length;
    j -= 1;
    while ((i > 0) && (localObject2[j] == null))
    {
      j -= 1;
      i -= 1;
    }
    c localc = paramj.a;
    boolean bool = paramj.c;
    paramj = localc.b;
    localObject2 = localc.c;
    Object localObject1 = localc.d;
    Object localObject4 = localc.e;
    if (m > 0)
      if (bool)
      {
        localObject3 = localc.b;
        k = (int)((o)localObject3).b - m;
        j = k;
        if (k < 0)
          j = 0;
        localObject3 = new o(((o)localObject3).a, j);
        if (!bool)
          break label737;
        paramj = (j)localObject3;
      }
    while (true)
    {
      label627: if (i > 0)
        if (bool)
        {
          localObject3 = localc.c;
          j = (int)((o)localObject3).b + i;
          i = j;
          if (j >= localc.a.b)
            i = localc.a.b - 1;
          localObject3 = new o(((o)localObject3).a, i);
          if (!bool)
            break label754;
          localObject2 = localObject3;
        }
      while (true)
      {
        label643: localc.a();
        return new c(localc.a, paramj, (o)localObject2, (o)localObject1, (o)localObject4);
        localObject3 = localc.d;
        break;
        label737: localObject1 = localObject3;
        break label627;
        localObject3 = localc.e;
        break label643;
        label754: localObject4 = localObject3;
      }
    }
  }

  private static d a(com.google.zxing.common.b paramb, int paramInt1, int paramInt2, boolean paramBoolean, int paramInt3, int paramInt4, int paramInt5, int paramInt6)
  {
    int j;
    int k;
    label27: label74: int[] arrayOfInt;
    if (paramBoolean)
    {
      i = -1;
      j = 0;
      k = i;
      bool = paramBoolean;
      i = paramInt3;
      if (j >= 2)
        break label203;
      if (((!bool) || (i < paramInt1)) && ((bool) || (i >= paramInt2) || (bool != paramb.a(i, paramInt4))))
        break label175;
      if (Math.abs(paramInt3 - i) <= 2)
        break label165;
      arrayOfInt = new int[8];
      k = 0;
      if (!paramBoolean)
        break label210;
    }
    label165: label175: label203: label210: for (int i = 1; ; i = -1)
    {
      j = paramInt3;
      bool = paramBoolean;
      while (true)
      {
        if (((!paramBoolean) || (j >= paramInt2)) && ((paramBoolean) || (j < paramInt1) || (k >= 8)))
          break label239;
        if (paramb.a(j, paramInt4) != bool)
          break;
        arrayOfInt[k] += 1;
        j += i;
      }
      i = 1;
      break;
      i += k;
      break label27;
      k = -k;
      if (!bool);
      for (bool = true; ; bool = false)
      {
        j += 1;
        break;
      }
      paramInt3 = i;
      break label74;
    }
    if (!bool);
    for (boolean bool = true; ; bool = false)
    {
      k += 1;
      break;
    }
    label239: paramb = arrayOfInt;
    if (k != 8)
      if (((!paramBoolean) || (j != paramInt2)) && ((paramBoolean) || (j != paramInt1) || (k != 7)))
        break label285;
    label285: for (paramb = arrayOfInt; paramb == null; paramb = null)
      return null;
    paramInt2 = com.google.zxing.f.a.a(paramb);
    if (paramBoolean)
    {
      paramInt1 = paramInt3 + paramInt2;
      if ((paramInt5 - 2 > paramInt2) || (paramInt2 > paramInt6 + 2))
        break label383;
    }
    label383: for (paramInt2 = 1; ; paramInt2 = 0)
    {
      if (paramInt2 != 0)
        break label388;
      return null;
      paramInt1 = 0;
      while (paramInt1 < paramb.length / 2)
      {
        paramInt4 = paramb[paramInt1];
        paramb[paramInt1] = paramb[(paramb.length - 1 - paramInt1)];
        paramb[(paramb.length - 1 - paramInt1)] = paramInt4;
        paramInt1 += 1;
      }
      paramInt1 = paramInt3;
      paramInt3 -= paramInt2;
      break;
    }
    label388: paramInt2 = k.a(paramb);
    paramInt4 = com.google.zxing.f.a.a(paramInt2);
    if (paramInt4 == -1)
      return null;
    paramb = a(paramInt2);
    return new d(paramInt3, paramInt1, (paramb[0] - paramb[2] + paramb[4] - paramb[6] + 9) % 9, paramInt4);
  }

  private static j a(com.google.zxing.common.b paramb, c paramc, o paramo, boolean paramBoolean, int paramInt1, int paramInt2)
  {
    j localj = new j(paramc, paramBoolean);
    int j = 0;
    while (j < 2)
    {
      int k;
      int m;
      label42: d locald;
      if (j == 0)
      {
        k = 1;
        i = (int)paramo.a;
        m = (int)paramo.b;
        if ((m > paramc.i) || (m < paramc.h))
          break label131;
        locald = a(paramb, 0, paramb.a, paramBoolean, i, m, paramInt1, paramInt2);
        if (locald != null)
        {
          localj.a(m, locald);
          if (!paramBoolean)
            break label121;
        }
      }
      label121: for (int i = locald.a; ; i = locald.b)
      {
        m += k;
        break label42;
        k = -1;
        break;
      }
      label131: j += 1;
    }
    return localj;
  }

  private static boolean a(h paramh, int paramInt)
  {
    return (paramInt >= 0) && (paramInt <= paramh.d + 1);
  }

  private static int[] a(int paramInt)
  {
    int[] arrayOfInt = new int[8];
    int j = 0;
    int i = 7;
    while (true)
    {
      int m = i;
      int k = j;
      if ((paramInt & 0x1) != j)
      {
        k = paramInt & 0x1;
        m = i - 1;
        if (m < 0)
          break;
      }
      arrayOfInt[m] += 1;
      paramInt >>= 1;
      i = m;
      j = k;
    }
    return arrayOfInt;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.google.zxing.f.a.l
 * JD-Core Version:    0.6.2
 */