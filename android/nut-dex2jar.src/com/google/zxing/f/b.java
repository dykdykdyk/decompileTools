package com.google.zxing.f;

import com.google.zxing.ChecksumException;
import com.google.zxing.FormatException;
import com.google.zxing.NotFoundException;
import com.google.zxing.common.e;
import com.google.zxing.d;
import com.google.zxing.m;
import com.google.zxing.n;
import com.google.zxing.o;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public final class b
  implements com.google.zxing.l
{
  private static int a(o paramo1, o paramo2)
  {
    if ((paramo1 == null) || (paramo2 == null))
      return 0;
    return (int)Math.abs(paramo1.a - paramo2.a);
  }

  private static int b(o paramo1, o paramo2)
  {
    if ((paramo1 == null) || (paramo2 == null))
      return 2147483647;
    return (int)Math.abs(paramo1.a - paramo2.a);
  }

  public final m a(com.google.zxing.c paramc, Map<d, ?> paramMap)
    throws NotFoundException, FormatException, ChecksumException
  {
    paramMap = new ArrayList();
    paramc = com.google.zxing.f.b.a.a(paramc);
    Iterator localIterator = paramc.b.iterator();
    while (localIterator.hasNext())
    {
      Object localObject2 = (o[])localIterator.next();
      Object localObject1 = com.google.zxing.f.a.l.a(paramc.a, localObject2[4], localObject2[5], localObject2[6], localObject2[7], Math.min(Math.min(b(localObject2[0], localObject2[4]), b(localObject2[6], localObject2[2]) * 17 / 18), Math.min(b(localObject2[1], localObject2[5]), b(localObject2[7], localObject2[3]) * 17 / 18)), Math.max(Math.max(a(localObject2[0], localObject2[4]), a(localObject2[6], localObject2[2]) * 17 / 18), Math.max(a(localObject2[1], localObject2[5]), a(localObject2[7], localObject2[3]) * 17 / 18)));
      localObject2 = new m(((e)localObject1).b, ((e)localObject1).a, (o[])localObject2, com.google.zxing.a.k);
      ((m)localObject2).a(n.d, ((e)localObject1).d);
      localObject1 = (c)((e)localObject1).g;
      if (localObject1 != null)
        ((m)localObject2).a(n.i, localObject1);
      paramMap.add(localObject2);
    }
    paramc = (m[])paramMap.toArray(new m[paramMap.size()]);
    if ((paramc == null) || (paramc.length == 0) || (paramc[0] == null))
      throw NotFoundException.a();
    return paramc[0];
  }

  public final void a()
  {
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.google.zxing.f.b
 * JD-Core Version:    0.6.2
 */