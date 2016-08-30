package com.google.zxing;

import com.google.zxing.e.o;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Map;

public final class h
  implements l
{
  public l[] a;
  private Map<d, ?> b;

  public final m a(c paramc)
    throws NotFoundException
  {
    if (this.a != null)
    {
      l[] arrayOfl = this.a;
      int j = arrayOfl.length;
      int i = 0;
      while (i < j)
      {
        Object localObject = arrayOfl[i];
        try
        {
          localObject = ((l)localObject).a(paramc, this.b);
          return localObject;
        }
        catch (ReaderException localReaderException)
        {
          i += 1;
        }
      }
    }
    throw NotFoundException.a();
  }

  public final m a(c paramc, Map<d, ?> paramMap)
    throws NotFoundException
  {
    a(paramMap);
    return a(paramc);
  }

  public final void a()
  {
    if (this.a != null)
    {
      l[] arrayOfl = this.a;
      int j = arrayOfl.length;
      int i = 0;
      while (i < j)
      {
        arrayOfl[i].a();
        i += 1;
      }
    }
  }

  public final void a(Map<d, ?> paramMap)
  {
    int j = 0;
    this.b = paramMap;
    int i;
    if ((paramMap != null) && (paramMap.containsKey(d.d)))
    {
      i = 1;
      if (paramMap != null)
        break label534;
    }
    label534: for (Collection localCollection = null; ; localCollection = (Collection)paramMap.get(d.c))
    {
      ArrayList localArrayList = new ArrayList();
      if (localCollection != null)
      {
        if ((localCollection.contains(a.o)) || (localCollection.contains(a.p)) || (localCollection.contains(a.h)) || (localCollection.contains(a.g)) || (localCollection.contains(a.b)) || (localCollection.contains(a.c)) || (localCollection.contains(a.d)) || (localCollection.contains(a.e)) || (localCollection.contains(a.i)) || (localCollection.contains(a.m)) || (localCollection.contains(a.n)))
          j = 1;
        if ((j != 0) && (i == 0))
          localArrayList.add(new o(paramMap));
        if (localCollection.contains(a.l))
          localArrayList.add(new com.google.zxing.g.a());
        if (localCollection.contains(a.f))
          localArrayList.add(new com.google.zxing.c.a());
        if (localCollection.contains(a.a))
          localArrayList.add(new com.google.zxing.a.b());
        if (localCollection.contains(a.k))
          localArrayList.add(new com.google.zxing.f.b());
        if (localCollection.contains(a.j))
          localArrayList.add(new com.google.zxing.d.a());
        if ((j != 0) && (i != 0))
          localArrayList.add(new o(paramMap));
      }
      if (localArrayList.isEmpty())
      {
        if (i == 0)
          localArrayList.add(new o(paramMap));
        localArrayList.add(new com.google.zxing.g.a());
        localArrayList.add(new com.google.zxing.c.a());
        localArrayList.add(new com.google.zxing.a.b());
        localArrayList.add(new com.google.zxing.f.b());
        localArrayList.add(new com.google.zxing.d.a());
        if (i != 0)
          localArrayList.add(new o(paramMap));
      }
      this.a = ((l[])localArrayList.toArray(new l[localArrayList.size()]));
      return;
      i = 0;
      break;
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.google.zxing.h
 * JD-Core Version:    0.6.2
 */