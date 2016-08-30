package com.google.gson.internal;

class LinkedTreeMap$KeySet$1 extends LinkedTreeMap<K, V>.LinkedTreeMapIterator<K>
{
  LinkedTreeMap$KeySet$1(LinkedTreeMap.KeySet paramKeySet)
  {
    super(paramKeySet.this$0);
  }

  public K next()
  {
    return nextNode().key;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.google.gson.internal.LinkedTreeMap.KeySet.1
 * JD-Core Version:    0.6.2
 */