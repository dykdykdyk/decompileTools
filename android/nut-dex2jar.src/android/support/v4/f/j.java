package android.support.v4.f;

import java.util.Collection;
import java.util.Iterator;
import java.util.Map.Entry;
import java.util.Set;

final class j
  implements Set<Map.Entry<K, V>>
{
  j(h paramh)
  {
  }

  public final boolean addAll(Collection<? extends Map.Entry<K, V>> paramCollection)
  {
    int i = this.a.a();
    paramCollection = paramCollection.iterator();
    while (paramCollection.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)paramCollection.next();
      this.a.a(localEntry.getKey(), localEntry.getValue());
    }
    return i != this.a.a();
  }

  public final void clear()
  {
    this.a.c();
  }

  public final boolean contains(Object paramObject)
  {
    if (!(paramObject instanceof Map.Entry));
    int i;
    do
    {
      return false;
      paramObject = (Map.Entry)paramObject;
      i = this.a.a(paramObject.getKey());
    }
    while (i < 0);
    return c.a(this.a.a(i, 1), paramObject.getValue());
  }

  public final boolean containsAll(Collection<?> paramCollection)
  {
    paramCollection = paramCollection.iterator();
    while (paramCollection.hasNext())
      if (!contains(paramCollection.next()))
        return false;
    return true;
  }

  public final boolean equals(Object paramObject)
  {
    return h.a(this, paramObject);
  }

  public final int hashCode()
  {
    int j = this.a.a() - 1;
    int i = 0;
    if (j >= 0)
    {
      Object localObject1 = this.a.a(j, 0);
      Object localObject2 = this.a.a(j, 1);
      int k;
      if (localObject1 == null)
      {
        k = 0;
        label45: if (localObject2 != null)
          break label76;
      }
      label76: for (int m = 0; ; m = localObject2.hashCode())
      {
        j -= 1;
        i += (m ^ k);
        break;
        k = localObject1.hashCode();
        break label45;
      }
    }
    return i;
  }

  public final boolean isEmpty()
  {
    return this.a.a() == 0;
  }

  public final Iterator<Map.Entry<K, V>> iterator()
  {
    return new l(this.a);
  }

  public final boolean remove(Object paramObject)
  {
    throw new UnsupportedOperationException();
  }

  public final boolean removeAll(Collection<?> paramCollection)
  {
    throw new UnsupportedOperationException();
  }

  public final boolean retainAll(Collection<?> paramCollection)
  {
    throw new UnsupportedOperationException();
  }

  public final int size()
  {
    return this.a.a();
  }

  public final Object[] toArray()
  {
    throw new UnsupportedOperationException();
  }

  public final <T> T[] toArray(T[] paramArrayOfT)
  {
    throw new UnsupportedOperationException();
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     android.support.v4.f.j
 * JD-Core Version:    0.6.2
 */