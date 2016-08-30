package com.google.gson.internal;

class LinkedHashTreeMap$KeySet$1 extends LinkedHashTreeMap<K, V>.LinkedTreeMapIterator<K>
{
  LinkedHashTreeMap$KeySet$1(LinkedHashTreeMap.KeySet paramKeySet)
  {
    super(paramKeySet.this$0);
  }

  public K next()
  {
    return nextNode().key;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.google.gson.internal.LinkedHashTreeMap.KeySet.1
 * JD-Core Version:    0.6.2
 */