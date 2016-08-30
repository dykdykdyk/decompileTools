package android.support.v4.f;

import java.lang.reflect.Array;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

public abstract class h<K, V>
{
  h<K, V>.j b;
  h<K, V>.k c;
  h<K, V>.m d;

  public static <K, V> boolean a(Map<K, V> paramMap, Collection<?> paramCollection)
  {
    int i = paramMap.size();
    Iterator localIterator = paramMap.keySet().iterator();
    while (localIterator.hasNext())
      if (!paramCollection.contains(localIterator.next()))
        localIterator.remove();
    return i != paramMap.size();
  }

  public static <T> boolean a(Set<T> paramSet, Object paramObject)
  {
    if (paramSet == paramObject);
    while (true)
    {
      return true;
      if ((paramObject instanceof Set))
      {
        paramObject = (Set)paramObject;
        try
        {
          if (paramSet.size() == paramObject.size())
          {
            boolean bool = paramSet.containsAll(paramObject);
            if (bool);
          }
          else
          {
            return false;
          }
        }
        catch (NullPointerException paramSet)
        {
          return false;
        }
        catch (ClassCastException paramSet)
        {
          return false;
        }
      }
    }
    return false;
  }

  protected abstract int a();

  protected abstract int a(Object paramObject);

  protected abstract Object a(int paramInt1, int paramInt2);

  protected abstract V a(int paramInt, V paramV);

  protected abstract void a(int paramInt);

  protected abstract void a(K paramK, V paramV);

  public final <T> T[] a(T[] paramArrayOfT, int paramInt)
  {
    int j = a();
    if (paramArrayOfT.length < j)
      paramArrayOfT = (Object[])Array.newInstance(paramArrayOfT.getClass().getComponentType(), j);
    while (true)
    {
      int i = 0;
      while (i < j)
      {
        paramArrayOfT[i] = a(i, paramInt);
        i += 1;
      }
      if (paramArrayOfT.length > j)
        paramArrayOfT[j] = null;
      return paramArrayOfT;
    }
  }

  protected abstract int b(Object paramObject);

  protected abstract Map<K, V> b();

  public final Object[] b(int paramInt)
  {
    int j = a();
    Object[] arrayOfObject = new Object[j];
    int i = 0;
    while (i < j)
    {
      arrayOfObject[i] = a(i, paramInt);
      i += 1;
    }
    return arrayOfObject;
  }

  protected abstract void c();
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     android.support.v4.f.h
 * JD-Core Version:    0.6.2
 */