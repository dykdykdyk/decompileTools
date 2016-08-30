package com.tencent.open.a;

import java.util.Iterator;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.atomic.AtomicInteger;

public final class i
  implements Iterable<String>
{
  ConcurrentLinkedQueue<String> a = null;
  AtomicInteger b = null;

  public final void a()
  {
    this.a.clear();
    this.b.set(0);
  }

  public final Iterator<String> iterator()
  {
    return this.a.iterator();
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.tencent.open.a.i
 * JD-Core Version:    0.6.2
 */