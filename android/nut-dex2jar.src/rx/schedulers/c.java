package rx.schedulers;

import java.util.Iterator;
import java.util.concurrent.ConcurrentLinkedQueue;

final class c
  implements Runnable
{
  c(b paramb)
  {
  }

  public final void run()
  {
    b localb = this.a;
    if (!localb.b.isEmpty())
    {
      long l = System.nanoTime();
      Iterator localIterator = localb.b.iterator();
      while (localIterator.hasNext())
      {
        e locale = (e)localIterator.next();
        if (locale.d > l)
          break;
        if (localb.b.remove(locale))
          localb.c.b(locale);
      }
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     rx.schedulers.c
 * JD-Core Version:    0.6.2
 */