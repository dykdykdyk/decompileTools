package io.fabric.sdk.android.services.concurrency;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;

public class v
  implements l<y>, u, y
{
  private final List<y> a = new ArrayList();
  private final AtomicBoolean b = new AtomicBoolean(false);
  private final AtomicReference<Throwable> c = new AtomicReference(null);

  public static boolean b(Object paramObject)
  {
    try
    {
      l locall = (l)paramObject;
      y localy = (y)paramObject;
      paramObject = (u)paramObject;
      return (locall != null) && (localy != null) && (paramObject != null);
    }
    catch (ClassCastException paramObject)
    {
    }
    return false;
  }

  public int a()
  {
    return o.b;
  }

  public final void a(y paramy)
  {
    try
    {
      this.a.add(paramy);
      return;
    }
    finally
    {
      paramy = finally;
    }
    throw paramy;
  }

  public final void a(Throwable paramThrowable)
  {
    this.c.set(paramThrowable);
  }

  public final void a(boolean paramBoolean)
  {
    try
    {
      this.b.set(paramBoolean);
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public int compareTo(Object paramObject)
  {
    return o.a(this, paramObject);
  }

  public final Collection<y> f()
  {
    try
    {
      Collection localCollection = Collections.unmodifiableCollection(this.a);
      return localCollection;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public final boolean g()
  {
    Iterator localIterator = f().iterator();
    while (localIterator.hasNext())
      if (!((y)localIterator.next()).h())
        return false;
    return true;
  }

  public final boolean h()
  {
    return this.b.get();
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     io.fabric.sdk.android.services.concurrency.v
 * JD-Core Version:    0.6.2
 */