package rx.c.d;

import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.Queue;

public final class t<T>
  implements Queue<T>
{
  private final LinkedList<T> a = new LinkedList();
  private final int b;

  public t()
  {
    this.b = -1;
  }

  public t(int paramInt)
  {
    this.b = paramInt;
  }

  public final boolean add(T paramT)
  {
    try
    {
      boolean bool = this.a.add(paramT);
      return bool;
    }
    finally
    {
      paramT = finally;
    }
    throw paramT;
  }

  public final boolean addAll(Collection<? extends T> paramCollection)
  {
    try
    {
      boolean bool = this.a.addAll(paramCollection);
      return bool;
    }
    finally
    {
      paramCollection = finally;
    }
    throw paramCollection;
  }

  public final void clear()
  {
    try
    {
      this.a.clear();
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public final Object clone()
  {
    try
    {
      t localt = new t(this.b);
      localt.addAll(this.a);
      return localt;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public final boolean contains(Object paramObject)
  {
    try
    {
      boolean bool = this.a.contains(paramObject);
      return bool;
    }
    finally
    {
      paramObject = finally;
    }
    throw paramObject;
  }

  public final boolean containsAll(Collection<?> paramCollection)
  {
    try
    {
      boolean bool = this.a.containsAll(paramCollection);
      return bool;
    }
    finally
    {
      paramCollection = finally;
    }
    throw paramCollection;
  }

  public final T element()
  {
    try
    {
      Object localObject1 = this.a.element();
      return localObject1;
    }
    finally
    {
      localObject2 = finally;
      throw localObject2;
    }
  }

  public final boolean equals(Object paramObject)
  {
    if (this == paramObject);
    do
    {
      do
      {
        return true;
        if (paramObject == null)
          return false;
        if (getClass() != paramObject.getClass())
          return false;
        paramObject = (t)paramObject;
        if (this.a != null)
          break;
      }
      while (paramObject.a == null);
      return false;
    }
    while (this.a.equals(paramObject.a));
    return false;
  }

  public final int hashCode()
  {
    return this.a.hashCode();
  }

  public final boolean isEmpty()
  {
    try
    {
      boolean bool = this.a.isEmpty();
      return bool;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public final Iterator<T> iterator()
  {
    try
    {
      Iterator localIterator = this.a.iterator();
      return localIterator;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public final boolean offer(T paramT)
  {
    try
    {
      if (this.b >= 0)
      {
        int i = this.a.size();
        int j = this.b;
        if (i + 1 <= j);
      }
      for (boolean bool = false; ; bool = this.a.offer(paramT))
        return bool;
    }
    finally
    {
    }
    throw paramT;
  }

  public final T peek()
  {
    try
    {
      Object localObject1 = this.a.peek();
      return localObject1;
    }
    finally
    {
      localObject2 = finally;
      throw localObject2;
    }
  }

  public final T poll()
  {
    try
    {
      Object localObject1 = this.a.poll();
      return localObject1;
    }
    finally
    {
      localObject2 = finally;
      throw localObject2;
    }
  }

  public final T remove()
  {
    try
    {
      Object localObject1 = this.a.remove();
      return localObject1;
    }
    finally
    {
      localObject2 = finally;
      throw localObject2;
    }
  }

  public final boolean remove(Object paramObject)
  {
    try
    {
      boolean bool = this.a.remove(paramObject);
      return bool;
    }
    finally
    {
      paramObject = finally;
    }
    throw paramObject;
  }

  public final boolean removeAll(Collection<?> paramCollection)
  {
    try
    {
      boolean bool = this.a.removeAll(paramCollection);
      return bool;
    }
    finally
    {
      paramCollection = finally;
    }
    throw paramCollection;
  }

  public final boolean retainAll(Collection<?> paramCollection)
  {
    try
    {
      boolean bool = this.a.retainAll(paramCollection);
      return bool;
    }
    finally
    {
      paramCollection = finally;
    }
    throw paramCollection;
  }

  public final int size()
  {
    try
    {
      int i = this.a.size();
      return i;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public final Object[] toArray()
  {
    try
    {
      Object[] arrayOfObject = this.a.toArray();
      return arrayOfObject;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public final <R> R[] toArray(R[] paramArrayOfR)
  {
    try
    {
      paramArrayOfR = this.a.toArray(paramArrayOfR);
      return paramArrayOfR;
    }
    finally
    {
      paramArrayOfR = finally;
    }
    throw paramArrayOfR;
  }

  public final String toString()
  {
    try
    {
      String str = this.a.toString();
      return str;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     rx.c.d.t
 * JD-Core Version:    0.6.2
 */