package com.google.gson.internal;

import java.util.AbstractSet;
import java.util.Iterator;

final class LinkedTreeMap$KeySet extends AbstractSet<K>
{
  LinkedTreeMap$KeySet(LinkedTreeMap paramLinkedTreeMap)
  {
  }

  public final void clear()
  {
    this.this$0.clear();
  }

  public final boolean contains(Object paramObject)
  {
    return this.this$0.containsKey(paramObject);
  }

  public final Iterator<K> iterator()
  {
    return new LinkedTreeMap.KeySet.1(this);
  }

  public final boolean remove(Object paramObject)
  {
    return this.this$0.removeInternalByKey(paramObject) != null;
  }

  public final int size()
  {
    return this.this$0.size;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.google.gson.internal.LinkedTreeMap.KeySet
 * JD-Core Version:    0.6.2
 */