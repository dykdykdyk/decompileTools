package com.google.android.gms.common.internal;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

final class ag extends u
{
  List<u> p;

  ag(List<u> paramList)
  {
    this.p = paramList;
  }

  public final u a(u paramu)
  {
    ArrayList localArrayList = new ArrayList(this.p);
    localArrayList.add((u)b.a(paramu));
    return new ag(localArrayList);
  }

  public final boolean a(char paramChar)
  {
    Iterator localIterator = this.p.iterator();
    while (localIterator.hasNext())
      if (((u)localIterator.next()).a(paramChar))
        return true;
    return false;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.google.android.gms.common.internal.ag
 * JD-Core Version:    0.6.2
 */