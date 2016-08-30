package com.amap.api.mapcore2d;

import java.util.ArrayList;
import java.util.Iterator;

class q
{
  private static q a = new q();
  private ArrayList<q.a> b = new ArrayList();

  public static q a()
  {
    return a;
  }

  public void a(q.a parama)
  {
    if (parama != null)
      this.b.add(parama);
  }

  public void b()
  {
    Iterator localIterator = this.b.iterator();
    while (localIterator.hasNext())
    {
      q.a locala = (q.a)localIterator.next();
      if (locala != null)
        locala.P();
    }
  }

  public void b(q.a parama)
  {
    if (parama != null)
      this.b.remove(parama);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.amap.api.mapcore2d.q
 * JD-Core Version:    0.6.2
 */