package com.google.zxing.e.a;

import com.google.zxing.NotFoundException;
import com.google.zxing.m;
import com.google.zxing.o;
import com.google.zxing.p;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public final class e extends a
{
  private static final int[] g = { 1, 10, 34, 70, 126 };
  private static final int[] h = { 4, 20, 48, 81 };
  private static final int[] i = { 0, 161, 961, 2015, 2715 };
  private static final int[] j = { 0, 336, 1036, 1516 };
  private static final int[] k = { 8, 6, 4, 3, 1 };
  private static final int[] l = { 2, 4, 6, 8 };
  private static final int[][] m = { arrayOfInt1, arrayOfInt2, arrayOfInt3, arrayOfInt4, arrayOfInt5, { 2, 5, 6, 1 }, arrayOfInt6, arrayOfInt7, arrayOfInt8 };
  private final List<d> n = new ArrayList();
  private final List<d> o = new ArrayList();

  static
  {
    int[] arrayOfInt1 = { 3, 8, 2, 1 };
    int[] arrayOfInt2 = { 3, 5, 5, 1 };
    int[] arrayOfInt3 = { 3, 3, 7, 1 };
    int[] arrayOfInt4 = { 3, 1, 9, 1 };
    int[] arrayOfInt5 = { 2, 7, 4, 1 };
    int[] arrayOfInt6 = { 2, 3, 8, 1 };
    int[] arrayOfInt7 = { 1, 5, 7, 1 };
    int[] arrayOfInt8 = { 1, 3, 9, 1 };
  }

  private b a(com.google.zxing.common.a parama, c paramc, boolean paramBoolean)
    throws NotFoundException
  {
    int[] arrayOfInt = this.b;
    arrayOfInt[0] = 0;
    arrayOfInt[1] = 0;
    arrayOfInt[2] = 0;
    arrayOfInt[3] = 0;
    arrayOfInt[4] = 0;
    arrayOfInt[5] = 0;
    arrayOfInt[6] = 0;
    arrayOfInt[7] = 0;
    label72: float[] arrayOfFloat2;
    label109: float f2;
    if (paramBoolean)
    {
      b(parama, paramc.b[0], arrayOfInt);
      if (!paramBoolean)
        break label253;
      i2 = 16;
      float f1 = a(arrayOfInt) / i2;
      parama = this.e;
      paramc = this.f;
      float[] arrayOfFloat1 = this.c;
      arrayOfFloat2 = this.d;
      i3 = 0;
      if (i3 >= arrayOfInt.length)
        break label298;
      f2 = arrayOfInt[i3] / f1;
      i4 = (int)(0.5F + f2);
      if (i4 > 0)
        break label260;
      i1 = 1;
      label144: i4 = i3 / 2;
      if ((i3 & 0x1) != 0)
        break label278;
      parama[i4] = i1;
      arrayOfFloat1[i4] = (f2 - i1);
    }
    while (true)
    {
      i3 += 1;
      break label109;
      a(parama, paramc.b[1] + 1, arrayOfInt);
      i2 = 0;
      i1 = arrayOfInt.length - 1;
      while (i2 < i1)
      {
        i3 = arrayOfInt[i2];
        arrayOfInt[i2] = arrayOfInt[i1];
        arrayOfInt[i1] = i3;
        i2 += 1;
        i1 -= 1;
      }
      break;
      label253: i2 = 15;
      break label72;
      label260: i1 = i4;
      if (i4 <= 8)
        break label144;
      i1 = 8;
      break label144;
      label278: paramc[i4] = i1;
      arrayOfFloat2[i4] = (f2 - i1);
    }
    label298: int i10 = a(this.e);
    int i11 = a(this.f);
    int i12 = i10 + i11 - i2;
    int i8;
    label345: int i7;
    label356: int i6;
    int i9;
    if (paramBoolean)
    {
      i1 = 1;
      if ((i10 & 0x1) != i1)
        break label432;
      i8 = 1;
      if ((i11 & 0x1) != 1)
        break label438;
      i7 = 1;
      i4 = 0;
      i6 = 0;
      i3 = 0;
      i1 = 0;
      i2 = 0;
      i9 = 0;
      if (!paramBoolean)
        break label500;
      if (i10 <= 12)
        break label444;
      i5 = 1;
      label388: if (i11 <= 12)
        break label464;
      i1 = 1;
      i3 = i6;
      i4 = i5;
    }
    while (true)
      if (i12 == 1)
        if (i8 != 0)
        {
          if (i7 != 0)
          {
            throw NotFoundException.a();
            i1 = 0;
            break;
            label432: i8 = 0;
            break label345;
            label438: i7 = 0;
            break label356;
            label444: i5 = i1;
            if (i10 >= 4)
              break label388;
            i6 = 1;
            i5 = i1;
            break label388;
            label464: i1 = i9;
            i4 = i5;
            i3 = i6;
            if (i11 >= 4)
              continue;
            i2 = 1;
            i1 = i9;
            i4 = i5;
            i3 = i6;
            continue;
            label500: if (i10 > 11)
            {
              i5 = 1;
              i6 = i4;
            }
            while (true)
            {
              if (i11 <= 10)
                break label559;
              i1 = 1;
              i4 = i5;
              i3 = i6;
              break;
              i5 = i3;
              i6 = i4;
              if (i10 < 5)
              {
                i6 = 1;
                i5 = i3;
              }
            }
            label559: i1 = i9;
            i4 = i5;
            i3 = i6;
            if (i11 >= 4)
              continue;
            i2 = 1;
            i1 = i9;
            i4 = i5;
            i3 = i6;
            continue;
          }
          i4 = 1;
        }
    while (i3 != 0)
      if (i4 != 0)
      {
        throw NotFoundException.a();
        if (i7 == 0)
          throw NotFoundException.a();
        i1 = 1;
        continue;
        if (i12 == -1)
        {
          if (i8 != 0)
          {
            if (i7 != 0)
              throw NotFoundException.a();
            i3 = 1;
          }
          else
          {
            if (i7 == 0)
              throw NotFoundException.a();
            i2 = 1;
          }
        }
        else if (i12 == 0)
        {
          if (i8 != 0)
          {
            if (i7 == 0)
              throw NotFoundException.a();
            if (i10 < i11)
            {
              i3 = 1;
              i1 = 1;
            }
            else
            {
              i4 = 1;
              i2 = 1;
            }
          }
          else if (i7 != 0)
          {
            throw NotFoundException.a();
          }
        }
        else
          throw NotFoundException.a();
      }
      else
      {
        a(this.e, this.c);
      }
    if (i4 != 0)
      b(this.e, this.c);
    if (i2 != 0)
    {
      if (i1 != 0)
        throw NotFoundException.a();
      a(this.f, this.c);
    }
    if (i1 != 0)
      b(this.f, this.d);
    int i3 = parama.length - 1;
    int i2 = 0;
    for (int i1 = 0; i3 >= 0; i1 = i4 + i1)
    {
      i5 = parama[i3];
      i4 = parama[i3];
      i3 -= 1;
      i2 = i2 * 9 + i5;
    }
    int i5 = 0;
    int i4 = 0;
    i3 = paramc.length - 1;
    while (i3 >= 0)
    {
      i5 = i5 * 9 + paramc[i3];
      i4 += paramc[i3];
      i3 -= 1;
    }
    i2 = i5 * 3 + i2;
    if (paramBoolean)
    {
      if (((i1 & 0x1) != 0) || (i1 > 12) || (i1 < 4))
        throw NotFoundException.a();
      i1 = (12 - i1) / 2;
      i4 = k[i1];
      i3 = f.a(parama, i4, false);
      i4 = f.a(paramc, 9 - i4, true);
      return new b(i3 * g[i1] + i4 + i[i1], i2);
    }
    if (((i4 & 0x1) != 0) || (i4 > 10) || (i4 < 4))
      throw NotFoundException.a();
    i1 = (10 - i4) / 2;
    i3 = l[i1];
    return new b(f.a(parama, i3, true) + f.a(paramc, 9 - i3, false) * h[i1] + j[i1], i2);
  }

  private d a(com.google.zxing.common.a parama, boolean paramBoolean, int paramInt, Map<com.google.zxing.d, ?> paramMap)
  {
    int i1 = 0;
    try
    {
      Object localObject = this.a;
      localObject[0] = 0;
      localObject[1] = 0;
      localObject[2] = 0;
      localObject[3] = 0;
      int i5 = parama.b;
      boolean bool1 = false;
      boolean bool2 = bool1;
      if (i1 < i5)
        if (!parama.a(i1))
          bool1 = true;
      while (true)
      {
        int i3;
        int[] arrayOfInt;
        if (i3 < i5)
        {
          if ((parama.a(i3) ^ bool1))
          {
            localObject[i2] += 1;
          }
          else
          {
            if (i2 != 3)
              break label561;
            if (!b((int[])localObject))
              break label478;
            arrayOfInt = new int[2];
            arrayOfInt[0] = i1;
            arrayOfInt[1] = i3;
            bool1 = parama.a(arrayOfInt[0]);
            i1 = arrayOfInt[0] - 1;
            while ((i1 >= 0) && ((parama.a(i1) ^ bool1)))
              i1 -= 1;
          }
        }
        else
        {
          throw NotFoundException.a();
          i3 = i1 + 1;
          i1 = arrayOfInt[0];
          localObject = this.a;
          System.arraycopy(localObject, 0, localObject, 1, localObject.length - 1);
          localObject[0] = (i1 - i3);
          i4 = a((int[])localObject, m);
          i2 = arrayOfInt[1];
          if (paramBoolean)
          {
            i1 = parama.b - 1 - i3;
            i2 = parama.b - 1 - i2;
          }
          while (true)
          {
            localObject = new c(i4, new int[] { i3, arrayOfInt[1] }, i1, i2, paramInt);
            if (paramMap == null);
            for (paramMap = null; ; paramMap = (p)paramMap.get(com.google.zxing.d.j))
            {
              if (paramMap != null)
              {
                float f2 = (arrayOfInt[0] + arrayOfInt[1]) / 2.0F;
                float f1 = f2;
                if (paramBoolean)
                  f1 = parama.b - 1 - f2;
                new o(f1, paramInt);
              }
              paramMap = a(parama, (c)localObject, true);
              parama = a(parama, (c)localObject, false);
              return new d(paramMap.a * 1597 + parama.a, paramMap.b + parama.b * 4, (c)localObject);
            }
            i1 = i3;
          }
          while (true)
          {
            bool2 = bool1;
            if (paramBoolean == bool1)
              break label455;
            i1 += 1;
            break;
            bool1 = false;
          }
          label455: i3 = i1;
          bool1 = bool2;
          i2 = 0;
          continue;
        }
        i3 += 1;
      }
      label478: i1 = localObject[0] + localObject[1] + i1;
      localObject[0] = localObject[2];
      localObject[1] = localObject[3];
      localObject[2] = 0;
      localObject[3] = 0;
      int i4 = i2 - 1;
      int i2 = i1;
      i1 = i4;
      label532: localObject[i1] = 1;
      if (!bool1);
      for (bool1 = true; ; bool1 = false)
      {
        i4 = i2;
        i2 = i1;
        i1 = i4;
        break;
        label561: i4 = i1;
        i1 = i2 + 1;
        i2 = i4;
        break label532;
      }
    }
    catch (NotFoundException parama)
    {
    }
    return null;
  }

  private static void a(Collection<d> paramCollection, d paramd)
  {
    if (paramd == null);
    while (true)
    {
      return;
      Iterator localIterator = paramCollection.iterator();
      while (localIterator.hasNext())
      {
        d locald = (d)localIterator.next();
        if (locald.a == paramd.a)
          locald.d += 1;
      }
      for (int i1 = 1; i1 == 0; i1 = 0)
      {
        paramCollection.add(paramd);
        return;
      }
    }
  }

  public final m a(int paramInt, com.google.zxing.common.a parama, Map<com.google.zxing.d, ?> paramMap)
    throws NotFoundException
  {
    Object localObject1 = a(parama, false, paramInt, paramMap);
    a(this.n, (d)localObject1);
    parama.c();
    paramMap = a(parama, true, paramInt, paramMap);
    a(this.o, paramMap);
    parama.c();
    int i4 = this.n.size();
    int i1 = 0;
    while (i1 < i4)
    {
      localObject1 = (d)this.n.get(i1);
      if (((d)localObject1).d > 1)
      {
        int i5 = this.o.size();
        int i2 = 0;
        while (i2 < i5)
        {
          paramMap = (d)this.o.get(i2);
          if (paramMap.d > 1)
          {
            int i6 = ((b)localObject1).b;
            int i7 = paramMap.b;
            int i3 = ((d)localObject1).c.a * 9 + paramMap.c.a;
            paramInt = i3;
            if (i3 > 72)
              paramInt = i3 - 1;
            i3 = paramInt;
            if (paramInt > 8)
              i3 = paramInt - 1;
            if ((i6 + i7 * 16) % 79 == i3)
              paramInt = 1;
            while (paramInt != 0)
            {
              Object localObject2 = String.valueOf(4537077L * ((b)localObject1).a + paramMap.a);
              parama = new StringBuilder(14);
              paramInt = 13 - ((String)localObject2).length();
              while (true)
                if (paramInt > 0)
                {
                  parama.append('0');
                  paramInt -= 1;
                  continue;
                  paramInt = 0;
                  break;
                }
              parama.append((String)localObject2);
              paramInt = 0;
              i1 = 0;
              while (i1 < 13)
              {
                i3 = parama.charAt(i1) - '0';
                i2 = i3;
                if ((i1 & 0x1) == 0)
                  i2 = i3 * 3;
                i1 += 1;
                paramInt = i2 + paramInt;
              }
              i1 = 10 - paramInt % 10;
              paramInt = i1;
              if (i1 == 10)
                paramInt = 0;
              parama.append(paramInt);
              localObject2 = ((d)localObject1).c.c;
              localObject1 = paramMap.c.c;
              parama = String.valueOf(parama.toString());
              paramMap = localObject2[0];
              localObject2 = localObject2[1];
              Object localObject3 = localObject1[0];
              localObject1 = localObject1[1];
              com.google.zxing.a locala = com.google.zxing.a.m;
              return new m(parama, null, new o[] { paramMap, localObject2, localObject3, localObject1 }, locala);
            }
          }
          i2 += 1;
        }
      }
      i1 += 1;
    }
    throw NotFoundException.a();
  }

  public final void a()
  {
    this.n.clear();
    this.o.clear();
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.google.zxing.e.a.e
 * JD-Core Version:    0.6.2
 */