package com.crashlytics.android.a;

import java.util.Iterator;
import java.util.List;
import java.util.concurrent.atomic.AtomicReference;

final class n
  implements Runnable
{
  n(m paramm)
  {
  }

  public final void run()
  {
    this.a.d.set(null);
    Iterator localIterator = this.a.b.iterator();
    while (localIterator.hasNext())
      ((o)localIterator.next()).a();
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.crashlytics.android.a.n
 * JD-Core Version:    0.6.2
 */