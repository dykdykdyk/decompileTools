package com.google.gson.internal;

import java.util.AbstractSet;
import java.util.Iterator;
import java.util.Map.Entry;

final class LinkedHashTreeMap$EntrySet extends AbstractSet<Map.Entry<K, V>>
{
  LinkedHashTreeMap$EntrySet(LinkedHashTreeMap paramLinkedHashTreeMap)
  {
  }

  public final void clear()
  {
    this.this$0.clear();
  }

  public final boolean contains(Object paramObject)
  {
    return ((paramObject instanceof Map.Entry)) && (this.this$0.findByEntry((Map.Entry)paramObject) != null);
  }

  public final Iterator<Map.Entry<K, V>> iterator()
  {
    return new LinkedHashTreeMap.EntrySet.1(this);
  }

  public final boolean remove(Object paramObject)
  {
    if (!(paramObject instanceof Map.Entry));
    do
    {
      return false;
      paramObject = this.this$0.findByEntry((Map.Entry)paramObject);
    }
    while (paramObject == null);
    this.this$0.removeInternal(paramObject, true);
    return true;
  }

  public final int size()
  {
    return this.this$0.size;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.google.gson.internal.LinkedHashTreeMap.EntrySet
 * JD-Core Version:    0.6.2
 */