package com.google.zxing.a.c;

import com.google.zxing.common.a;
import java.util.Deque;
import java.util.Iterator;
import java.util.LinkedList;

final class g
{
  static final g a = new g(h.a, 0, 0, 0);
  final int b;
  final int c;
  final int d;
  private final h e;

  private g(h paramh, int paramInt1, int paramInt2, int paramInt3)
  {
    this.e = paramh;
    this.b = paramInt1;
    this.c = paramInt2;
    this.d = paramInt3;
  }

  final g a(int paramInt)
  {
    Object localObject = this.e;
    int k = this.b;
    int j = this.d;
    int i;
    if ((this.b == 4) || (this.b == 2))
    {
      i = d.b[k][0];
      localObject = ((h)localObject).a(0xFFFF & i, i >> 16);
      j += (i >> 16);
      k = 0;
    }
    while (true)
    {
      if ((this.c == 0) || (this.c == 31))
        i = 18;
      while (true)
      {
        localObject = new g((h)localObject, k, this.c + 1, j + i);
        if (((g)localObject).c != 2078)
          break;
        return ((g)localObject).b(paramInt + 1);
        if (this.c == 62)
          i = 9;
        else
          i = 8;
      }
      return localObject;
    }
  }

  final g a(int paramInt1, int paramInt2)
  {
    int i = this.d;
    h localh = this.e;
    int j;
    if (paramInt1 != this.b)
    {
      j = d.b[this.b][paramInt1];
      localh = localh.a(0xFFFF & j, j >> 16);
      i += (j >> 16);
    }
    while (true)
    {
      if (paramInt1 == 2);
      for (j = 4; ; j = 5)
        return new g(localh.a(paramInt2, j), paramInt1, 0, j + i);
    }
  }

  final a a(byte[] paramArrayOfByte)
  {
    Object localObject2 = new LinkedList();
    for (Object localObject1 = b(paramArrayOfByte.length).e; localObject1 != null; localObject1 = ((h)localObject1).b)
      ((Deque)localObject2).addFirst(localObject1);
    localObject1 = new a();
    localObject2 = ((Deque)localObject2).iterator();
    while (((Iterator)localObject2).hasNext())
      ((h)((Iterator)localObject2).next()).a((a)localObject1, paramArrayOfByte);
    return localObject1;
  }

  final boolean a(g paramg)
  {
    int j = this.d + (d.b[this.b][paramg.b] >> 16);
    int i = j;
    if (paramg.c > 0)
      if (this.c != 0)
      {
        i = j;
        if (this.c <= paramg.c);
      }
      else
      {
        i = j + 10;
      }
    return i <= paramg.d;
  }

  final g b(int paramInt)
  {
    if (this.c == 0)
      return this;
    return new g(new b(this.e, paramInt - this.c, this.c), this.b, 0, this.d);
  }

  final g b(int paramInt1, int paramInt2)
  {
    h localh = this.e;
    if (this.b == 2);
    for (int i = 4; ; i = 5)
      return new g(localh.a(d.c[this.b][paramInt1], i).a(paramInt2, 5), this.b, 0, i + this.d + 5);
  }

  public final String toString()
  {
    return String.format("%s bits=%d bytes=%d", new Object[] { d.a[this.b], Integer.valueOf(this.d), Integer.valueOf(this.c) });
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.google.zxing.a.c.g
 * JD-Core Version:    0.6.2
 */