package com.google.android.gms.dynamic;

import java.util.Iterator;
import java.util.LinkedList;

final class c
  implements l<T>
{
  c(b paramb)
  {
  }

  public final void a(T paramT)
  {
    this.a.a = paramT;
    paramT = this.a.c.iterator();
    while (paramT.hasNext())
      ((g)paramT.next()).b();
    this.a.c.clear();
    this.a.b = null;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.google.android.gms.dynamic.c
 * JD-Core Version:    0.6.2
 */