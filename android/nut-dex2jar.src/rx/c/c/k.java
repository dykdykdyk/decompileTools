package rx.c.c;

import java.util.LinkedList;
import java.util.concurrent.atomic.AtomicBoolean;
import rx.aa;
import rx.c.d.s;

final class k extends AtomicBoolean
  implements aa
{
  final h a;
  final s b;

  public k(h paramh, s params)
  {
    this.a = paramh;
    this.b = params;
  }

  public final boolean b()
  {
    return this.a.a.b;
  }

  public final void n_()
  {
    if (compareAndSet(false, true))
    {
      s locals = this.b;
      h localh = this.a;
      if (!locals.b)
        try
        {
          LinkedList localLinkedList = locals.a;
          if ((locals.b) || (localLinkedList == null))
            return;
          boolean bool = localLinkedList.remove(localh);
          if (bool)
          {
            localh.n_();
            return;
          }
        }
        finally
        {
        }
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     rx.c.c.k
 * JD-Core Version:    0.6.2
 */