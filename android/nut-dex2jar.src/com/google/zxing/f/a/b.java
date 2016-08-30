package com.google.zxing.f.a;

import com.google.zxing.f.a;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

final class b
{
  private final Map<Integer, Integer> a = new HashMap();

  final void a(int paramInt)
  {
    Integer localInteger2 = (Integer)this.a.get(Integer.valueOf(paramInt));
    Integer localInteger1 = localInteger2;
    if (localInteger2 == null)
      localInteger1 = Integer.valueOf(0);
    int i = localInteger1.intValue();
    this.a.put(Integer.valueOf(paramInt), Integer.valueOf(i + 1));
  }

  final int[] a()
  {
    ArrayList localArrayList = new ArrayList();
    Iterator localIterator = this.a.entrySet().iterator();
    int i = -1;
    while (localIterator.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)localIterator.next();
      if (((Integer)localEntry.getValue()).intValue() > i)
      {
        i = ((Integer)localEntry.getValue()).intValue();
        localArrayList.clear();
        localArrayList.add(localEntry.getKey());
      }
      else if (((Integer)localEntry.getValue()).intValue() == i)
      {
        localArrayList.add(localEntry.getKey());
      }
    }
    return a.a(localArrayList);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.google.zxing.f.a.b
 * JD-Core Version:    0.6.2
 */