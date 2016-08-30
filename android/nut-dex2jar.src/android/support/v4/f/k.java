package android.support.v4.f;

import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

final class k
  implements Set<K>
{
  k(h paramh)
  {
  }

  public final boolean add(K paramK)
  {
    throw new UnsupportedOperationException();
  }

  public final boolean addAll(Collection<? extends K> paramCollection)
  {
    throw new UnsupportedOperationException();
  }

  public final void clear()
  {
    this.a.c();
  }

  public final boolean contains(Object paramObject)
  {
    return this.a.a(paramObject) >= 0;
  }

  public final boolean containsAll(Collection<?> paramCollection)
  {
    Map localMap = this.a.b();
    paramCollection = paramCollection.iterator();
    while (paramCollection.hasNext())
      if (!localMap.containsKey(paramCollection.next()))
        return false;
    return true;
  }

  public final boolean equals(Object paramObject)
  {
    return h.a(this, paramObject);
  }

  public final int hashCode()
  {
    int i = this.a.a() - 1;
    int j = 0;
    if (i >= 0)
    {
      Object localObject = this.a.a(i, 0);
      if (localObject == null);
      for (int k = 0; ; k = localObject.hashCode())
      {
        j += k;
        i -= 1;
        break;
      }
    }
    return j;
  }

  public final boolean isEmpty()
  {
    return this.a.a() == 0;
  }

  public final Iterator<K> iterator()
  {
    return new i(this.a, 0);
  }

  public final boolean remove(Object paramObject)
  {
    int i = this.a.a(paramObject);
    if (i >= 0)
    {
      this.a.a(i);
      return true;
    }
    return false;
  }

  public final boolean removeAll(Collection<?> paramCollection)
  {
    Map localMap = this.a.b();
    int i = localMap.size();
    paramCollection = paramCollection.iterator();
    while (paramCollection.hasNext())
      localMap.remove(paramCollection.next());
    return i != localMap.size();
  }

  public final boolean retainAll(Collection<?> paramCollection)
  {
    return h.a(this.a.b(), paramCollection);
  }

  public final int size()
  {
    return this.a.a();
  }

  public final Object[] toArray()
  {
    return this.a.b(0);
  }

  public final <T> T[] toArray(T[] paramArrayOfT)
  {
    return this.a.a(paramArrayOfT, 0);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     android.support.v4.f.k
 * JD-Core Version:    0.6.2
 */