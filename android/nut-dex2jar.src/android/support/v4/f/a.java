package android.support.v4.f;

import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public class a<K, V> extends r<K, V>
  implements Map<K, V>
{
  h<K, V> a;

  public a()
  {
  }

  public a(byte paramByte)
  {
    super(1);
  }

  private h<K, V> a()
  {
    if (this.a == null)
      this.a = new b(this);
    return this.a;
  }

  public Set<Map.Entry<K, V>> entrySet()
  {
    h localh = a();
    if (localh.b == null)
      localh.b = new j(localh);
    return localh.b;
  }

  public Set<K> keySet()
  {
    h localh = a();
    if (localh.c == null)
      localh.c = new k(localh);
    return localh.c;
  }

  public void putAll(Map<? extends K, ? extends V> paramMap)
  {
    int i = this.h + paramMap.size();
    Object localObject;
    if (this.f.length < i)
    {
      localObject = this.f;
      Object[] arrayOfObject = this.g;
      super.a(i);
      if (this.h > 0)
      {
        System.arraycopy(localObject, 0, this.f, 0, this.h);
        System.arraycopy(arrayOfObject, 0, this.g, 0, this.h << 1);
      }
      r.a((int[])localObject, arrayOfObject, this.h);
    }
    paramMap = paramMap.entrySet().iterator();
    while (paramMap.hasNext())
    {
      localObject = (Map.Entry)paramMap.next();
      put(((Map.Entry)localObject).getKey(), ((Map.Entry)localObject).getValue());
    }
  }

  public Collection<V> values()
  {
    h localh = a();
    if (localh.d == null)
      localh.d = new m(localh);
    return localh.d;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     android.support.v4.f.a
 * JD-Core Version:    0.6.2
 */