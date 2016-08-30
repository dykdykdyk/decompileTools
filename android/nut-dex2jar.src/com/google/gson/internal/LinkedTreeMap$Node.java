package com.google.gson.internal;

import java.util.Map.Entry;

final class LinkedTreeMap$Node<K, V>
  implements Map.Entry<K, V>
{
  int height;
  final K key;
  Node<K, V> left;
  Node<K, V> next;
  Node<K, V> parent;
  Node<K, V> prev;
  Node<K, V> right;
  V value;

  LinkedTreeMap$Node()
  {
    this.key = null;
    this.prev = this;
    this.next = this;
  }

  LinkedTreeMap$Node(Node<K, V> paramNode1, K paramK, Node<K, V> paramNode2, Node<K, V> paramNode3)
  {
    this.parent = paramNode1;
    this.key = paramK;
    this.height = 1;
    this.next = paramNode2;
    this.prev = paramNode3;
    paramNode3.next = this;
    paramNode2.prev = this;
  }

  public final boolean equals(Object paramObject)
  {
    boolean bool2 = false;
    boolean bool1 = bool2;
    if ((paramObject instanceof Map.Entry))
    {
      paramObject = (Map.Entry)paramObject;
      if (this.key != null)
        break label56;
      bool1 = bool2;
      if (paramObject.getKey() == null)
      {
        if (this.value != null)
          break label77;
        bool1 = bool2;
        if (paramObject.getValue() != null);
      }
    }
    while (true)
    {
      bool1 = true;
      label56: label77: 
      do
      {
        do
        {
          return bool1;
          bool1 = bool2;
        }
        while (!this.key.equals(paramObject.getKey()));
        break;
        bool1 = bool2;
      }
      while (!this.value.equals(paramObject.getValue()));
    }
  }

  public final Node<K, V> first()
  {
    Object localObject1 = this.left;
    Object localObject2 = this;
    while (localObject1 != null)
    {
      Node localNode = ((Node)localObject1).left;
      localObject2 = localObject1;
      localObject1 = localNode;
    }
    return localObject2;
  }

  public final K getKey()
  {
    return this.key;
  }

  public final V getValue()
  {
    return this.value;
  }

  public final int hashCode()
  {
    int j = 0;
    int i;
    if (this.key == null)
    {
      i = 0;
      if (this.value != null)
        break label33;
    }
    while (true)
    {
      return i ^ j;
      i = this.key.hashCode();
      break;
      label33: j = this.value.hashCode();
    }
  }

  public final Node<K, V> last()
  {
    Object localObject1 = this.right;
    Object localObject2 = this;
    while (localObject1 != null)
    {
      Node localNode = ((Node)localObject1).right;
      localObject2 = localObject1;
      localObject1 = localNode;
    }
    return localObject2;
  }

  public final V setValue(V paramV)
  {
    Object localObject = this.value;
    this.value = paramV;
    return localObject;
  }

  public final String toString()
  {
    return this.key + "=" + this.value;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.google.gson.internal.LinkedTreeMap.Node
 * JD-Core Version:    0.6.2
 */