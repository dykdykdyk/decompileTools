package com.google.zxing.e.a.a;

import com.google.zxing.FormatException;
import com.google.zxing.NotFoundException;
import com.google.zxing.e.a.a.a.e;
import com.google.zxing.e.a.a.a.g;
import com.google.zxing.e.a.a.a.j;
import com.google.zxing.e.a.a.a.k;
import com.google.zxing.e.a.a.a.t;
import com.google.zxing.e.a.f;
import com.google.zxing.m;
import com.google.zxing.o;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public final class c extends com.google.zxing.e.a.a
{
  private static final int[] g = { 7, 5, 4, 3, 1 };
  private static final int[] h = { 4, 20, 52, 104, 204 };
  private static final int[] i = { 0, 348, 1388, 2948, 3988 };
  private static final int[][] j = { { 1, 8, 4, 1 }, { 3, 6, 4, 1 }, { 3, 4, 6, 1 }, { 3, 2, 8, 1 }, { 2, 6, 5, 1 }, { 2, 2, 9, 1 } };
  private static final int[][] k;
  private static final int[][] l = { { 0, 0 }, { 0, 1, 1 }, arrayOfInt1, arrayOfInt2, arrayOfInt3, arrayOfInt4, arrayOfInt5, arrayOfInt6, { 0, 0, 1, 1, 2, 2, 3, 4, 5, 5 }, arrayOfInt7 };
  private final List<a> m = new ArrayList(11);
  private final List<b> n = new ArrayList();
  private final int[] o = new int[2];
  private boolean p;

  static
  {
    int[] arrayOfInt1 = { 1, 3, 9, 27, 81, 32, 96, 77 };
    int[] arrayOfInt2 = { 20, 60, 180, 118, 143, 7, 21, 63 };
    int[] arrayOfInt3 = { 189, 145, 13, 39, 117, 140, 209, 205 };
    int[] arrayOfInt4 = { 193, 157, 49, 147, 19, 57, 171, 91 };
    int[] arrayOfInt5 = { 62, 186, 136, 197, 169, 85, 44, 132 };
    int[] arrayOfInt6 = { 185, 133, 188, 142, 4, 12, 36, 108 };
    int[] arrayOfInt7 = { 113, 128, 173, 97, 80, 29, 87, 50 };
    int[] arrayOfInt8 = { 150, 28, 84, 41, 123, 158, 52, 156 };
    int[] arrayOfInt9 = { 46, 138, 203, 187, 139, 206, 196, 166 };
    int[] arrayOfInt10 = { 76, 17, 51, 153, 37, 111, 122, 155 };
    int[] arrayOfInt11 = { 43, 129, 176, 106, 107, 110, 119, 146 };
    int[] arrayOfInt12 = { 16, 48, 144, 10, 30, 90, 59, 177 };
    int[] arrayOfInt13 = { 109, 116, 137, 200, 178, 112, 125, 164 };
    int[] arrayOfInt14 = { 70, 210, 208, 202, 184, 130, 179, 115 };
    int[] arrayOfInt15 = { 134, 191, 151, 31, 93, 68, 204, 190 };
    int[] arrayOfInt16 = { 148, 22, 66, 198, 172, 94, 71, 2 };
    int[] arrayOfInt17 = { 6, 18, 54, 162, 64, 192, 154, 40 };
    int[] arrayOfInt18 = { 120, 149, 25, 75, 14, 42, 126, 167 };
    int[] arrayOfInt19 = { 79, 26, 78, 23, 69, 207, 199, 175 };
    int[] arrayOfInt20 = { 103, 98, 83, 38, 114, 131, 182, 124 };
    int[] arrayOfInt21 = { 55, 165, 73, 8, 24, 72, 5, 15 };
    int[] arrayOfInt22 = { 45, 135, 194, 160, 58, 174, 100, 89 };
    k = new int[][] { arrayOfInt1, arrayOfInt2, arrayOfInt3, arrayOfInt4, arrayOfInt5, arrayOfInt6, arrayOfInt7, arrayOfInt8, arrayOfInt9, arrayOfInt10, arrayOfInt11, arrayOfInt12, arrayOfInt13, arrayOfInt14, arrayOfInt15, arrayOfInt16, arrayOfInt17, arrayOfInt18, arrayOfInt19, arrayOfInt20, { 161, 61, 183, 127, 170, 88, 53, 159 }, arrayOfInt21, arrayOfInt22 };
    arrayOfInt1 = new int[] { 0, 2, 1, 3 };
    arrayOfInt2 = new int[] { 0, 4, 1, 3, 2 };
    arrayOfInt3 = new int[] { 0, 4, 1, 3, 3, 5 };
    arrayOfInt4 = new int[] { 0, 4, 1, 3, 4, 5, 5 };
    arrayOfInt5 = new int[] { 0, 0, 1, 1, 2, 2, 3, 3 };
    arrayOfInt6 = new int[] { 0, 0, 1, 1, 2, 2, 3, 4, 4 };
    arrayOfInt7 = new int[] { 0, 0, 1, 1, 2, 3, 3, 4, 4, 5, 5 };
  }

  private a a(com.google.zxing.common.a parama, List<a> paramList, int paramInt)
    throws NotFoundException
  {
    boolean bool;
    if (paramList.size() % 2 == 0)
    {
      bool = true;
      if (!this.p)
        break label633;
      if (bool)
        break label167;
      bool = true;
    }
    label29: label35: label84: label98: label117: label120: label376: label633: 
    while (true)
    {
      int i4 = 1;
      int i1 = -1;
      Object localObject = this.a;
      localObject[0] = 0;
      localObject[1] = 0;
      localObject[2] = 0;
      localObject[3] = 0;
      int i10 = parama.b;
      int i2;
      if (i1 < 0)
        if (paramList.isEmpty())
          i2 = 0;
      while (true)
      {
        int i5;
        if (paramList.size() % 2 != 0)
        {
          i3 = 1;
          i5 = i3;
          if (this.p)
          {
            if (i3 != 0)
              break label209;
            i5 = 1;
          }
          i3 = 0;
          i6 = i3;
          if (i2 >= i10)
            break label221;
          if (parama.a(i2))
            break label215;
        }
        for (int i3 = 1; ; i3 = 0)
        {
          i6 = i3;
          if (i3 == 0)
            break label221;
          i2 += 1;
          break label120;
          bool = false;
          break;
          bool = false;
          break label29;
          i2 = ((a)paramList.get(paramList.size() - 1)).c.b[1];
          break label84;
          i3 = 0;
          break label98;
          i5 = 0;
          break label117;
        }
        i3 = i2;
        int i7 = i6;
        int i8 = 0;
        int i6 = i3;
        label380: com.google.zxing.e.a.b localb;
        while (true)
          if (i6 < i10)
            if ((parama.a(i6) ^ i7))
            {
              localObject[i8] += 1;
              i3 = i7;
              i7 = i2;
              i6 += 1;
              i2 = i7;
              i7 = i3;
            }
            else if (i8 == 3)
            {
              if (i5 != 0)
                c((int[])localObject);
              if (b((int[])localObject))
              {
                this.o[0] = i2;
                this.o[1] = i6;
                localObject = a(parama, paramInt, bool);
                if (localObject != null)
                  break label578;
                i1 = this.o[0];
                if (!parama.a(i1))
                  break label563;
                i1 = parama.c(parama.d(i1));
                i2 = i4;
                if (i2 != 0)
                  break label619;
                localb = a(parama, (com.google.zxing.e.a.c)localObject, bool, true);
                if (paramList.isEmpty())
                  break label589;
                if (((a)paramList.get(paramList.size() - 1)).b != null)
                  break label584;
              }
            }
        for (paramInt = 1; ; paramInt = 0)
        {
          if (paramInt == 0)
            break label589;
          throw NotFoundException.a();
          if (i5 != 0)
            c((int[])localObject);
          i3 = i2 + (localObject[0] + localObject[1]);
          localObject[0] = localObject[2];
          localObject[1] = localObject[3];
          localObject[2] = 0;
          localObject[3] = 0;
          for (i2 = i8 - 1; ; i2 = i8)
          {
            localObject[i2] = 1;
            if (i7 != 0)
              break label541;
            i9 = 1;
            i7 = i3;
            i8 = i2;
            i3 = i9;
            break;
            i8 += 1;
            i3 = i2;
          }
          int i9 = 0;
          i7 = i3;
          i8 = i2;
          i3 = i9;
          break;
          throw NotFoundException.a();
          i1 = parama.d(parama.c(i1));
          break label376;
          i2 = 0;
          break label380;
        }
        try
        {
          parama = a(parama, (com.google.zxing.e.a.c)localObject, bool, false);
          return new a(localb, parama, (com.google.zxing.e.a.c)localObject);
        }
        catch (NotFoundException parama)
        {
          while (true)
            parama = null;
        }
        i4 = i2;
        break label35;
        i2 = i1;
      }
    }
  }

  private com.google.zxing.e.a.b a(com.google.zxing.common.a parama, com.google.zxing.e.a.c paramc, boolean paramBoolean1, boolean paramBoolean2)
    throws NotFoundException
  {
    int[] arrayOfInt1 = this.b;
    arrayOfInt1[0] = 0;
    arrayOfInt1[1] = 0;
    arrayOfInt1[2] = 0;
    arrayOfInt1[3] = 0;
    arrayOfInt1[4] = 0;
    arrayOfInt1[5] = 0;
    arrayOfInt1[6] = 0;
    arrayOfInt1[7] = 0;
    if (paramBoolean2)
      b(parama, paramc.b[0], arrayOfInt1);
    float f1;
    float f2;
    int i1;
    while (true)
    {
      f1 = a(arrayOfInt1) / 17.0F;
      f2 = (paramc.b[1] - paramc.b[0]) / 15.0F;
      if (Math.abs(f1 - f2) / f2 <= 0.3F)
        break;
      throw NotFoundException.a();
      a(parama, paramc.b[1], arrayOfInt1);
      i2 = 0;
      i1 = arrayOfInt1.length - 1;
      while (i2 < i1)
      {
        i3 = arrayOfInt1[i2];
        arrayOfInt1[i2] = arrayOfInt1[i1];
        arrayOfInt1[i1] = i3;
        i2 += 1;
        i1 -= 1;
      }
    }
    parama = this.e;
    int[] arrayOfInt2 = this.f;
    float[] arrayOfFloat1 = this.c;
    float[] arrayOfFloat2 = this.d;
    int i2 = 0;
    if (i2 < arrayOfInt1.length)
    {
      f2 = 1.0F * arrayOfInt1[i2] / f1;
      i3 = (int)(0.5F + f2);
      if (i3 <= 0)
      {
        if (f2 < 0.3F)
          throw NotFoundException.a();
        i1 = 1;
        label259: i3 = i2 / 2;
        if ((i2 & 0x1) != 0)
          break label328;
        parama[i3] = i1;
        arrayOfFloat1[i3] = (f2 - i1);
      }
      while (true)
      {
        i2 += 1;
        break;
        i1 = i3;
        if (i3 <= 8)
          break label259;
        if (f2 > 8.7F)
          throw NotFoundException.a();
        i1 = 8;
        break label259;
        label328: arrayOfInt2[i3] = i1;
        arrayOfFloat2[i3] = (f2 - i1);
      }
    }
    int i8 = a(this.e);
    int i9 = a(this.f);
    int i10 = i8 + i9 - 17;
    label398: label414: int i7;
    if ((i8 & 0x1) == 1)
    {
      i6 = 1;
      if ((i9 & 0x1) != 0)
        break label456;
      i5 = 1;
      i2 = 0;
      i3 = 0;
      if (i8 <= 13)
        break label462;
      i1 = 1;
      i4 = 0;
      i7 = 0;
      if (i9 <= 13)
        break label482;
      i3 = 1;
    }
    while (true)
      if (i10 == 1)
        if (i6 != 0)
        {
          if (i5 != 0)
          {
            throw NotFoundException.a();
            i6 = 0;
            break;
            label456: i5 = 0;
            break label398;
            label462: i1 = i3;
            if (i8 >= 4)
              break label414;
            i2 = 1;
            i1 = i3;
            break label414;
            label482: i3 = i7;
            if (i9 >= 4)
              continue;
            i4 = 1;
            i3 = i7;
            continue;
          }
          i1 = 1;
        }
    while (i2 != 0)
      if (i1 != 0)
      {
        throw NotFoundException.a();
        if (i5 == 0)
          throw NotFoundException.a();
        i3 = 1;
        continue;
        if (i10 == -1)
        {
          if (i6 != 0)
          {
            if (i5 != 0)
              throw NotFoundException.a();
            i2 = 1;
          }
          else
          {
            if (i5 == 0)
              throw NotFoundException.a();
            i4 = 1;
          }
        }
        else if (i10 == 0)
        {
          if (i6 != 0)
          {
            if (i5 == 0)
              throw NotFoundException.a();
            if (i8 < i9)
            {
              i2 = 1;
              i3 = 1;
            }
            else
            {
              i1 = 1;
              i4 = 1;
            }
          }
          else if (i5 != 0)
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
    if (i1 != 0)
      b(this.e, this.c);
    if (i4 != 0)
    {
      if (i3 != 0)
        throw NotFoundException.a();
      a(this.f, this.c);
    }
    if (i3 != 0)
      b(this.f, this.d);
    int i3 = paramc.a;
    if (paramBoolean1)
    {
      i1 = 0;
      if (!paramBoolean2)
        break label823;
    }
    label823: for (i2 = 0; ; i2 = 1)
    {
      i6 = i2 + (i3 * 4 + i1) - 1;
      i1 = parama.length;
      i2 = 0;
      i3 = i1 - 1;
      for (i1 = 0; i3 >= 0; i1 = i4)
      {
        i4 = i1;
        if (a(paramc, paramBoolean1, paramBoolean2))
          i4 = i1 + k[i6][(i3 * 2)] * parama[i3];
        i1 = parama[i3];
        i3 -= 1;
        i2 = i1 + i2;
      }
      i1 = 2;
      break;
    }
    i3 = 0;
    int i4 = arrayOfInt2.length - 1;
    while (i4 >= 0)
    {
      i5 = i3;
      if (a(paramc, paramBoolean1, paramBoolean2))
        i5 = i3 + k[i6][(i4 * 2 + 1)] * arrayOfInt2[i4];
      i4 -= 1;
      i3 = i5;
    }
    if (((i2 & 0x1) != 0) || (i2 > 13) || (i2 < 4))
      throw NotFoundException.a();
    i2 = (13 - i2) / 2;
    int i5 = g[i2];
    i4 = f.a(parama, i5, true);
    i5 = f.a(arrayOfInt2, 9 - i5, false);
    int i6 = h[i2];
    return new com.google.zxing.e.a.b(i[i2] + (i4 * i6 + i5), i1 + i3);
  }

  private com.google.zxing.e.a.c a(com.google.zxing.common.a parama, int paramInt, boolean paramBoolean)
  {
    int i1;
    int i3;
    int i2;
    if (paramBoolean)
    {
      i1 = this.o[0] - 1;
      while ((i1 >= 0) && (!parama.a(i1)))
        i1 -= 1;
      i1 += 1;
      i3 = this.o[0] - i1;
      i2 = this.o[1];
    }
    while (true)
    {
      parama = this.a;
      System.arraycopy(parama, 0, parama, 1, parama.length - 1);
      parama[0] = i3;
      try
      {
        i3 = a(parama, j);
        return new com.google.zxing.e.a.c(i3, new int[] { i1, i2 }, i1, i2, paramInt);
        i1 = this.o[0];
        i2 = parama.d(this.o[1] + 1);
        i3 = i2 - this.o[1];
      }
      catch (NotFoundException parama)
      {
      }
    }
    return null;
  }

  private static m a(List<a> paramList)
    throws NotFoundException, FormatException
  {
    int i1 = paramList.size() * 2 - 1;
    if (((a)paramList.get(paramList.size() - 1)).b == null)
      i1 -= 1;
    while (true)
    {
      Object localObject1 = new com.google.zxing.common.a(i1 * 12);
      int i3 = ((a)paramList.get(0)).b.a;
      int i2 = 11;
      i1 = 0;
      while (i2 >= 0)
      {
        if ((1 << i2 & i3) != 0)
          ((com.google.zxing.common.a)localObject1).b(i1);
        i2 -= 1;
        i1 += 1;
      }
      i3 = 1;
      Object localObject2;
      while (i3 < paramList.size())
      {
        localObject2 = (a)paramList.get(i3);
        int i4 = ((a)localObject2).a.a;
        i2 = 11;
        while (i2 >= 0)
        {
          if ((1 << i2 & i4) != 0)
            ((com.google.zxing.common.a)localObject1).b(i1);
          i2 -= 1;
          i1 += 1;
        }
        if (((a)localObject2).b != null)
        {
          int i5 = ((a)localObject2).b.a;
          i4 = 11;
          while (true)
          {
            i2 = i1;
            if (i4 < 0)
              break;
            if ((1 << i4 & i5) != 0)
              ((com.google.zxing.common.a)localObject1).b(i1);
            i4 -= 1;
            i1 += 1;
          }
        }
        i2 = i1;
        i3 += 1;
        i1 = i2;
      }
      if (((com.google.zxing.common.a)localObject1).a(1))
        localObject1 = new g((com.google.zxing.common.a)localObject1);
      while (true)
      {
        localObject1 = ((j)localObject1).a();
        localObject2 = ((a)paramList.get(0)).c.c;
        Object localObject4 = ((a)paramList.get(paramList.size() - 1)).c.c;
        paramList = localObject2[0];
        localObject2 = localObject2[1];
        Object localObject3 = localObject4[0];
        localObject4 = localObject4[1];
        com.google.zxing.a locala = com.google.zxing.a.n;
        return new m((String)localObject1, null, new o[] { paramList, localObject2, localObject3, localObject4 }, locala);
        if (!((com.google.zxing.common.a)localObject1).a(2))
          localObject1 = new k((com.google.zxing.common.a)localObject1);
        else
          switch (t.a((com.google.zxing.common.a)localObject1, 1, 4))
          {
          default:
            switch (t.a((com.google.zxing.common.a)localObject1, 1, 5))
            {
            default:
              switch (t.a((com.google.zxing.common.a)localObject1, 1, 7))
              {
              default:
                throw new IllegalStateException("unknown decoder: " + localObject1);
              case 56:
              case 57:
              case 58:
              case 59:
              case 60:
              case 61:
              case 62:
              case 63:
              }
              break;
            case 12:
            case 13:
            }
          case 4:
            localObject1 = new com.google.zxing.e.a.a.a.a((com.google.zxing.common.a)localObject1);
            break;
          case 5:
            localObject1 = new com.google.zxing.e.a.a.a.b((com.google.zxing.common.a)localObject1);
            continue;
            localObject1 = new com.google.zxing.e.a.a.a.c((com.google.zxing.common.a)localObject1);
            continue;
            localObject1 = new com.google.zxing.e.a.a.a.d((com.google.zxing.common.a)localObject1);
            continue;
            localObject1 = new e((com.google.zxing.common.a)localObject1, "310", "11");
            continue;
            localObject1 = new e((com.google.zxing.common.a)localObject1, "320", "11");
            continue;
            localObject1 = new e((com.google.zxing.common.a)localObject1, "310", "13");
            continue;
            localObject1 = new e((com.google.zxing.common.a)localObject1, "320", "13");
            continue;
            localObject1 = new e((com.google.zxing.common.a)localObject1, "310", "15");
            continue;
            localObject1 = new e((com.google.zxing.common.a)localObject1, "320", "15");
            continue;
            localObject1 = new e((com.google.zxing.common.a)localObject1, "310", "17");
            continue;
            localObject1 = new e((com.google.zxing.common.a)localObject1, "320", "17");
          }
      }
    }
  }

  private List<a> a(int paramInt, com.google.zxing.common.a parama)
    throws NotFoundException
  {
    Object localObject1;
    try
    {
      while (true)
      {
        localObject1 = a(parama, this.m, paramInt);
        this.m.add(localObject1);
      }
    }
    catch (NotFoundException parama)
    {
      if (this.m.isEmpty())
        throw parama;
      if (!b())
        break label56;
    }
    parama = this.m;
    return parama;
    label56: int i1;
    label70: boolean bool1;
    int i2;
    if (!this.n.isEmpty())
    {
      i1 = 1;
      bool1 = false;
      i2 = 0;
      label76: if (i2 >= this.n.size())
        break label527;
      parama = (b)this.n.get(i2);
      if (parama.b <= paramInt)
        break label176;
    }
    label513: label519: label521: label525: label527: for (boolean bool2 = parama.a(this.m); ; bool2 = false)
    {
      if ((bool2) || (bool1))
      {
        if (i1 != 0)
        {
          localObject1 = a(false);
          parama = (com.google.zxing.common.a)localObject1;
          if (localObject1 != null)
            break;
          localObject1 = a(true);
          parama = (com.google.zxing.common.a)localObject1;
          if (localObject1 != null)
            break;
        }
        throw NotFoundException.a();
        i1 = 0;
        break label70;
        label176: bool1 = parama.a(this.m);
        i2 += 1;
        break label76;
      }
      parama = this.m;
      localObject1 = this.n.iterator();
      while (true)
      {
        Object localObject2;
        Object localObject3;
        label241: Object localObject4;
        if (((Iterator)localObject1).hasNext())
        {
          localObject2 = (b)((Iterator)localObject1).next();
          localObject3 = parama.iterator();
          if (!((Iterator)localObject3).hasNext())
            break label521;
          localObject4 = (a)((Iterator)localObject3).next();
          Iterator localIterator = ((b)localObject2).a.iterator();
          while (localIterator.hasNext())
            if (((a)localObject4).equals((a)localIterator.next()))
            {
              i3 = 1;
              label306: if (i3 != 0)
                break label519;
            }
        }
        for (int i3 = 0; ; i3 = 1)
        {
          if (i3 == 0)
            break label525;
          i3 = 1;
          label322: if (i3 == 0)
          {
            this.n.add(i2, new b(this.m, paramInt));
            parama = this.m;
            localObject1 = this.n.iterator();
          }
          label419: label479: 
          while (true)
            label366: if (((Iterator)localObject1).hasNext())
            {
              localObject2 = (b)((Iterator)localObject1).next();
              if (((b)localObject2).a.size() != parama.size())
              {
                localObject2 = ((b)localObject2).a.iterator();
                if (((Iterator)localObject2).hasNext())
                {
                  localObject3 = (a)((Iterator)localObject2).next();
                  localObject4 = parama.iterator();
                  while (((Iterator)localObject4).hasNext())
                    if (((a)localObject3).equals((a)((Iterator)localObject4).next()))
                    {
                      paramInt = 1;
                      if (paramInt != 0)
                        break label508;
                    }
                }
              }
            }
            else
            {
              for (paramInt = 0; ; paramInt = 1)
              {
                if (paramInt == 0)
                  break label513;
                ((Iterator)localObject1).remove();
                break label366;
                break;
                i3 = 0;
                break label322;
                break;
                paramInt = 0;
                break label479;
                label508: break label419;
              }
            }
          i3 = 0;
          break label306;
          break label241;
        }
      }
    }
  }

  private List<a> a(List<b> paramList, int paramInt)
    throws NotFoundException
  {
    Object localObject1;
    int i1;
    Object localObject2;
    if (paramInt < this.n.size())
    {
      localObject1 = (b)this.n.get(paramInt);
      this.m.clear();
      i2 = paramList.size();
      i1 = 0;
      while (i1 < i2)
      {
        this.m.addAll(((b)paramList.get(i1)).a);
        i1 += 1;
      }
      this.m.addAll(((b)localObject1).a);
      localObject2 = this.m;
      int[][] arrayOfInt = l;
      int i3 = arrayOfInt.length;
      i1 = 0;
      if (i1 < i3)
      {
        int[] arrayOfInt1 = arrayOfInt[i1];
        if (((List)localObject2).size() <= arrayOfInt1.length)
        {
          i2 = 0;
          label144: if (i2 >= ((List)localObject2).size())
            break label284;
          if (((a)((List)localObject2).get(i2)).c.a == arrayOfInt1[i2]);
        }
      }
    }
    label284: for (int i2 = 0; ; i2 = 1)
    {
      if (i2 != 0)
        i1 = 1;
      while (true)
        if (i1 != 0)
        {
          if (b())
          {
            return this.m;
            i2 += 1;
            break label144;
            i1 += 1;
            break;
            i1 = 0;
            continue;
          }
          localObject2 = new ArrayList();
          ((List)localObject2).addAll(paramList);
          ((List)localObject2).add(localObject1);
          try
          {
            localObject1 = a((List)localObject2, paramInt + 1);
            return localObject1;
          }
          catch (NotFoundException localNotFoundException)
          {
          }
        }
      paramInt += 1;
      break;
      throw NotFoundException.a();
    }
  }

  private List<a> a(boolean paramBoolean)
  {
    Object localObject1 = null;
    Object localObject2 = null;
    if (this.n.size() > 25)
      this.n.clear();
    while (true)
    {
      return localObject2;
      this.m.clear();
      if (paramBoolean)
        Collections.reverse(this.n);
      try
      {
        localObject2 = a(new ArrayList(), 0);
        localObject1 = localObject2;
        label64: localObject2 = localObject1;
        if (!paramBoolean)
          continue;
        Collections.reverse(this.n);
        return localObject1;
      }
      catch (NotFoundException localNotFoundException)
      {
        break label64;
      }
    }
  }

  private static boolean a(com.google.zxing.e.a.c paramc, boolean paramBoolean1, boolean paramBoolean2)
  {
    return (paramc.a != 0) || (!paramBoolean1) || (!paramBoolean2);
  }

  private boolean b()
  {
    boolean bool = true;
    Object localObject = (a)this.m.get(0);
    com.google.zxing.e.a.b localb = ((a)localObject).a;
    localObject = ((a)localObject).b;
    if (localObject == null)
      bool = false;
    int i1;
    int i2;
    do
    {
      return bool;
      i1 = ((com.google.zxing.e.a.b)localObject).b;
      i2 = 2;
      int i3 = 1;
      while (i3 < this.m.size())
      {
        localObject = (a)this.m.get(i3);
        int i4 = i1 + ((a)localObject).a.b;
        int i5 = i2 + 1;
        localObject = ((a)localObject).b;
        i2 = i5;
        i1 = i4;
        if (localObject != null)
        {
          i1 = i4 + ((com.google.zxing.e.a.b)localObject).b;
          i2 = i5 + 1;
        }
        i3 += 1;
      }
    }
    while (i1 % 211 + (i2 - 4) * 211 == localb.a);
    return false;
  }

  private static void c(int[] paramArrayOfInt)
  {
    int i2 = paramArrayOfInt.length;
    int i1 = 0;
    while (i1 < i2 / 2)
    {
      int i3 = paramArrayOfInt[i1];
      paramArrayOfInt[i1] = paramArrayOfInt[(i2 - i1 - 1)];
      paramArrayOfInt[(i2 - i1 - 1)] = i3;
      i1 += 1;
    }
  }

  public final m a(int paramInt, com.google.zxing.common.a parama, Map<com.google.zxing.d, ?> paramMap)
    throws NotFoundException, FormatException
  {
    this.m.clear();
    this.p = false;
    try
    {
      paramMap = a(a(paramInt, parama));
      return paramMap;
    }
    catch (NotFoundException paramMap)
    {
      this.m.clear();
      this.p = true;
    }
    return a(a(paramInt, parama));
  }

  public final void a()
  {
    this.m.clear();
    this.n.clear();
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.google.zxing.e.a.a.c
 * JD-Core Version:    0.6.2
 */