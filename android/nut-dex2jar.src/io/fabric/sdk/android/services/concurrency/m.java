package io.fabric.sdk.android.services.concurrency;

import java.lang.reflect.Array;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.Queue;
import java.util.concurrent.PriorityBlockingQueue;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.ReentrantLock;

public final class m<E extends l,  extends y,  extends u> extends PriorityBlockingQueue<E>
{
  final Queue<E> a = new LinkedList();
  private final ReentrantLock b = new ReentrantLock();

  private E a(int paramInt, Long paramLong, TimeUnit paramTimeUnit)
    throws InterruptedException
  {
    l locall;
    switch (paramInt)
    {
    default:
      locall = null;
    case 0:
    case 1:
    case 2:
    case 3:
    }
    while (true)
    {
      if ((locall == null) || (locall.g()))
        break label114;
      a(paramInt, locall);
      break;
      locall = (l)super.take();
      continue;
      locall = (l)super.peek();
      continue;
      locall = (l)super.poll();
      continue;
      locall = (l)super.poll(paramLong.longValue(), paramTimeUnit);
    }
    label114: return locall;
  }

  private boolean a(int paramInt, E paramE)
  {
    try
    {
      this.b.lock();
      if (paramInt == 1)
        super.remove(paramE);
      boolean bool = this.a.offer(paramE);
      return bool;
    }
    finally
    {
      this.b.unlock();
    }
    throw paramE;
  }

  private static <T> T[] a(T[] paramArrayOfT1, T[] paramArrayOfT2)
  {
    int i = paramArrayOfT1.length;
    int j = paramArrayOfT2.length;
    Object[] arrayOfObject = (Object[])Array.newInstance(paramArrayOfT1.getClass().getComponentType(), i + j);
    System.arraycopy(paramArrayOfT1, 0, arrayOfObject, 0, i);
    System.arraycopy(paramArrayOfT2, 0, arrayOfObject, i, j);
    return arrayOfObject;
  }

  private E b()
  {
    try
    {
      l locall = a(1, null, null);
      return locall;
    }
    catch (InterruptedException localInterruptedException)
    {
    }
    return null;
  }

  private E c()
  {
    try
    {
      l locall = a(2, null, null);
      return locall;
    }
    catch (InterruptedException localInterruptedException)
    {
    }
    return null;
  }

  public final void a()
  {
    try
    {
      this.b.lock();
      Iterator localIterator = this.a.iterator();
      while (localIterator.hasNext())
      {
        l locall = (l)localIterator.next();
        if (locall.g())
        {
          super.offer(locall);
          localIterator.remove();
        }
      }
    }
    finally
    {
      this.b.unlock();
    }
    this.b.unlock();
  }

  public final void clear()
  {
    try
    {
      this.b.lock();
      this.a.clear();
      super.clear();
      return;
    }
    finally
    {
      this.b.unlock();
    }
  }

  public final boolean contains(Object paramObject)
  {
    try
    {
      this.b.lock();
      if (!super.contains(paramObject))
      {
        bool = this.a.contains(paramObject);
        if (!bool);
      }
      else
      {
        bool = true;
        return bool;
      }
      boolean bool = false;
    }
    finally
    {
      this.b.unlock();
    }
  }

  public final int drainTo(Collection<? super E> paramCollection)
  {
    int i;
    int j;
    try
    {
      this.b.lock();
      i = super.drainTo(paramCollection);
      j = this.a.size();
      while (!this.a.isEmpty())
        paramCollection.add(this.a.poll());
    }
    finally
    {
      this.b.unlock();
    }
    this.b.unlock();
    return i + j;
  }

  public final int drainTo(Collection<? super E> paramCollection, int paramInt)
  {
    try
    {
      this.b.lock();
      int i = super.drainTo(paramCollection, paramInt);
      while ((!this.a.isEmpty()) && (i <= paramInt))
      {
        paramCollection.add(this.a.poll());
        i += 1;
      }
      return i;
    }
    finally
    {
      this.b.unlock();
    }
    throw paramCollection;
  }

  public final boolean remove(Object paramObject)
  {
    try
    {
      this.b.lock();
      if (!super.remove(paramObject))
      {
        bool = this.a.remove(paramObject);
        if (!bool);
      }
      else
      {
        bool = true;
        return bool;
      }
      boolean bool = false;
    }
    finally
    {
      this.b.unlock();
    }
  }

  public final boolean removeAll(Collection<?> paramCollection)
  {
    try
    {
      this.b.lock();
      boolean bool1 = super.removeAll(paramCollection);
      boolean bool2 = this.a.removeAll(paramCollection);
      return bool1 | bool2;
    }
    finally
    {
      this.b.unlock();
    }
    throw paramCollection;
  }

  public final int size()
  {
    try
    {
      this.b.lock();
      int i = this.a.size();
      int j = super.size();
      return i + j;
    }
    finally
    {
      this.b.unlock();
    }
  }

  public final Object[] toArray()
  {
    try
    {
      this.b.lock();
      Object[] arrayOfObject = a(super.toArray(), this.a.toArray());
      return arrayOfObject;
    }
    finally
    {
      this.b.unlock();
    }
  }

  public final <T> T[] toArray(T[] paramArrayOfT)
  {
    try
    {
      this.b.lock();
      paramArrayOfT = a(super.toArray(paramArrayOfT), this.a.toArray(paramArrayOfT));
      return paramArrayOfT;
    }
    finally
    {
      this.b.unlock();
    }
    throw paramArrayOfT;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     io.fabric.sdk.android.services.concurrency.m
 * JD-Core Version:    0.6.2
 */