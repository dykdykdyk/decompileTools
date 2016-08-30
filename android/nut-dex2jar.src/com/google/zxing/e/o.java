package com.google.zxing.e;

import com.google.zxing.NotFoundException;
import com.google.zxing.ReaderException;
import com.google.zxing.d;
import com.google.zxing.l;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Map;

public final class o extends q
{
  private final q[] a;

  public o(Map<d, ?> paramMap)
  {
    Collection localCollection;
    if (paramMap == null)
    {
      localCollection = null;
      if ((paramMap == null) || (paramMap.get(d.g) == null))
        break label467;
    }
    label467: for (boolean bool = true; ; bool = false)
    {
      ArrayList localArrayList = new ArrayList();
      if (localCollection != null)
      {
        if ((localCollection.contains(com.google.zxing.a.h)) || (localCollection.contains(com.google.zxing.a.o)) || (localCollection.contains(com.google.zxing.a.g)) || (localCollection.contains(com.google.zxing.a.p)))
          localArrayList.add(new p(paramMap));
        if (localCollection.contains(com.google.zxing.a.c))
          localArrayList.add(new e(bool));
        if (localCollection.contains(com.google.zxing.a.d))
          localArrayList.add(new g());
        if (localCollection.contains(com.google.zxing.a.e))
          localArrayList.add(new c());
        if (localCollection.contains(com.google.zxing.a.i))
          localArrayList.add(new m());
        if (localCollection.contains(com.google.zxing.a.b))
          localArrayList.add(new a());
        if (localCollection.contains(com.google.zxing.a.m))
          localArrayList.add(new com.google.zxing.e.a.e());
        if (localCollection.contains(com.google.zxing.a.n))
          localArrayList.add(new com.google.zxing.e.a.a.c());
      }
      if (localArrayList.isEmpty())
      {
        localArrayList.add(new p(paramMap));
        localArrayList.add(new e());
        localArrayList.add(new a());
        localArrayList.add(new g());
        localArrayList.add(new c());
        localArrayList.add(new m());
        localArrayList.add(new com.google.zxing.e.a.e());
        localArrayList.add(new com.google.zxing.e.a.a.c());
      }
      this.a = ((q[])localArrayList.toArray(new q[localArrayList.size()]));
      return;
      localCollection = (Collection)paramMap.get(d.c);
      break;
    }
  }

  public final com.google.zxing.m a(int paramInt, com.google.zxing.common.a parama, Map<d, ?> paramMap)
    throws NotFoundException
  {
    q[] arrayOfq = this.a;
    int j = arrayOfq.length;
    int i = 0;
    while (i < j)
    {
      Object localObject = arrayOfq[i];
      try
      {
        localObject = ((q)localObject).a(paramInt, parama, paramMap);
        return localObject;
      }
      catch (ReaderException localReaderException)
      {
        i += 1;
      }
    }
    throw NotFoundException.a();
  }

  public final void a()
  {
    q[] arrayOfq = this.a;
    int j = arrayOfq.length;
    int i = 0;
    while (i < j)
    {
      arrayOfq[i].a();
      i += 1;
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.google.zxing.e.o
 * JD-Core Version:    0.6.2
 */