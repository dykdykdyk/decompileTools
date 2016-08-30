package com.google.zxing.f.a;

import java.util.Formatter;

class i
{
  final c a;
  final d[] b;

  i(c paramc)
  {
    this.a = new c(paramc);
    this.b = new d[paramc.i - paramc.h + 1];
  }

  final d a(int paramInt)
  {
    Object localObject = c(paramInt);
    if (localObject != null)
      return localObject;
    int i = 1;
    while (true)
    {
      if (i >= 5)
        break label92;
      int j = b(paramInt) - i;
      d locald;
      if (j >= 0)
      {
        locald = this.b[j];
        localObject = locald;
        if (locald != null)
          break;
      }
      j = b(paramInt) + i;
      if (j < this.b.length)
      {
        locald = this.b[j];
        localObject = locald;
        if (locald != null)
          break;
      }
      i += 1;
    }
    label92: return null;
  }

  final void a(int paramInt, d paramd)
  {
    this.b[b(paramInt)] = paramd;
  }

  final int b(int paramInt)
  {
    return paramInt - this.a.h;
  }

  final d c(int paramInt)
  {
    return this.b[b(paramInt)];
  }

  public String toString()
  {
    Formatter localFormatter = new Formatter();
    Object localObject1 = this.b;
    int m = localObject1.length;
    int j = 0;
    int i = 0;
    if (j < m)
    {
      Object localObject2 = localObject1[j];
      int k;
      if (localObject2 == null)
      {
        k = i + 1;
        localFormatter.format("%3d:    |   %n", new Object[] { Integer.valueOf(i) });
      }
      for (i = k; ; i = k)
      {
        j += 1;
        break;
        k = i + 1;
        localFormatter.format("%3d: %3d|%3d%n", new Object[] { Integer.valueOf(i), Integer.valueOf(localObject2.e), Integer.valueOf(localObject2.d) });
      }
    }
    localObject1 = localFormatter.toString();
    localFormatter.close();
    return localObject1;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.google.zxing.f.a.i
 * JD-Core Version:    0.6.2
 */