package com.google.i18n.phonenumbers;

import java.util.LinkedHashMap;
import java.util.Map.Entry;

final class s extends LinkedHashMap<K, V>
{
  s(r paramr)
  {
    super(134, 0.75F, true);
  }

  protected final boolean removeEldestEntry(Map.Entry<K, V> paramEntry)
  {
    return size() > this.a.a;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.google.i18n.phonenumbers.s
 * JD-Core Version:    0.6.2
 */