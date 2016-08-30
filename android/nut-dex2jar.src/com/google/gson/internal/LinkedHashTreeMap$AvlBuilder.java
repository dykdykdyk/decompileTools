package com.google.gson.internal;

final class LinkedHashTreeMap$AvlBuilder<K, V>
{
  private int leavesSkipped;
  private int leavesToSkip;
  private int size;
  private LinkedHashTreeMap.Node<K, V> stack;

  final void add(LinkedHashTreeMap.Node<K, V> paramNode)
  {
    paramNode.right = null;
    paramNode.parent = null;
    paramNode.left = null;
    paramNode.height = 1;
    if ((this.leavesToSkip > 0) && ((this.size & 0x1) == 0))
    {
      this.size += 1;
      this.leavesToSkip -= 1;
      this.leavesSkipped += 1;
    }
    paramNode.parent = this.stack;
    this.stack = paramNode;
    this.size += 1;
    if ((this.leavesToSkip > 0) && ((this.size & 0x1) == 0))
    {
      this.size += 1;
      this.leavesToSkip -= 1;
      this.leavesSkipped += 1;
    }
    int i = 4;
    if ((this.size & i - 1) == i - 1)
    {
      LinkedHashTreeMap.Node localNode1;
      if (this.leavesSkipped == 0)
      {
        paramNode = this.stack;
        localNode1 = paramNode.parent;
        LinkedHashTreeMap.Node localNode2 = localNode1.parent;
        localNode1.parent = localNode2.parent;
        this.stack = localNode1;
        localNode1.left = localNode2;
        localNode1.right = paramNode;
        paramNode.height += 1;
        localNode2.parent = localNode1;
        paramNode.parent = localNode1;
      }
      while (true)
      {
        i *= 2;
        break;
        if (this.leavesSkipped == 1)
        {
          paramNode = this.stack;
          localNode1 = paramNode.parent;
          this.stack = localNode1;
          localNode1.right = paramNode;
          paramNode.height += 1;
          paramNode.parent = localNode1;
          this.leavesSkipped = 0;
        }
        else if (this.leavesSkipped == 2)
        {
          this.leavesSkipped = 0;
        }
      }
    }
  }

  final void reset(int paramInt)
  {
    this.leavesToSkip = (Integer.highestOneBit(paramInt) * 2 - 1 - paramInt);
    this.size = 0;
    this.leavesSkipped = 0;
    this.stack = null;
  }

  final LinkedHashTreeMap.Node<K, V> root()
  {
    LinkedHashTreeMap.Node localNode = this.stack;
    if (localNode.parent != null)
      throw new IllegalStateException();
    return localNode;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.google.gson.internal.LinkedHashTreeMap.AvlBuilder
 * JD-Core Version:    0.6.2
 */