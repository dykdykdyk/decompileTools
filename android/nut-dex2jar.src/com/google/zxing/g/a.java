package com.google.zxing.g;

import com.google.zxing.ChecksumException;
import com.google.zxing.FormatException;
import com.google.zxing.NotFoundException;
import com.google.zxing.common.b;
import com.google.zxing.g.a.q;
import com.google.zxing.g.b.f;
import com.google.zxing.g.b.h;
import com.google.zxing.l;
import com.google.zxing.n;
import com.google.zxing.o;
import com.google.zxing.p;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public final class a
  implements l
{
  private static final o[] a = new o[0];
  private final com.google.zxing.g.a.m b = new com.google.zxing.g.a.m();

  public final com.google.zxing.m a(com.google.zxing.c paramc, Map<com.google.zxing.d, ?> paramMap)
    throws NotFoundException, ChecksumException, FormatException
  {
    Object localObject1;
    Object localObject2;
    int m;
    int n;
    int j;
    int i;
    boolean bool1;
    int k;
    if ((paramMap != null) && (paramMap.containsKey(com.google.zxing.d.b)))
    {
      paramc = paramc.a();
      localObject1 = paramc.b();
      localObject2 = paramc.c();
      if ((localObject1 == null) || (localObject2 == null))
        throw NotFoundException.a();
      m = paramc.b;
      n = paramc.a;
      j = localObject1[0];
      i = localObject1[1];
      bool1 = true;
      k = 0;
      if ((j < n) && (i < m))
      {
        if (bool1 == paramc.a(j, i))
          break label1850;
        k += 1;
        if (k != 5)
          if (!bool1)
            bool1 = true;
      }
    }
    label534: label790: label920: label926: label1201: label1850: 
    while (true)
    {
      j += 1;
      i += 1;
      break;
      bool1 = false;
      continue;
      if ((j == n) || (i == m))
        throw NotFoundException.a();
      float f1 = (j - localObject1[0]) / 7.0F;
      int i3 = localObject1[1];
      m = localObject2[1];
      k = localObject1[0];
      j = localObject2[0];
      if ((k >= j) || (i3 >= m))
        throw NotFoundException.a();
      i = j;
      if (m - i3 != j - k)
        i = m - i3 + k;
      n = Math.round((i - k + 1) / f1);
      int i1 = Math.round((m - i3 + 1) / f1);
      if ((n <= 0) || (i1 <= 0))
        throw NotFoundException.a();
      if (i1 != n)
        throw NotFoundException.a();
      int i2 = (int)(f1 / 2.0F);
      j = i3 + i2;
      k += i2;
      i = (int)((n - 1) * f1) + k - i;
      if (i > 0)
        if (i > i2)
          throw NotFoundException.a();
      for (i = k - i; ; i = k)
      {
        k = (int)((i1 - 1) * f1) + j - m;
        if (k > 0)
        {
          if (k > i2)
            throw NotFoundException.a();
          j -= k;
        }
        while (true)
        {
          localObject1 = new b(n, i1);
          k = 0;
          while (k < i1)
          {
            i2 = (int)(k * f1);
            m = 0;
            while (m < n)
            {
              if (paramc.a((int)(m * f1) + i, j + i2))
                ((b)localObject1).b(m, k);
              m += 1;
            }
            k += 1;
          }
          paramc = this.b.a((b)localObject1, paramMap);
          paramMap = a;
          label611: com.google.zxing.g.b.e locale;
          label709: boolean bool3;
          label728: int[] arrayOfInt;
          label833: label978: label1119: if ((!(paramc.g instanceof q)) || (!((q)paramc.g).a) || (paramMap == null) || (paramMap.length < 3))
          {
            paramMap = new com.google.zxing.m(paramc.b, paramc.a, paramMap, com.google.zxing.a.l);
            localObject1 = paramc.c;
            if (localObject1 != null)
              paramMap.a(n.c, localObject1);
            localObject1 = paramc.d;
            if (localObject1 != null)
              paramMap.a(n.d, localObject1);
            if ((paramc.h < 0) || (paramc.i < 0))
              break label1827;
            i = 1;
            if (i != 0)
            {
              paramMap.a(n.j, Integer.valueOf(paramc.i));
              paramMap.a(n.k, Integer.valueOf(paramc.h));
            }
            return paramMap;
            localObject2 = new com.google.zxing.g.b.c(paramc.a());
            if (paramMap == null)
            {
              paramc = null;
              ((com.google.zxing.g.b.c)localObject2).b = paramc;
              locale = new com.google.zxing.g.b.e(((com.google.zxing.g.b.c)localObject2).a, ((com.google.zxing.g.b.c)localObject2).b);
              if ((paramMap == null) || (!paramMap.containsKey(com.google.zxing.d.d)))
                break label914;
              j = 1;
              if ((paramMap == null) || (!paramMap.containsKey(com.google.zxing.d.b)))
                break label920;
              bool3 = true;
              i1 = locale.a.b;
              i2 = locale.a.a;
              i = i1 * 3 / 228;
              if ((i < 3) || (j != 0))
                i = 3;
              bool1 = false;
              arrayOfInt = new int[5];
              k = i - 1;
              m = i;
              if ((k >= i1) || (bool1))
                break label1368;
              arrayOfInt[0] = 0;
              arrayOfInt[1] = 0;
              arrayOfInt[2] = 0;
              arrayOfInt[3] = 0;
              arrayOfInt[4] = 0;
              i = 0;
              j = 0;
              if (j >= i2)
                break label1277;
              if (!locale.a.a(j, k))
                break label926;
              n = i;
              if ((i & 0x1) == 1)
                n = i + 1;
              arrayOfInt[n] += 1;
              i = n;
            }
            while (true)
            {
              label889: j += 1;
              break label833;
              paramc = (p)paramMap.get(com.google.zxing.d.j);
              break;
              j = 0;
              break label709;
              bool3 = false;
              break label728;
              if ((i & 0x1) != 0)
                break label1262;
              if (i != 4)
                break label1241;
              if (!com.google.zxing.g.b.e.a(arrayOfInt))
                break label1201;
              if (!locale.a(arrayOfInt, k, j, bool3))
                break label1161;
              if (!locale.c)
                break label1012;
              bool1 = locale.a();
              arrayOfInt[0] = 0;
              arrayOfInt[1] = 0;
              arrayOfInt[2] = 0;
              arrayOfInt[3] = 0;
              arrayOfInt[4] = 0;
              i = 0;
              m = 2;
            }
            label1012: if (locale.b.size() > 1)
            {
              Iterator localIterator = locale.b.iterator();
              paramc = null;
              while (localIterator.hasNext())
              {
                localObject1 = (com.google.zxing.g.b.d)localIterator.next();
                if (((com.google.zxing.g.b.d)localObject1).d >= 2)
                  if (paramc == null)
                  {
                    paramc = (com.google.zxing.c)localObject1;
                  }
                  else
                  {
                    locale.c = true;
                    i = (int)(Math.abs(paramc.a - ((o)localObject1).a) - Math.abs(paramc.b - ((o)localObject1).b)) / 2;
                    if (i <= arrayOfInt[2])
                      break label1833;
                    i = k + (i - arrayOfInt[2] - 2);
                    j = i2 - 1;
                  }
              }
            }
          }
          while (true)
          {
            k = i;
            break label978;
            i = 0;
            break label1119;
            arrayOfInt[0] = arrayOfInt[2];
            arrayOfInt[1] = arrayOfInt[3];
            arrayOfInt[2] = arrayOfInt[4];
            arrayOfInt[3] = 1;
            arrayOfInt[4] = 0;
            i = 3;
            break label889;
            arrayOfInt[0] = arrayOfInt[2];
            arrayOfInt[1] = arrayOfInt[3];
            arrayOfInt[2] = arrayOfInt[4];
            arrayOfInt[3] = 1;
            arrayOfInt[4] = 0;
            i = 3;
            break label889;
            label1241: i += 1;
            arrayOfInt[i] += 1;
            break label889;
            label1262: arrayOfInt[i] += 1;
            break label889;
            label1277: i = m;
            boolean bool2 = bool1;
            if (com.google.zxing.g.b.e.a(arrayOfInt))
            {
              i = m;
              bool2 = bool1;
              if (locale.a(arrayOfInt, k, i2, bool3))
              {
                j = arrayOfInt[0];
                i = j;
                bool2 = bool1;
                if (locale.c)
                {
                  bool2 = locale.a();
                  i = j;
                }
              }
            }
            k += i;
            m = i;
            bool1 = bool2;
            break label790;
            label1368: i = locale.b.size();
            if (i < 3)
              throw NotFoundException.a();
            if (i > 3)
            {
              paramc = locale.b.iterator();
              float f2 = 0.0F;
              float f3;
              for (f1 = 0.0F; paramc.hasNext(); f1 = f3 * f3 + f1)
              {
                f3 = ((com.google.zxing.g.b.d)paramc.next()).c;
                f2 += f3;
              }
              f2 /= i;
              f1 = (float)Math.sqrt(f1 / i - f2 * f2);
              Collections.sort(locale.b, new com.google.zxing.g.b.g(f2, (byte)0));
              f1 = Math.max(0.2F * f2, f1);
              for (i = 0; (i < locale.b.size()) && (locale.b.size() > 3); i = j + 1)
              {
                j = i;
                if (Math.abs(((com.google.zxing.g.b.d)locale.b.get(i)).c - f2) > f1)
                {
                  locale.b.remove(i);
                  j = i - 1;
                }
              }
            }
            if (locale.b.size() > 3)
            {
              paramc = locale.b.iterator();
              for (f1 = 0.0F; paramc.hasNext(); f1 = ((com.google.zxing.g.b.d)paramc.next()).c + f1);
              f1 /= locale.b.size();
              Collections.sort(locale.b, new f(f1, (byte)0));
              locale.b.subList(3, locale.b.size()).clear();
            }
            paramc = new com.google.zxing.g.b.d[3];
            paramc[0] = ((com.google.zxing.g.b.d)locale.b.get(0));
            paramc[1] = ((com.google.zxing.g.b.d)locale.b.get(1));
            paramc[2] = ((com.google.zxing.g.b.d)locale.b.get(2));
            o.a(paramc);
            localObject1 = ((com.google.zxing.g.b.c)localObject2).a(new h(paramc));
            paramc = this.b.a(((com.google.zxing.common.g)localObject1).d, paramMap);
            paramMap = ((com.google.zxing.common.g)localObject1).e;
            break;
            localObject1 = paramMap[0];
            paramMap[0] = paramMap[2];
            paramMap[2] = localObject1;
            break label534;
            i = 0;
            break label611;
            i = k;
          }
        }
      }
    }
  }

  public final void a()
  {
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.google.zxing.g.a
 * JD-Core Version:    0.6.2
 */