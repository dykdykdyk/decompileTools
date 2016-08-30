package com.loc;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

final class aq
  implements Comparable<aq>
{
  ArrayList<as> a = new ArrayList();
  ArrayList<as> b = new ArrayList();
  String c = "";
  private double e = 0.0D;

  public aq(ap paramap)
  {
  }

  public final void a()
  {
    double d3 = this.b.size();
    Iterator localIterator = this.a.iterator();
    double d1 = 0.0D;
    if (localIterator.hasNext())
    {
      if (((as)localIterator.next()).e > 1);
      for (double d2 = 0.6D; ; d2 = 1.0D)
      {
        d1 = d2 + d1;
        break;
      }
    }
    this.e = (d1 * 3.0D + d3);
    this.e += (d1 * 3.0D + 0.1D) * (d3 + 0.1D);
  }

  public final as b()
  {
    double d3 = 0.0D;
    int j;
    if (this.a.isEmpty())
      j = 0;
    Object localObject;
    double d1;
    double d2;
    int i;
    while (true)
      if (!this.b.isEmpty())
      {
        localObject = new ArrayList();
        Iterator localIterator = this.b.iterator();
        d1 = 0.0D;
        d2 = 0.0D;
        while (true)
          if (localIterator.hasNext())
          {
            as localas = (as)localIterator.next();
            ((ArrayList)localObject).add(Integer.valueOf(localas.c));
            double d4 = localas.b;
            d3 += localas.a;
            d2 = 1.0D + d2;
            d1 = d4 + d1;
            continue;
            j = 3;
            break;
          }
        Collections.sort((List)localObject);
        if (((ArrayList)localObject).size() == 1)
        {
          i = ((Integer)((ArrayList)localObject).get(0)).intValue();
          if (this.b.size() != 1)
            break label219;
          i = 500;
        }
      }
    label403: 
    while (true)
    {
      d3 /= d2;
      d1 /= d2;
      return new as(this.d, d3, d1, i, this.c, j);
      i = ((Integer)((ArrayList)localObject).get(((ArrayList)localObject).size() / 2)).intValue();
      break;
      label219: if (i > 500)
      {
        i = 300;
      }
      else if (i < 30)
      {
        i = 30;
        continue;
        localObject = this.a.iterator();
        if (((Iterator)localObject).hasNext())
        {
          localObject = (as)((Iterator)localObject).next();
          if (((as)localObject).e == 1)
          {
            d1 = ((as)localObject).a;
            d2 = ((as)localObject).b;
            return new as(this.d, d1, d2, ((as)localObject).c, this.c, 1);
          }
          if (((as)localObject).c <= 0)
            break label403;
        }
        for (i = ((as)localObject).c; ; i = 0)
        {
          d1 = ((as)localObject).b;
          d2 = ((as)localObject).a;
          if (i > 5000)
            i = 5000;
          while (true)
          {
            d2 = (0.0D + d2) / 1.0D;
            d1 = (d1 + 0.0D) / 1.0D;
            return new as(this.d, d2, d1, i, this.c, 2);
            return null;
          }
        }
      }
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.loc.aq
 * JD-Core Version:    0.6.2
 */