package com.google.zxing.c;

import com.google.zxing.ChecksumException;
import com.google.zxing.FormatException;
import com.google.zxing.NotFoundException;
import com.google.zxing.c.a.f;
import com.google.zxing.common.e;
import com.google.zxing.common.g;
import com.google.zxing.d;
import com.google.zxing.l;
import com.google.zxing.m;
import com.google.zxing.n;
import com.google.zxing.o;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Map<Lcom.google.zxing.d;*>;
import java.util.Set;

public final class a
  implements l
{
  private static final o[] a = new o[0];
  private final f b = new f();

  public final m a(com.google.zxing.c paramc, Map<d, ?> paramMap)
    throws NotFoundException, ChecksumException, FormatException
  {
    int k;
    if ((paramMap != null) && (paramMap.containsKey(d.b)))
    {
      paramc = paramc.a();
      paramMap = paramc.b();
      localObject1 = paramc.c();
      if ((paramMap == null) || (localObject1 == null))
        throw NotFoundException.a();
      j = paramc.a;
      i = paramMap[0];
      k = paramMap[1];
      while ((i < j) && (paramc.a(i, k)))
        i += 1;
      if (i == j)
        throw NotFoundException.a();
      k = i - paramMap[0];
      if (k == 0)
        throw NotFoundException.a();
      int m = paramMap[1];
      i = localObject1[1];
      int n = paramMap[0];
      int i1 = (localObject1[0] - n + 1) / k;
      int i2 = (i - m + 1) / k;
      if ((i1 <= 0) || (i2 <= 0))
        throw NotFoundException.a();
      int i3 = k / 2;
      paramMap = new com.google.zxing.common.b(i1, i2);
      i = 0;
      while (i < i2)
      {
        j = 0;
        while (j < i1)
        {
          if (paramc.a(j * k + (i3 + n), m + i3 + i * k))
            paramMap.b(j, i);
          j += 1;
        }
        i += 1;
      }
      paramc = this.b.a(paramMap);
      paramMap = a;
      paramMap = new m(paramc.b, paramc.a, paramMap, com.google.zxing.a.f);
      localObject1 = paramc.c;
      if (localObject1 != null)
        paramMap.a(n.c, localObject1);
      paramc = paramc.d;
      if (paramc != null)
        paramMap.a(n.d, paramc);
      return paramMap;
    }
    com.google.zxing.c.b.a locala = new com.google.zxing.c.b.a(paramc.a());
    paramc = locala.b.a();
    o localo1 = paramc[0];
    o localo2 = paramc[1];
    o localo3 = paramc[2];
    o localo4 = paramc[3];
    paramMap = new ArrayList(4);
    paramMap.add(locala.b(localo1, localo2));
    paramMap.add(locala.b(localo1, localo3));
    paramMap.add(locala.b(localo2, localo4));
    paramMap.add(locala.b(localo3, localo4));
    Collections.sort(paramMap, new com.google.zxing.c.b.c((byte)0));
    paramc = (com.google.zxing.c.b.b)paramMap.get(0);
    paramMap = (com.google.zxing.c.b.b)paramMap.get(1);
    HashMap localHashMap = new HashMap();
    com.google.zxing.c.b.a.a(localHashMap, paramc.a);
    com.google.zxing.c.b.a.a(localHashMap, paramc.b);
    com.google.zxing.c.b.a.a(localHashMap, paramMap.a);
    com.google.zxing.c.b.a.a(localHashMap, paramMap.b);
    Iterator localIterator = localHashMap.entrySet().iterator();
    Object localObject1 = null;
    paramMap = null;
    Object localObject2 = null;
    while (localIterator.hasNext())
    {
      localEntry = (Map.Entry)localIterator.next();
      paramc = (o)localEntry.getKey();
      if (((Integer)localEntry.getValue()).intValue() == 2)
        localObject1 = paramc;
      else if (paramMap == null)
        paramMap = paramc;
      else
        localObject2 = paramc;
    }
    if ((paramMap == null) || (localObject1 == null) || (localObject2 == null))
      throw NotFoundException.a();
    paramc = new o[3];
    paramc[0] = paramMap;
    paramc[1] = localObject1;
    paramc[2] = localObject2;
    o.a(paramc);
    localIterator = paramc[0];
    Map.Entry localEntry = paramc[1];
    o localo5 = paramc[2];
    if (!localHashMap.containsKey(localo1))
    {
      paramc = localo1;
      label695: k = locala.b(localo5, paramc).c;
      j = locala.b(localIterator, paramc).c;
      i = k;
      if ((k & 0x1) == 1)
        i = k + 1;
      k = i + 2;
      i = j;
      if ((j & 0x1) == 1)
        i = j + 1;
      i += 2;
      if ((k * 4 < i * 7) && (i * 4 < k * 7))
        break label1264;
      f1 = com.google.zxing.c.b.a.a(localEntry, localIterator) / k;
      j = com.google.zxing.c.b.a.a(localo5, paramc);
      f2 = (paramc.a - localo5.a) / j;
      f3 = (paramc.b - localo5.b) / j;
      localObject1 = new o(f2 * f1 + paramc.a, f1 * f3 + paramc.b);
      f1 = com.google.zxing.c.b.a.a(localEntry, localo5) / i;
      j = com.google.zxing.c.b.a.a(localIterator, paramc);
      f2 = (paramc.a - localIterator.a) / j;
      f3 = (paramc.b - localIterator.b) / j;
      localObject2 = new o(f2 * f1 + paramc.a, f1 * f3 + paramc.b);
      if (locala.a((o)localObject1))
        break label1165;
      if (locala.a((o)localObject2))
        break label1258;
      paramMap = null;
    }
    while (true)
    {
      localObject1 = paramMap;
      if (paramMap == null)
        localObject1 = paramc;
      j = locala.b(localo5, (o)localObject1).c;
      k = locala.b(localIterator, (o)localObject1).c;
      i = j;
      if ((j & 0x1) == 1)
        i = j + 1;
      j = k;
      if ((k & 0x1) == 1)
        j = k + 1;
      paramc = com.google.zxing.c.b.a.a(locala.a, localo5, localEntry, localIterator, (o)localObject1, i, j);
      paramMap = new g(paramc, new o[] { localo5, localEntry, localIterator, localObject1 });
      paramc = this.b.a(paramMap.d);
      paramMap = paramMap.e;
      break;
      if (!localHashMap.containsKey(localo2))
      {
        paramc = localo2;
        break label695;
      }
      if (!localHashMap.containsKey(localo3))
      {
        paramc = localo3;
        break label695;
      }
      paramc = localo4;
      break label695;
      label1165: paramMap = (Map<d, ?>)localObject1;
      if (locala.a((o)localObject2))
      {
        paramMap = (Map<d, ?>)localObject1;
        if (Math.abs(k - locala.b(localo5, (o)localObject1).c) + Math.abs(i - locala.b(localIterator, (o)localObject1).c) > Math.abs(k - locala.b(localo5, (o)localObject2).c) + Math.abs(i - locala.b(localIterator, (o)localObject2).c))
          label1258: paramMap = (Map<d, ?>)localObject2;
      }
    }
    label1264: int i = Math.min(i, k);
    float f1 = com.google.zxing.c.b.a.a(localEntry, localIterator) / i;
    int j = com.google.zxing.c.b.a.a(localo5, paramc);
    float f2 = (paramc.a - localo5.a) / j;
    float f3 = (paramc.b - localo5.b) / j;
    localObject1 = new o(f2 * f1 + paramc.a, f1 * f3 + paramc.b);
    f1 = com.google.zxing.c.b.a.a(localEntry, localo5) / i;
    i = com.google.zxing.c.b.a.a(localIterator, paramc);
    f2 = (paramc.a - localIterator.a) / i;
    f3 = (paramc.b - localIterator.b) / i;
    localObject2 = new o(f2 * f1 + paramc.a, f1 * f3 + paramc.b);
    if (!locala.a((o)localObject1))
    {
      if (locala.a((o)localObject2))
        break label1613;
      paramMap = null;
    }
    while (true)
    {
      localObject1 = paramMap;
      if (paramMap == null)
        localObject1 = paramc;
      j = Math.max(locala.b(localo5, (o)localObject1).c, locala.b(localIterator, (o)localObject1).c) + 1;
      i = j;
      if ((j & 0x1) == 1)
        i = j + 1;
      paramc = com.google.zxing.c.b.a.a(locala.a, localo5, localEntry, localIterator, (o)localObject1, i, i);
      break;
      paramMap = (Map<d, ?>)localObject1;
      if (locala.a((o)localObject2))
      {
        paramMap = (Map<d, ?>)localObject1;
        if (Math.abs(locala.b(localo5, (o)localObject1).c - locala.b(localIterator, (o)localObject1).c) > Math.abs(locala.b(localo5, (o)localObject2).c - locala.b(localIterator, (o)localObject2).c))
          label1613: paramMap = (Map<d, ?>)localObject2;
      }
    }
  }

  public final void a()
  {
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.google.zxing.c.a
 * JD-Core Version:    0.6.2
 */